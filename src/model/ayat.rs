use chrono::NaiveDateTime;
use serde::{Deserialize, Serialize};
use sqlx::FromRow;
use uuid::Uuid;

#[derive(Debug, FromRow, Serialize, Deserialize)]
pub struct Ayat {
    pub id: Uuid,
    pub surah_id: i16,
    pub ayah_number: i16,
    pub arab_text: String,
    pub juz: i16,
    pub hizb: i16,
}

#[derive(Debug, FromRow, Serialize, Deserialize)]
pub struct AyatTranslation {
    pub id: Uuid,
    pub ayat_id: Uuid,
    pub language: String,
    pub content: String,
    pub translator: Option<String>,
    pub created_at: NaiveDateTime,
    pub updated_at: NaiveDateTime,
}

#[derive(Debug, FromRow, Serialize, Deserialize)]
pub struct AyatTafsir {
    pub id: Uuid,
    pub ayat_id: Uuid,
    pub kitab: String,
    pub author: String,
    pub content: String,
    pub created_at: NaiveDateTime,
    pub updated_at: NaiveDateTime,
}

#[derive(Debug, Serialize, Deserialize)]
pub struct AyatDetail {
    pub ayat: Ayat,
    pub translations: Vec<AyatTranslation>,
    pub tafsirs: Vec<AyatTafsir>,
}
