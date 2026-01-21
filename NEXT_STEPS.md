# Langkah Selanjutnya - Quran API

## ✅ Yang Sudah Selesai

1. ✅ Inisialisasi project Rust dengan Cargo
2. ✅ Setup struktur folder sesuai arsitektur clean architecture
3. ✅ Konfigurasi dependencies di `Cargo.toml`
4. ✅ Implementasi layer-layer:
   - Error handling (`src/error/`)
   - DTO dengan OpenAPI schema (`src/dto/`)
   - Database models (`src/model/`)
   - Repository layer (`src/repository/`)
   - Service layer (`src/service/`)
   - Handler layer (`src/handler/`)
   - Router (`src/router/`)
5. ✅ Setup OpenAPI documentation dengan utoipa
6. ✅ Konfigurasi Swagger UI
7. ✅ Database migration schema (`migrations/`)
8. ✅ Project berhasil di-compile tanpa error

## 🔄 Langkah Berikutnya

### 1. Setup Database PostgreSQL

```bash
# Install PostgreSQL (jika belum)
sudo apt install postgresql postgresql-contrib

# Buat database
sudo -u postgres createdb quran_db

# Buat user (opsional)
sudo -u postgres createuser -P quran_user
```

### 2. Konfigurasi Environment

```bash
# Copy .env.example ke .env
cp .env.example .env

# Edit .env dengan kredensial database Anda
nano .env
```

Contoh `.env`:
```env
DATABASE_URL=postgresql://postgres:password@localhost:5432/quran_db
RUST_LOG=info
HOST=0.0.0.0
PORT=8080
```

### 3. Install SQLx CLI

```bash
cargo install sqlx-cli --no-default-features --features postgres
```

### 4. Jalankan Database Migration

```bash
# Jalankan migration
sqlx migrate run

# Atau jika perlu, buat migration baru
sqlx migrate add nama_migration
```

### 5. Seed Database dengan Data Al-Qur'an

Anda perlu:
- Data 114 surah (nama Arab, Latin, jumlah ayat, dll)
- Data ayat lengkap dengan teks Arab
- Data terjemahan (minimal Bahasa Indonesia)
- Data tafsir (opsional)

**Sumber data yang bisa digunakan:**
- https://github.com/rioastamal/quran-json
- https://github.com/sutanlab/quran-api
- https://api.quran.com/

### 6. Implementasi Fuzzy Search

Tambahkan query fuzzy search di `ayat_repository.rs`:

```rust
pub async fn fuzzy_search(&self, query: &str, limit: i32) -> ApiResult<Vec<Ayat>> {
    let ayats = sqlx::query_as::<_, Ayat>(
        r#"
        SELECT id, surah_id, ayah_number, arab_text, juz, hizb
        FROM ayat
        WHERE arab_text % $1  -- pg_trgm similarity operator
        ORDER BY similarity(arab_text, $1) DESC
        LIMIT $2
        "#,
    )
    .bind(query)
    .bind(limit)
    .fetch_all(&self.pool)
    .await?;

    Ok(ayats)
}
```

### 7. Testing

```bash
# Build project
cargo build

# Run tests (setelah membuat test files)
cargo test

# Run dengan hot-reload (install cargo-watch)
cargo install cargo-watch
cargo watch -x run
```

### 8. Jalankan Server

```bash
# Development mode
cargo run

# Production build
cargo build --release
./target/release/quran_api
```

Akses:
- API: http://localhost:8080/api/v1/
- Swagger UI: http://localhost:8080/docs
- OpenAPI JSON: http://localhost:8080/api-doc/openapi.json

### 9. Optimasi Performance

- [ ] Tambahkan connection pooling configuration
- [ ] Implement caching dengan Redis
- [ ] Add rate limiting
- [ ] Setup monitoring dengan Prometheus/Grafana
- [ ] Load testing dengan `wrk` atau `k6`

### 10. Deployment

**Docker:**
```bash
# Buat Dockerfile
# Build image
docker build -t quran-api .

# Run container
docker run -p 8080:8080 --env-file .env quran-api
```

**Systemd Service:**
```bash
# Buat service file di /etc/systemd/system/quran-api.service
sudo systemctl enable quran-api
sudo systemctl start quran-api
```

## 📚 Referensi

- [Axum Documentation](https://docs.rs/axum/)
- [SQLx Documentation](https://docs.rs/sqlx/)
- [utoipa Documentation](https://docs.rs/utoipa/)
- [PostgreSQL Full-Text Search](https://www.postgresql.org/docs/current/textsearch.html)
- [pg_trgm Extension](https://www.postgresql.org/docs/current/pgtrgm.html)

## 🐛 Troubleshooting

### Error: Connection refused
- Pastikan PostgreSQL sudah running
- Check DATABASE_URL di `.env`

### Error: Migration failed
- Pastikan database sudah dibuat
- Check permission user database

### Error: Compilation failed
- Update Rust: `rustup update`
- Clean build: `cargo clean && cargo build`

## 📝 Notes

- Project ini menggunakan Rust 1.92.0
- Database schema sudah include index untuk performance
- OpenAPI documentation otomatis ter-generate dari code
- Semua endpoint sudah implement error handling
