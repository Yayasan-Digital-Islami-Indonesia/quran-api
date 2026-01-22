use clap::{Parser, Subcommand};
use reqwest::blocking::Client;
use serde::{Deserialize, Serialize};
use std::fs;
use std::path::PathBuf;

#[derive(Parser, Debug)]
#[command(name = "quran-migration-generator")]
#[command(author = "Yayasan Digital Islami Indonesia")]
#[command(version = "0.1.0")]
#[command(about = "Generate SQL migrations from quran-json GitHub repository", long_about = None)]
struct Args {
    #[command(subcommand)]
    command: Commands,
}

#[derive(Subcommand, Debug, Clone)]
enum Commands {
    /// Generate migration for a single surah
    Single {
        /// Surah number (1-114)
        #[arg(short, long)]
        surah: u16,
        /// Output directory for migrations
        #[arg(short, long, default_value = "migrations")]
        output: PathBuf,
    },
    /// Generate migrations for all surahs (1-114)
    All {
        /// Output directory for migrations
        #[arg(short, long, default_value = "migrations")]
        output: PathBuf,
        /// Start from surah number
        #[arg(short, long, default_value = "1")]
        start: u16,
        /// End at surah number
        #[arg(short, long, default_value = "114")]
        end: u16,
    },
    /// Preview the JSON structure for a surah
    Preview {
        /// Surah number (1-114)
        #[arg(short, long)]
        surah: u16,
    },
}

const BASE_URL: &str = "https://raw.githubusercontent.com/rioastamal/quran-json/master/surah";

#[derive(Debug, Deserialize, Serialize)]
struct SurahJson {
    #[serde(flatten)]
    surah_data: serde_json::Map<String, serde_json::Value>,
}

#[derive(Debug, Clone)]
struct SurahData {
    number: String,
    name: String,
    name_latin: String,
    number_of_ayah: String,
    text: serde_json::Value,
    translations: serde_json::Value,
    tafsir: serde_json::Value,
}

fn escape_sql_string(s: &str) -> String {
    s.replace('\'', "''")
        .replace('\n', "\\n")
        .replace('\r', "\\r")
}

fn parse_surah_data(json: SurahJson, surah_num: u16) -> Option<SurahData> {
    let key = surah_num.to_string();
    let data = json.surah_data.get(&key)?;

    Some(SurahData {
        number: data.get("number")?.as_str()?.to_string(),
        name: data.get("name")?.as_str()?.to_string(),
        name_latin: data.get("name_latin")?.as_str()?.to_string(),
        number_of_ayah: data.get("number_of_ayah")?.as_str()?.to_string(),
        text: data.get("text")?.clone(),
        translations: data.get("translations")?.clone(),
        tafsir: data.get("tafsir")?.clone(),
    })
}

fn generate_surah_migration(surah_num: u16, surah_data: &SurahData) -> String {
    let mut sql = String::new();

    let number: u16 = surah_data.number.parse().unwrap_or(surah_num);
    let name_arabic = &surah_data.name;
    let name_latin = &surah_data.name_latin;
    let total_ayat: u16 = surah_data.number_of_ayah.parse().unwrap_or(7);
    let meaning = surah_data
        .translations
        .get("id")
        .and_then(|v| v.get("name"))
        .and_then(|v| v.as_str())
        .unwrap_or("");

    sql.push_str(&format!(
        "-- Seed Surah {} ({}) with {} ayats, Indonesian translations, and full Kemenag tafsir\n",
        number, name_latin, total_ayat
    ));
    sql.push_str(&format!("-- Source: {}/{}.json\n\n", BASE_URL, number));

    sql.push_str("-- Insert Surah\n");
    sql.push_str(&format!(
        "INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)\n"
    ));
    sql.push_str(&format!(
        "VALUES ({}, '{}', '{}', {}, 'Makkiyah', '{}')\n",
        number,
        escape_sql_string(name_arabic),
        escape_sql_string(name_latin),
        total_ayat,
        escape_sql_string(meaning)
    ));
    sql.push_str("ON CONFLICT (number) DO NOTHING;\n\n");

    let text_obj = &surah_data.text;
    let translations_obj = &surah_data.translations;
    let tafsir_obj = &surah_data.tafsir;

    for ayah_num in 1..=total_ayat {
        let ayah_num_str = ayah_num.to_string();
        let arab_text = text_obj
            .get(&ayah_num_str)
            .and_then(|v| v.as_str())
            .unwrap_or("");

        sql.push_str(&format!(
            "-- Insert Ayat {} with translation and full tafsir\n",
            ayah_num
        ));
        sql.push_str("INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)\n");
        sql.push_str(&format!(
            "SELECT uuid_generate_v4(), {}, {}, '{}', NULL, NULL\n",
            number,
            ayah_num,
            escape_sql_string(arab_text)
        ));
        sql.push_str(&format!(
            "WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = {} AND ayah_number = {});\n\n",
            number, ayah_num
        ));

        sql.push_str("DO $$\n");
        sql.push_str(&format!("DECLARE\n    ayat_id UUID;\nBEGIN\n"));
        sql.push_str(&format!(
            "    SELECT id INTO ayat_id FROM ayat WHERE surah_id = {} AND ayah_number = {};\n\n",
            number, ayah_num
        ));

        let translation = translations_obj
            .get("id")
            .and_then(|v| v.get("text"))
            .and_then(|v| v.get(&ayah_num_str))
            .and_then(|v| v.as_str())
            .unwrap_or("");

        sql.push_str("    INSERT INTO ayat_translation (ayat_id, language, content, translator)\n");
        sql.push_str(&format!(
            "    VALUES (ayat_id, 'id', '{}', NULL)\n",
            escape_sql_string(translation)
        ));
        sql.push_str("    ON CONFLICT DO NOTHING;\n\n");

        let tafsir_content = tafsir_obj
            .get("id")
            .and_then(|v| v.get("kemenag"))
            .and_then(|v| v.get("text"))
            .and_then(|v| v.get(&ayah_num_str))
            .and_then(|v| v.as_str())
            .unwrap_or("");

        sql.push_str("    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)\n");
        sql.push_str("    VALUES (ayat_id, 'kemenag', 'Kemenag',\n");
        sql.push_str(&format!(
            "        '{}'\n",
            escape_sql_string(tafsir_content)
        ));
        sql.push_str("    )\n");
        sql.push_str("    ON CONFLICT DO NOTHING;\n");
        sql.push_str("END $$;\n\n");
    }

    sql
}

