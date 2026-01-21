use sqlx::FromRow;
use uuid::Uuid;

#[derive(Debug, FromRow)]
pub struct Ayat {
    pub id: Uuid,
    pub surah_id: i16,
    pub ayah_number: i16,
    pub arab_text: String,
    pub juz: i16,
    pub hizb: i16,
}

#[derive(Debug, FromRow)]
pub struct AyatTranslation {
    pub id: Uuid,
    pub ayat_id: Uuid,
    pub language: String,
    pub content: String,
}

#[derive(Debug, FromRow)]
pub struct AyatTafsir {
    pub id: Uuid,
    pub ayat_id: Uuid,
    pub kitab: String,
    pub author: String,
    pub content: String,
}
