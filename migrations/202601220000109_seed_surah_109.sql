-- Seed Surah 109 (Al-Kafirun) with 6 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/109.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (109, 'الكٰفرون', 'Al-Kafirun', 6, 'Makkiyah', 'Orang-Orang kafir')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 109, 1, 'قُلْ يٰٓاَيُّهَا الْكٰفِرُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 109 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 109 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Katakanlah (Muhammad), “Wahai orang-orang kafir!', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah memerintahkan Nabi Muhammad agar menyatakan kepada orang-orang kafir bahwa "Tuhan" yang mereka sembah bukanlah "Tuhan" yang ia sembah, karena mereka menyembah "Tuhan" yang memerlukan pembantu dan mempunyai anak atau menjelma dalam suatu bentuk atau dalam sesuatu rupa atau bentuk-bentuk lain yang mereka dakwakan. Sedang Nabi saw menyembah Tuhan yang tidak ada tandingan-Nya dan tidak ada sekutu bagi-Nya; tidak mempunyai anak dan istri. Akal tidak sanggup menerka bagaimana Dia, tidak ditentukan oleh tempat dan tidak terikat oleh masa, tidak memerlukan perantaraan dan tidak pula memerlukan penghubung.\n\nMaksud pernyataan itu adalah terdapat perbedaan sangat besar antara "Tuhan" yang disembah orang-orang kafir dengan "Tuhan" yang disembah Nabi Muhammad. Mereka menyifati tuhannya dengan sifat-sifat yang tidak layak sama sekali bagi Tuhan yang disembah Nabi.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 109, 2, 'لَآ اَعْبُدُ مَا تَعْبُدُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 109 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 109 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'aku tidak akan menyembah apa yang kamu sembah,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah memerintahkan Nabi Muhammad agar menyatakan kepada orang-orang kafir bahwa "Tuhan" yang mereka sembah bukanlah "Tuhan" yang ia sembah, karena mereka menyembah "Tuhan" yang memerlukan pembantu dan mempunyai anak atau menjelma dalam suatu bentuk atau dalam sesuatu rupa atau bentuk-bentuk lain yang mereka dakwakan. Sedang Nabi saw menyembah Tuhan yang tidak ada tandingan-Nya dan tidak ada sekutu bagi-Nya; tidak mempunyai anak dan istri. Akal tidak sanggup menerka bagaimana Dia, tidak ditentukan oleh tempat dan tidak terikat oleh masa, tidak memerlukan perantaraan dan tidak pula memerlukan penghubung.\n\nMaksud pernyataan itu adalah terdapat perbedaan sangat besar antara "Tuhan" yang disembah orang-orang kafir dengan "Tuhan" yang disembah Nabi Muhammad. Mereka menyifati tuhannya dengan sifat-sifat yang tidak layak sama sekali bagi Tuhan yang disembah Nabi.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 109, 3, 'وَلَآ اَنْتُمْ عٰبِدُوْنَ مَآ اَعْبُدُۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 109 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 109 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan kamu bukan penyembah apa yang aku sembah,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah menambahkan lagi pernyataan yang diperintahkan untuk disampaikan kepada orang-orang kafir dengan menyatakan bahwa mereka tidak menyembah Tuhan yang didakwahkan Nabi Muhammad, karena sifat-sifat-Nya berlainan dengan sifat-sifat "Tuhan" yang mereka sembah dan tidak mungkin dipertemukan antara kedua macam sifat tersebut.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 109, 4, 'وَلَآ اَنَا۠ عَابِدٌ مَّا عَبَدْتُّمْۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 109 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 109 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan aku tidak pernah menjadi penyembah apa yang kamu sembah,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sesudah Allah menyatakan tentang tidak mungkin ada persamaan sifat antara Tuhan yang disembah oleh Nabi saw dengan yang disembah oleh orang-orang kafir, maka dengan sendirinya tidak ada pula persamaan dalam hal ibadah. Tuhan yang disembah Nabi Muhammad adalah Tuhan yang Mahasuci dari sekutu dan tandingan, tidak menjelma pada seseorang atau memihak kepada suatu bangsa atau orang tertentu. Sedangkan "Tuhan" yang mereka sembah itu berbeda dari Tuhan yang tersebut di atas. Lagi pula ibadah nabi hanya untuk Allah saja, sedang ibadah mereka bercampur dengan syirik dan dicampuri dengan kelalaian dari Allah, maka yang demikian itu tidak dinamakan ibadah.\n\nPengulangan pernyataan yang sama seperti yang terdapat dalam ayat 3 dan 5 adalah untuk memperkuat dan membuat orang yang mengusulkan kepada Nabi saw berputus asa terhadap penolakan Nabi menyembah tuhan mereka selama setahun. Pengulangan seperti ini juga terdapat dalam Surah ar-Rahman/55 dan al-Mursalat/77. Hal ini adalah biasa dalam bahasa Arab.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 109, 5, 'وَلَآ اَنْتُمْ عٰبِدُوْنَ مَآ اَعْبُدُۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 109 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 109 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan kamu tidak pernah (pula) menjadi penyembah apa yang aku sembah.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sesudah Allah menyatakan tentang tidak mungkin ada persamaan sifat antara Tuhan yang disembah oleh Nabi saw dengan yang disembah oleh orang-orang kafir, maka dengan sendirinya tidak ada pula persamaan dalam hal ibadah. Tuhan yang disembah Nabi Muhammad adalah Tuhan yang Mahasuci dari sekutu dan tandingan, tidak menjelma pada seseorang atau memihak kepada suatu bangsa atau orang tertentu. Sedangkan "Tuhan" yang mereka sembah itu berbeda dari Tuhan yang tersebut di atas. Lagi pula ibadah nabi hanya untuk Allah saja, sedang ibadah mereka bercampur dengan syirik dan dicampuri dengan kelalaian dari Allah, maka yang demikian itu tidak dinamakan ibadah.\n\nPengulangan pernyataan yang sama seperti yang terdapat dalam ayat 3 dan 5 adalah untuk memperkuat dan membuat orang yang mengusulkan kepada Nabi saw berputus asa terhadap penolakan Nabi menyembah tuhan mereka selama setahun. Pengulangan seperti ini juga terdapat dalam Surah ar-Rahman/55 dan al-Mursalat/77. Hal ini adalah biasa dalam bahasa Arab.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 109, 6, 'لَكُمْ دِيْنُكُمْ وَلِيَ دِيْنِ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 109 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 109 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Untukmu agamamu, dan untukku agamaku.”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian dalam ayat ini, Allah mengancam orang-orang kafir dengan firman-Nya yaitu, "Bagi kamu balasan atas amal perbuatanmu dan bagiku balasan atas amal perbuatanku." Dalam ayat lain Allah berfirman:\n\nBagi kami amalan kami, bagi kamu amalan kamu. (al-Baqarah/2: 139)'
    )
    ON CONFLICT DO NOTHING;
END $$;

