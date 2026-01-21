use crate::dto::{SurahResponse, SurahQuery};
use crate::error::ApiResult;
use crate::repository::SurahRepository;

pub struct SurahService {
    repository: SurahRepository,
}

impl SurahService {
    pub fn new(repository: SurahRepository) -> Self {
        Self { repository }
    }

    pub async fn list_surahs(&self, query: SurahQuery) -> ApiResult<Vec<SurahResponse>> {
        let limit = query.limit.unwrap_or(114).min(114);
        let page = query.page.unwrap_or(1).max(1);
        let offset = (page - 1) * limit;

        let surahs = self.repository.find_all(limit, offset).await?;

        let responses = surahs
            .into_iter()
            .map(|s| SurahResponse {
                id: s.id,
                number: s.number,
                name_arabic: s.name_arabic,
                name_latin: s.name_latin,
                total_ayat: s.total_ayat,
                surah_type: s.surah_type,
                meaning: s.meaning,
            })
            .collect();

        Ok(responses)
    }

    pub async fn get_surah(&self, id: i16) -> ApiResult<SurahResponse> {
        let surah = self
            .repository
            .find_by_id(id)
            .await?
            .ok_or_else(|| crate::error::ApiError::NotFound(format!("Surah with id {} not found", id)))?;

        Ok(SurahResponse {
            id: surah.id,
            number: surah.number,
            name_arabic: surah.name_arabic,
            name_latin: surah.name_latin,
            total_ayat: surah.total_ayat,
            surah_type: surah.surah_type,
            meaning: surah.meaning,
        })
    }
}
