use axum::Json;
use serde_json::{json, Value};

pub async fn index() -> Json<Value> {
    Json(json!({
        "message": "Welcome to Quran API"
    }))
}
