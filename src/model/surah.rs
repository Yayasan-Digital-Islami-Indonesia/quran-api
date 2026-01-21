use sqlx::FromRow;

#[derive(Debug, FromRow)]
pub struct Surah {
    pub id: i16,
    pub number: i16,
    pub name_arabic: String,
    pub name_latin: String,
    pub total_ayat: i16,
    pub surah_type: String,
    pub meaning: Option<String>,
}
