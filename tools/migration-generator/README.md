# Quran Migration Generator

CLI tool to generate SQL migrations from the [quran-json](https://github.com/rioastamal/quran-json) GitHub repository.

## Features

- Fetch surah JSON from GitHub
- Generate idempotent SQL migrations
- Include Indonesian translations and Kemenag tafsir
- Support single surah or batch generation
- Preview JSON structure before migration

## Usage

### Build

```bash
cargo build --release
```

### Commands

#### Preview a Surah

```bash
./target/release/quran-migration-generator preview --surah 1
```

Output:
```
Fetching Surah 1...

=== Surah 1 (Al-Fatihah) ===
Name (Arabic): الفاتحة
Total Ayahs: 7
Meaning (ID): Pembukaan

=== Sample Ayat 1 ===
Arabic: بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ
Translation: Dengan nama Allah Yang Maha Pengasih, Maha Penyayang.
Tafsir length: 2500 chars
```

#### Generate Single Surah Migration

```bash
./target/release/quran-migration-generator single --surah 1 --output migrations/
```

Generates: `migrations/YYYYMMDDHHMMSS_seed_surah_001_complete.sql`

#### Generate All Surahs (1-114)

```bash
./target/release/quran-migration-generator all --output migrations/
```

### Options

| Command | Option | Default | Description |
|---------|--------|---------|-------------|
| `single` | `--surah` | - | Surah number (1-114) |
| `single` | `--output` | `migrations` | Output directory |
| `all` | `--start` | `1` | Start surah number |
| `all` | `--end` | `114` | End surah number |
| `all` | `--output` | `migrations` | Output directory |
| `preview` | `--surah` | - | Surah number to preview |

## Generated Migration Format

Each migration file includes:

1. **Surah data**: Arabic name, Latin name, total ayats, meaning
2. **Ayat data**: Arabic text (juz and hizb are NULL since not in JSON)
3. **Translations**: Indonesian translations
4. **Tafsir**: Full Kemenag tafsir

```sql
-- Seed Surah 1 (Al-Fatihah) with 7 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/1.json

INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (1, 'الفاتحة', 'Al-Fatihah', 7, 'Makkiyah', 'Pembukaan')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 1, 1, 'بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 1 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 1 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dengan nama Allah Yang Maha Pengasih, Maha Penyayang.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag', 'Full tafsir text...')
    ON CONFLICT DO NOTHING;
END $$;
```

## Notes

- All migrations are idempotent (use `ON CONFLICT DO NOTHING`)
- Surah type is hardcoded as `Makkiyah`
- UUIDs are generated using `uuid_generate_v4()`
- Currently only Indonesian (`id`) translations are included
- Tafsir source is from Kemenag (Kementrian Agama Republik Indonesia)
- **Juz and hizb are NULL** since the quran-json source doesn't include this metadata

## Performance

- Surah 1 (7 ayats): ~50 KB
- Surah 2 (286 ayats): ~1 MB
- All 114 surahs: ~60 MB total
