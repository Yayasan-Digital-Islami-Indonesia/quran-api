-- Create extension for UUID support
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create extension for fuzzy search
CREATE EXTENSION IF NOT EXISTS pg_trgm;

-- Create ENUM for surah type
CREATE TYPE surah_type AS ENUM ('Makkiyah', 'Madaniyah');

-- Create Surah table
CREATE TABLE surah (
    id SMALLSERIAL PRIMARY KEY,
    number SMALLINT NOT NULL UNIQUE,
    name_arabic VARCHAR(255) NOT NULL,
    name_latin VARCHAR(255) NOT NULL,
    total_ayat SMALLINT NOT NULL,
    surah_type surah_type NOT NULL,
    meaning TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Ayat table
CREATE TABLE ayat (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    surah_id SMALLINT NOT NULL REFERENCES surah(id) ON DELETE CASCADE,
    ayah_number SMALLINT NOT NULL,
    arab_text TEXT NOT NULL,
    juz SMALLINT,
    hizb SMALLINT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(surah_id, ayah_number)
);

-- Create Translation table
CREATE TABLE ayat_translation (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    ayat_id UUID NOT NULL REFERENCES ayat(id) ON DELETE CASCADE,
    language VARCHAR(5) NOT NULL,
    content TEXT NOT NULL,
    translator VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(ayat_id, language)
);

-- Create Tafsir table
CREATE TABLE ayat_tafsir (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    ayat_id UUID NOT NULL REFERENCES ayat(id) ON DELETE CASCADE,
    kitab VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE(ayat_id, kitab)
);

-- Create indexes for performance
CREATE INDEX idx_ayat_surah_id ON ayat(surah_id);
CREATE INDEX idx_ayat_juz ON ayat(juz);
CREATE INDEX idx_ayat_hizb ON ayat(hizb);

-- Create full-text search index
CREATE INDEX idx_ayat_arab_text_fts ON ayat USING gin(to_tsvector('arabic', arab_text));

-- Create trigram index for fuzzy search
CREATE INDEX idx_ayat_arab_text_trgm ON ayat USING gin(arab_text gin_trgm_ops);

-- Create indexes for translation
CREATE INDEX idx_translation_ayat_id ON ayat_translation(ayat_id);
CREATE INDEX idx_translation_language ON ayat_translation(language);

-- Create indexes for tafsir
CREATE INDEX idx_tafsir_ayat_id ON ayat_tafsir(ayat_id);
CREATE INDEX idx_tafsir_kitab ON ayat_tafsir(kitab);
