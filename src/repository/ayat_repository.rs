use crate::error::ApiResult;
use crate::model::{Ayat, AyatDetail, AyatTafsir, AyatTranslation};
use sqlx::PgPool;
use uuid::Uuid;

pub struct AyatRepository {
    pool: PgPool,
}

impl AyatRepository {
    pub fn new(pool: PgPool) -> Self {
        Self { pool }
    }

    pub async fn find_by_surah(&self, surah_id: i16, limit: i32, offset: i32) -> ApiResult<Vec<Ayat>> {
        let ayats = sqlx::query_as::<_, Ayat>(
            r#"
            SELECT id, surah_id, ayah_number, arab_text, juz, hizb
            FROM ayat
            WHERE surah_id = $1
            ORDER BY ayah_number
            LIMIT $2 OFFSET $3
            "#,
        )
        .bind(surah_id)
        .bind(limit)
        .bind(offset)
        .fetch_all(&self.pool)
        .await?;

        Ok(ayats)
    }

    pub async fn find_by_id(&self, id: Uuid) -> ApiResult<Option<AyatDetail>> {
        let ayat = sqlx::query_as::<_, Ayat>(
            r#"
            SELECT id, surah_id, ayah_number, arab_text, juz, hizb
            FROM ayat
            WHERE id = $1
            "#,
        )
        .bind(id)
        .fetch_optional(&self.pool)
        .await?;

        match ayat {
            Some(ayat) => {
                let translations = self.find_translations_by_ayat_id(id).await?;
                let tafsirs = self.find_tafsirs_by_ayat_id(id).await?;

                Ok(Some(AyatDetail {
                    ayat,
                    translations,
                    tafsirs,
                }))
            }
            None => Ok(None),
        }
    }

    pub async fn find_translations_by_ayat_id(&self, ayat_id: Uuid) -> ApiResult<Vec<AyatTranslation>> {
        let translations = sqlx::query_as::<_, AyatTranslation>(
            r#"
            SELECT id, ayat_id, language, content, translator, created_at, updated_at
            FROM ayat_translation
            WHERE ayat_id = $1
            ORDER BY language
            "#,
        )
        .bind(ayat_id)
        .fetch_all(&self.pool)
        .await?;

        Ok(translations)
    }

    pub async fn find_tafsirs_by_ayat_id(&self, ayat_id: Uuid) -> ApiResult<Vec<AyatTafsir>> {
        let tafsirs = sqlx::query_as::<_, AyatTafsir>(
            r#"
            SELECT id, ayat_id, kitab, author, content, created_at, updated_at
            FROM ayat_tafsir
            WHERE ayat_id = $1
            ORDER BY kitab
            "#,
        )
        .bind(ayat_id)
        .fetch_all(&self.pool)
        .await?;

        Ok(tafsirs)
    }

    pub async fn find_by_juz(&self, juz: i16, limit: i32, offset: i32) -> ApiResult<Vec<Ayat>> {
        let ayats = sqlx::query_as::<_, Ayat>(
            r#"
            SELECT id, surah_id, ayah_number, arab_text, juz, hizb
            FROM ayat
            WHERE juz = $1
            ORDER BY surah_id, ayah_number
            LIMIT $2 OFFSET $3
            "#,
        )
        .bind(juz)
        .bind(limit)
        .bind(offset)
        .fetch_all(&self.pool)
        .await?;

        Ok(ayats)
    }

    pub async fn search(&self, query: &str, limit: i32, offset: i32) -> ApiResult<Vec<Ayat>> {
        let ayats = sqlx::query_as::<_, Ayat>(
            r#"
            SELECT id, surah_id, ayah_number, arab_text, juz, hizb
            FROM ayat
            WHERE arab_text ILIKE $1
            ORDER BY surah_id, ayah_number
            LIMIT $2 OFFSET $3
            "#,
        )
        .bind(format!("%{}%", query))
        .bind(limit)
        .bind(offset)
        .fetch_all(&self.pool)
        .await?;

        Ok(ayats)
    }
}
