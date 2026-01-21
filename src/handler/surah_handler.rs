use axum::{extract::{Path, Query, State}, Json};

use crate::dto::{SurahResponse, SurahQuery};
use crate::error::ApiResult;
use crate::service::SurahService;
use crate::state::AppState;

/// List all surahs
#[utoipa::path(
    get,
    path = "/api/v1/surah",
    params(
        SurahQuery
    ),
    responses(
        (status = 200, description = "List of surahs", body = [SurahResponse])
    ),
    tag = "Surah"
)]
pub async fn list_surahs(
    State(state): State<AppState>,
    Query(query): Query<SurahQuery>,
) -> ApiResult<Json<Vec<SurahResponse>>> {
    let service = SurahService::new(crate::repository::SurahRepository::new(state.db.clone()));
    let surahs = service.list_surahs(query).await?;
    Ok(Json(surahs))
}

/// Get surah by ID
#[utoipa::path(
    get,
    path = "/api/v1/surah/{id}",
    params(
        ("id" = i16, Path, description = "Surah ID")
    ),
    responses(
        (status = 200, description = "Surah details", body = SurahResponse),
        (status = 404, description = "Surah not found")
    ),
    tag = "Surah"
)]
pub async fn get_surah(
    State(state): State<AppState>,
    Path(id): Path<i16>,
) -> ApiResult<Json<SurahResponse>> {
    let service = SurahService::new(crate::repository::SurahRepository::new(state.db.clone()));
    let surah = service.get_surah(id).await?;
    Ok(Json(surah))
}
