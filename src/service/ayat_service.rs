use crate::dto::{AyatQuery, AyatResponse, AyatTafsirDto, AyatTranslationDto};
use crate::error::ApiResult;
use crate::repository::AyatRepository;
use uuid::Uuid;

pub struct AyatService {
    repository: AyatRepository,
}

impl AyatService {
    pub fn new(repository: AyatRepository) -> Self {
        Self { repository }
    }

    pub async fn list_ayats(&self, query: AyatQuery) -> ApiResult<Vec<AyatResponse>> {
        let limit = query.limit.unwrap_or(20).min(100);
        let page = query.page.unwrap_or(1).max(1);
        let offset = (page - 1) * limit;

        let ayats = if let Some(surah_id) = query.surah_id {
            self.repository.find_by_surah(surah_id, limit, offset).await?
        } else if let Some(juz) = query.juz {
            self.repository.find_by_juz(juz, limit, offset).await?
        } else if let Some(ref q) = query.q {
            self.repository.search(q, limit, offset).await?
        } else {
            // Default: return empty or first page
            vec![]
        };

        let responses = ayats
            .into_iter()
            .map(|a| AyatResponse {
                id: a.id,
                surah_id: a.surah_id,
                ayah_number: a.ayah_number,
                arab_text: a.arab_text,
                translations: vec![], // TODO: Fetch translations for list view
                tafsirs: vec![],      // TODO: Fetch tafsirs for list view
                juz: a.juz,
                hizb: a.hizb,
            })
            .collect();

        Ok(responses)
    }

    pub async fn get_ayat(&self, id: Uuid) -> ApiResult<AyatResponse> {
        let ayat_detail = self
            .repository
            .find_by_id(id)
            .await?
            .ok_or_else(|| crate::error::ApiError::NotFound(format!("Ayat with id {} not found", id)))?;

        // Map translations to DTOs
        let translations = ayat_detail
            .translations
            .into_iter()
            .map(|t| AyatTranslationDto {
                id: t.id,
                language: t.language,
                content: t.content,
                translator: t.translator,
                created_at: t.created_at,
                updated_at: t.updated_at,
            })
            .collect();

        // Map tafsirs to DTOs
        let tafsirs = ayat_detail
            .tafsirs
            .into_iter()
            .map(|t| AyatTafsirDto {
                id: t.id,
                kitab: t.kitab,
                author: t.author,
                content: t.content,
                created_at: t.created_at,
                updated_at: t.updated_at,
            })
            .collect();

        Ok(AyatResponse {
            id: ayat_detail.ayat.id,
            surah_id: ayat_detail.ayat.surah_id,
            ayah_number: ayat_detail.ayat.ayah_number,
            arab_text: ayat_detail.ayat.arab_text,
            translations,
            tafsirs,
            juz: ayat_detail.ayat.juz,
            hizb: ayat_detail.ayat.hizb,
        })
    }
}
