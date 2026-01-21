use crate::error::ApiResult;
use crate::model::Surah;
use sqlx::PgPool;

pub struct SurahRepository {
    pool: PgPool,
}

impl SurahRepository {
    pub fn new(pool: PgPool) -> Self {
        Self { pool }
    }

    pub async fn find_all(&self, limit: i32, offset: i32) -> ApiResult<Vec<Surah>> {
        let surahs = sqlx::query_as::<_, Surah>(
            r#"
            SELECT id, number, name_arabic, name_latin, total_ayat, surah_type, meaning
            FROM surah
            ORDER BY number
            LIMIT $1 OFFSET $2
            "#,
        )
        .bind(limit)
        .bind(offset)
        .fetch_all(&self.pool)
        .await?;

        Ok(surahs)
    }

    pub async fn find_by_id(&self, id: i16) -> ApiResult<Option<Surah>> {
        let surah = sqlx::query_as::<_, Surah>(
            r#"
            SELECT id, number, name_arabic, name_latin, total_ayat, surah_type, meaning
            FROM surah
            WHERE id = $1
            "#,
        )
        .bind(id)
        .fetch_optional(&self.pool)
        .await?;

        Ok(surah)
    }

    pub async fn count(&self) -> ApiResult<i64> {
        let count = sqlx::query_scalar("SELECT COUNT(*) FROM surah")
            .fetch_one(&self.pool)
            .await?;

        Ok(count)
    }
}
