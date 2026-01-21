use axum::Router;
use tower_http::cors::{CorsLayer, Any};
use tower_http::trace::TraceLayer;
use utoipa::OpenApi;
use utoipa_swagger_ui::SwaggerUi;

use crate::openapi::ApiDoc;
use crate::router::v1_routes;
use crate::state::AppState;

pub fn create_app(state: AppState) -> Router {
    // Create CORS layer
    let cors = CorsLayer::new()
        .allow_origin(Any)
        .allow_methods(Any)
        .allow_headers(Any);

    Router::new()
        // Swagger UI
        .merge(
            SwaggerUi::new("/docs")
                .url("/api-doc/openapi.json", ApiDoc::openapi())
        )
        // API routes
        .nest("/api/v1", v1_routes())
        // Add middleware
        .layer(cors)
        .layer(TraceLayer::new_for_http())
        // Add state
        .with_state(state)
}
