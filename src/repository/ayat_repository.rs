use crate::error::ApiResult;
use crate::model::Ayat;
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

    pub async fn find_by_id(&self, id: Uuid) -> ApiResult<Option<Ayat>> {
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

        Ok(ayat)
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