fn fetch_surah_json(client: &Client, surah_num: u16) -> Result<SurahData, String> {
    let url = format!("{}/{}.json", BASE_URL, surah_num);
    let response = client
        .get(&url)
        .send()
        .map_err(|e| format!("Failed to fetch surah {}: {}", surah_num, e))?;

    if !response.status().is_success() {
        return Err(format!(
            "HTTP {} for surah {}",
            response.status(),
            surah_num
        ));
    }

    let json: SurahJson = response
        .json()
        .map_err(|e| format!("Failed to parse JSON for surah {}: {}", surah_num, e))?;

    parse_surah_data(json, surah_num)
        .ok_or_else(|| format!("Surah {} not found in JSON response", surah_num))
}

fn generate_migration_filename(surah_num: u16) -> String {
    let timestamp = chrono::Utc::now().format("%Y%m%d%H%M%S").to_string();
    format!("{}_seed_surah_{:03}_complete.sql", timestamp, surah_num)
}

fn main() {
    let args = Args::parse();
    let client = Client::new();

    match args.command {
        Commands::Single { surah, output } => {
            println!("Fetching Surah {}...", surah);
            match fetch_surah_json(&client, surah) {
                Ok(surah_data) => {
                    let sql = generate_surah_migration(surah, &surah_data);
                    let filename = generate_migration_filename(surah);
                    let filepath = output.join(filename);

                    fs::create_dir_all(&output)
                        .map_err(|e| format!("Failed to create output directory: {}", e))
                        .unwrap();

                    fs::write(&filepath, &sql)
                        .map_err(|e| format!("Failed to write file: {}", e))
                        .unwrap();

                    println!("Generated: {}", filepath.display());
                    println!("Size: {} bytes", sql.len());
                }
                Err(e) => {
                    eprintln!("Error: {}", e);
                    std::process::exit(1);
                }
            }
        }

        Commands::All { output, start, end } => {
            println!("Generating migrations for surahs {} to {}...", start, end);

            fs::create_dir_all(&output)
                .map_err(|e| format!("Failed to create output directory: {}", e))
                .unwrap();

            let mut success_count = 0;
            let mut error_count = 0;

            for surah in start..=end {
                match fetch_surah_json(&client, surah) {
                    Ok(surah_data) => {
                        let sql = generate_surah_migration(surah, &surah_data);
                        let filename = generate_migration_filename(surah);
                        let filepath = output.join(&filename);

                        fs::write(&filepath, &sql)
                            .map_err(|e| format!("Failed to write file: {}", e))
                            .unwrap();

                        println!("[{:03}/{:03}] {}", surah, 114, filename);
                        success_count += 1;
                    }
                    Err(e) => {
                        eprintln!("[{:03}/{:03}] ERROR: {}", surah, 114, e);
                        error_count += 1;
                    }
                }
            }

            println!(
                "\nCompleted: {} succeeded, {} failed",
                success_count, error_count
            );
        }

        Commands::Preview { surah } => {
            println!("Fetching Surah {}...", surah);
            match fetch_surah_json(&client, surah) {
                Ok(surah_data) => {
                    println!("\n=== Surah {} ({}) ===", surah, surah_data.name_latin);
                    println!("Name (Arabic): {}", surah_data.name);
                    println!("Total Ayahs: {}", surah_data.number_of_ayah);
                    println!(
                        "Meaning (ID): {}",
                        surah_data
                            .translations
                            .get("id")
                            .and_then(|v| v.get("name"))
                            .and_then(|v| v.as_str())
                            .unwrap_or("N/A")
                    );
                    println!("\n=== Sample Ayat 1 ===");
                    println!(
                        "Arabic: {}",
                        surah_data
                            .text
                            .get("1")
                            .and_then(|v| v.as_str())
                            .unwrap_or("N/A")
                    );
                    println!(
                        "Translation: {}",
                        surah_data
                            .translations
                            .get("id")
                            .and_then(|v| v.get("text"))
                            .and_then(|v| v.get("1"))
                            .and_then(|v| v.as_str())
                            .unwrap_or("N/A")
                    );
                    let tafsir_len = surah_data
                        .tafsir
                        .get("id")
                        .and_then(|v| v.get("kemenag"))
                        .and_then(|v| v.get("text"))
                        .and_then(|v| v.get("1"))
                        .and_then(|v| v.as_str())
                        .map(|s| s.len())
                        .unwrap_or(0);
                    println!("Tafsir length: {} chars", tafsir_len);
                }
                Err(e) => {
                    eprintln!("Error: {}", e);
                    std::process::exit(1);
                }
            }
        }
    }
}
