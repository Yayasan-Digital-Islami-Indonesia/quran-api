use axum::{routing::get, Router};

use crate::handler::{
    ayat_handler::{get_ayat, list_ayats},
    surah_handler::{get_surah, list_surahs},
};
use crate::state::AppState;

pub fn v1_routes() -> Router<AppState> {
    Router::new()
        // Surah routes
        .route("/surah", get(list_surahs))
        .route("/surah/:id", get(get_surah))
        // Ayat routes
        .route("/ayat", get(list_ayats))
        .route("/ayat/:id", get(get_ayat))
}
