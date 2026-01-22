use chrono::NaiveDateTime;
use serde::{Deserialize, Serialize};
use utoipa::{IntoParams, ToSchema};
use uuid::Uuid;

#[derive(Debug, Serialize, Deserialize, ToSchema)]
pub struct AyatTranslationDto {
    pub id: Uuid,
    pub language: String,
    pub content: String,
    pub translator: Option<String>,
    pub created_at: NaiveDateTime,
    pub updated_at: NaiveDateTime,
}

#[derive(Debug, Serialize, Deserialize, ToSchema)]
pub struct AyatTafsirDto {
    pub id: Uuid,
    pub kitab: String,
    pub author: String,
    pub content: String,
    pub created_at: NaiveDateTime,
    pub updated_at: NaiveDateTime,
}

#[derive(Debug, Serialize, Deserialize, ToSchema)]
pub struct AyatResponse {
    pub id: Uuid,
    pub surah_id: i16,
    pub ayah_number: i16,
    pub arab_text: String,
    pub translations: Vec<AyatTranslationDto>,
    pub tafsirs: Vec<AyatTafsirDto>,
    pub juz: i16,
    pub hizb: i16,
}

#[derive(Debug, Deserialize, IntoParams)]
pub struct AyatQuery {
    pub surah_id: Option<i16>,
    pub juz: Option<i16>,
    pub hizb: Option<i16>,
    pub q: Option<String>,
    pub page: Option<i32>,
    pub limit: Option<i32>,
}
