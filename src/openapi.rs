use utoipa::OpenApi;

use crate::dto::{AyatResponse, SurahResponse};
use crate::handler::{
    ayat_handler::{__path_get_ayat, __path_list_ayats},
    surah_handler::{__path_get_surah, __path_list_surahs},
};

#[derive(OpenApi)]
#[openapi(
    paths(
        crate::handler::surah_handler::list_surahs,
        crate::handler::surah_handler::get_surah,
        crate::handler::ayat_handler::list_ayats,
        crate::handler::ayat_handler::get_ayat,
    ),
    components(
        schemas(
            SurahResponse,
            AyatResponse,
        )
    ),
    tags(
        (name = "Surah", description = "API untuk Surah Al-Qur'an"),
        (name = "Ayat", description = "API untuk Ayat Al-Qur'an")
    ),
    info(
        title = "Qur'an API",
        description = "High performance Al-Qur'an API with fuzzy search capabilities",
        version = "1.0.0",
        contact(
            name = "Kasjful Kurniawan",
        )
    )
)]
pub struct ApiDoc;
