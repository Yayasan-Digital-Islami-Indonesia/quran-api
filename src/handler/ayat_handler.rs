use axum::{extract::{Path, Query, State}, Json};
use uuid::Uuid;

use crate::dto::{AyatResponse, AyatQuery};
use crate::error::ApiResult;
use crate::service::AyatService;
use crate::state::AppState;

/// List ayats with optional filters
#[utoipa::path(
    get,
    path = "/api/v1/ayat",
    params(
        AyatQuery
    ),
    responses(
        (status = 200, description = "List of ayats", body = [AyatResponse])
    ),
    tag = "Ayat"
)]
pub async fn list_ayats(
    State(state): State<AppState>,
    Query(query): Query<AyatQuery>,
) -> ApiResult<Json<Vec<AyatResponse>>> {
    let service = AyatService::new(crate::repository::AyatRepository::new(state.db.clone()));
    let ayats = service.list_ayats(query).await?;
    Ok(Json(ayats))
}

/// Get ayat by ID
#[utoipa::path(
    get,
    path = "/api/v1/ayat/{id}",
    params(
        ("id" = Uuid, Path, description = "Ayat ID")
    ),
    responses(
        (status = 200, description = "Ayat details", body = AyatResponse),
        (status = 404, description = "Ayat not found")
    ),
    tag = "Ayat"
)]
pub async fn get_ayat(
    State(state): State<AppState>,
    Path(id): Path<Uuid>,
) -> ApiResult<Json<AyatResponse>> {
    let service = AyatService::new(crate::repository::AyatRepository::new(state.db.clone()));
    let ayat = service.get_ayat(id).await?;
    Ok(Json(ayat))
}
