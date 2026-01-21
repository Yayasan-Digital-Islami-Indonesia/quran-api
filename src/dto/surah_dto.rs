use serde::{Deserialize, Serialize};
use utoipa::{IntoParams, ToSchema};

#[derive(Debug, Serialize, Deserialize, ToSchema)]
pub struct SurahResponse {
    pub id: i16,
    pub number: i16,
    pub name_arabic: String,
    pub name_latin: String,
    pub total_ayat: i16,
    #[serde(rename = "type")]
    pub surah_type: String,
    pub meaning: Option<String>,
}

#[derive(Debug, Deserialize, IntoParams)]
pub struct SurahQuery {
    pub page: Option<i32>,
    pub limit: Option<i32>,
}
