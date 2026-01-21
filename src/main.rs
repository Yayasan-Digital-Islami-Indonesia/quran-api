mod app;
mod dto;
mod error;
mod handler;
mod model;
mod openapi;
mod repository;
mod router;
mod service;
mod state;

use sqlx::postgres::PgPoolOptions;
use std::env;

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    // Load environment variables
    dotenvy::dotenv().ok();

    // Initialize tracing
    tracing_subscriber::fmt()
        .with_env_filter(
            tracing_subscriber::EnvFilter::from_default_env()
                .add_directive(tracing::Level::INFO.into()),
        )
        .init();

    // Get configuration from environment
    let database_url = env::var("DATABASE_URL")
        .expect("DATABASE_URL must be set");
    let host = env::var("HOST").unwrap_or_else(|_| "0.0.0.0".to_string());
    let port = env::var("PORT").unwrap_or_else(|_| "8080".to_string());

    // Create database connection pool
    tracing::info!("Connecting to database...");
    let pool = PgPoolOptions::new()
        .max_connections(5)
        .connect(&database_url)
        .await?;

    tracing::info!("Database connected successfully");

    // Create application state
    let state = state::AppState::new(pool);

    // Create application
    let app = app::create_app(state);

    // Bind server
    let addr = format!("{}:{}", host, port);
    let listener = tokio::net::TcpListener::bind(&addr).await?;

    tracing::info!("🚀 Server running on http://{}", addr);
    tracing::info!("📚 Swagger UI available at http://{}/docs", addr);
    tracing::info!("📄 OpenAPI JSON at http://{}/api-doc/openapi.json", addr);

    // Start server
    axum::serve(listener, app).await?;

    Ok(())
}
