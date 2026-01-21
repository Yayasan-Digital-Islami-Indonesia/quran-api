# Quran API

High-performance Al-Qur'an API built with Rust, featuring fuzzy search capabilities and OpenAPI documentation.

## 🚀 Features

- **High Performance**: Built with Rust and Axum framework
- **Fuzzy Search**: Support for exact, full-text, and fuzzy search
- **OpenAPI/Swagger**: Interactive API documentation
- **Clean Architecture**: Layered architecture (Handler → Service → Repository)
- **PostgreSQL**: Optimized database with FTS and trigram indexing
- **AI-Ready**: Structured data ready for Chatbot, AI, and RAG integration

## 📋 Tech Stack

- **Language**: Rust 2021
- **Framework**: Axum 0.7
- **Database**: PostgreSQL 14+
- **DB Access**: SQLx
- **Search**: PostgreSQL FTS + pg_trgm
- **OpenAPI**: utoipa + utoipa-swagger-ui

## 🏗️ Architecture

```
Client (Web / Mobile / AI)
        │
        ▼
Rust API (Axum)
        │
        ├── Handler Layer (HTTP)
        ├── Service Layer (Business Logic)
        ├── Repository Layer (Data Access)
        └── PostgreSQL Database
```

## 📁 Project Structure

```
quran_api/
├── Cargo.toml
├── .env
├── migrations/
└── src/
    ├── main.rs
    ├── app.rs              # Application setup
    ├── openapi.rs          # OpenAPI registry
    ├── state.rs            # App state
    ├── router/             # Route definitions
    ├── handler/            # HTTP handlers
    ├── service/            # Business logic
    ├── repository/         # Database queries
    ├── model/              # Database models
    ├── dto/                # API DTOs (OpenAPI schemas)
    └── error/              # Error handling
```

## 🛠️ Setup

### Prerequisites

- Rust 1.75+
- PostgreSQL 14+
- SQLx CLI (for migrations)

### Installation

1. **Clone the repository**
   ```bash
   cd /home/kasjfulk/project/ydi/quran-api
   ```

2. **Install SQLx CLI**
   ```bash
   cargo install sqlx-cli --no-default-features --features postgres
   ```

3. **Setup environment variables**
   ```bash
   cp .env.example .env
   # Edit .env with your database credentials
   ```

4. **Create database**
   ```bash
   createdb quran_db
   ```

5. **Run migrations** (after creating migration files)
   ```bash
   sqlx migrate run
   ```

6. **Build and run**
   ```bash
   cargo build --release
   cargo run
   ```

## 🔧 Environment Variables

Create a `.env` file with the following:

```env
DATABASE_URL=postgresql://username:password@localhost:5432/quran_db
RUST_LOG=info
HOST=0.0.0.0
PORT=8080
```

## 📚 API Endpoints

### Surah Endpoints
- `GET /api/v1/surah` - List all surahs
- `GET /api/v1/surah/{id}` - Get surah by ID

### Ayat Endpoints
- `GET /api/v1/ayat` - List ayats (with filters)
- `GET /api/v1/ayat/{id}` - Get ayat by ID

### Query Parameters
- `surah_id` - Filter by surah
- `juz` - Filter by juz
- `hizb` - Filter by hizb
- `q` - Search query (fuzzy search)
- `page` - Page number
- `limit` - Items per page

## 📖 Documentation

Once the server is running, access:

- **Swagger UI**: http://localhost:8080/docs
- **OpenAPI JSON**: http://localhost:8080/api-doc/openapi.json

## 🗄️ Database Schema

### Surah Table
| Field      | Type                      |
|------------|---------------------------|
| id         | SMALLINT (PK)             |
| number     | SMALLINT                  |
| total_ayat | SMALLINT                  |
| type       | ENUM (Makkiyah/Madaniyah) |

### Ayat Table
| Field     | Type          |
|-----------|---------------|
| id        | UUID (PK)     |
| surah_id  | SMALLINT (FK) |
| number    | SMALLINT      |
| juz       | SMALLINT      |
| hizb      | SMALLINT      |
| arab_text | TEXT          |

### Translation & Tafsir
- `ayat_translation` - Multi-language translations
- `ayat_tafsir` - Multi-source tafsir

## 🎯 Performance Goals

- P95 latency < 150ms
- Search query < 50ms (indexed)
- Support ≥ 10,000 req/min

## 📝 Next Steps

1. Create database migrations
2. Seed database with Quran data
3. Implement advanced fuzzy search with pg_trgm
4. Add caching layer (Redis)
5. Add rate limiting
6. Add authentication for admin endpoints

## 👨‍💻 Author

**Yayasan Digital Islami Indonesia**

## 📄 License

This project is licensed under the MIT License.
