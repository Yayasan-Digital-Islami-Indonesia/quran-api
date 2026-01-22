-- Seed Surah 79 (An-Nazi'at) with 46 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/79.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (79, 'النّٰزعٰت', 'An-Nazi''at', 46, 'Makkiyah', 'Malaikat Yang Mencabut')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 1, 'وَالنّٰزِعٰتِ غَرْقًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demi (malaikat) yang mencabut (nyawa) dengan keras.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat-ayat ini, Allah berfirman dalam bentuk sumpah terhadap beberapa malaikat yang mencabut nyawa manusia dengan keras dan juga kepada para malaikat yang mencabut nyawa manusia dengan lemah-lembut. Hal ini dalam rangka menegaskan adanya hari kebangkitan yang diingkari orang-orang musyrik. Ayat-ayat selanjutnya yang juga dalam bentuk kalimat-kalimat sumpah kepada para malaikat yang turun dari langit dengan cepat sambil membawa perintah Allah. Bahkan Allah bersumpah kepada para malaikat yang mendahului malaikat yang lain dengan kencang, serta para malaikat yang mengatur dunia.\n\nFirman-firman dalam bentuk sumpah ini banyak terdapat pada surah-surah Makkiyyah karena banyak orang-orang musyrik menolak dan mengingkari hari kebangkitan, seperti pada Surah as-saffat/37: 1-4:\n\nDemi (rombongan malaikat) yang berbaris bersaf-saf, demi (rombongan) yang mencegah dengan sungguh-sungguh, demi (rombongan) yang membacakan peringatan, sungguh, Tuhanmu benar-benar Esa. (as-saffat/37: 1-4)\n\nAdapun jawab qasam (isi dari sumpah) pada awal Surah an-Nazi''at ini terdapat dalam ayat 6, yaitu sungguh pada saat alam berguncang ketika tiupan sangkakala pertama, semuanya rusak dan hancur.\n\nTiupan sangkakala yang pertama itu kemudian diikuti oleh tiupan kedua yang membangkitkan manusia dari kuburnya. Inilah hari Kiamat dalam arti yang sebenarnya.\n\nAyat-ayat permulaan pada Surah an-Nazi''at ini oleh jumhur mufasir dipahami sebagai sumpah-sumpah kepada para malaikat. Akan tetapi, ada mufasir lain, seperti Ahmad Musthafa al-Maragi, yang memahami sumpah ini bukan kepada para malaikat, tetapi kepada bintang-bintang yang beredar menurut aturan tertentu, seperti matahari, bulan, dan planet-planet yang lain. Dalam tafsir al-MarAgi, ayat-ayat ini dipahami sebagai bintang-bintang yang sigap dan cepat jalannya, cahaya-cahaya yang keluar dari bintang ke bintang, dan bintang-bintang yang jalannya cepat dari bintang-bintang yang lain.\n\nAdapun tentang pemahaman jawab qasam-nya sama dengan pendapat jumhur mufasir.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 2, 'وَّالنّٰشِطٰتِ نَشْطًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demi (malaikat) yang mencabut (nyawa) dengan lemah lembut.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat-ayat ini, Allah berfirman dalam bentuk sumpah terhadap beberapa malaikat yang mencabut nyawa manusia dengan keras dan juga kepada para malaikat yang mencabut nyawa manusia dengan lemah-lembut. Hal ini dalam rangka menegaskan adanya hari kebangkitan yang diingkari orang-orang musyrik. Ayat-ayat selanjutnya yang juga dalam bentuk kalimat-kalimat sumpah kepada para malaikat yang turun dari langit dengan cepat sambil membawa perintah Allah. Bahkan Allah bersumpah kepada para malaikat yang mendahului malaikat yang lain dengan kencang, serta para malaikat yang mengatur dunia.\n\nFirman-firman dalam bentuk sumpah ini banyak terdapat pada surah-surah Makkiyyah karena banyak orang-orang musyrik menolak dan mengingkari hari kebangkitan, seperti pada Surah as-saffat/37: 1-4:\n\nDemi (rombongan malaikat) yang berbaris bersaf-saf, demi (rombongan) yang mencegah dengan sungguh-sungguh, demi (rombongan) yang membacakan peringatan, sungguh, Tuhanmu benar-benar Esa. (as-saffat/37: 1-4)\n\nAdapun jawab qasam (isi dari sumpah) pada awal Surah an-Nazi''at ini terdapat dalam ayat 6, yaitu sungguh pada saat alam berguncang ketika tiupan sangkakala pertama, semuanya rusak dan hancur.\n\nTiupan sangkakala yang pertama itu kemudian diikuti oleh tiupan kedua yang membangkitkan manusia dari kuburnya. Inilah hari Kiamat dalam arti yang sebenarnya.\n\nAyat-ayat permulaan pada Surah an-Nazi''at ini oleh jumhur mufasir dipahami sebagai sumpah-sumpah kepada para malaikat. Akan tetapi, ada mufasir lain, seperti Ahmad Musthafa al-Maragi, yang memahami sumpah ini bukan kepada para malaikat, tetapi kepada bintang-bintang yang beredar menurut aturan tertentu, seperti matahari, bulan, dan planet-planet yang lain. Dalam tafsir al-MarAgi, ayat-ayat ini dipahami sebagai bintang-bintang yang sigap dan cepat jalannya, cahaya-cahaya yang keluar dari bintang ke bintang, dan bintang-bintang yang jalannya cepat dari bintang-bintang yang lain.\n\nAdapun tentang pemahaman jawab qasam-nya sama dengan pendapat jumhur mufasir.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 3, 'وَّالسّٰبِحٰتِ سَبْحًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demi (malaikat) yang turun dari langit dengan cepat,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat-ayat ini, Allah berfirman dalam bentuk sumpah terhadap beberapa malaikat yang mencabut nyawa manusia dengan keras dan juga kepada para malaikat yang mencabut nyawa manusia dengan lemah-lembut. Hal ini dalam rangka menegaskan adanya hari kebangkitan yang diingkari orang-orang musyrik. Ayat-ayat selanjutnya yang juga dalam bentuk kalimat-kalimat sumpah kepada para malaikat yang turun dari langit dengan cepat sambil membawa perintah Allah. Bahkan Allah bersumpah kepada para malaikat yang mendahului malaikat yang lain dengan kencang, serta para malaikat yang mengatur dunia.\n\nFirman-firman dalam bentuk sumpah ini banyak terdapat pada surah-surah Makkiyyah karena banyak orang-orang musyrik menolak dan mengingkari hari kebangkitan, seperti pada Surah as-saffat/37: 1-4:\n\nDemi (rombongan malaikat) yang berbaris bersaf-saf, demi (rombongan) yang mencegah dengan sungguh-sungguh, demi (rombongan) yang membacakan peringatan, sungguh, Tuhanmu benar-benar Esa. (as-saffat/37: 1-4)\n\nAdapun jawab qasam (isi dari sumpah) pada awal Surah an-Nazi''at ini terdapat dalam ayat 6, yaitu sungguh pada saat alam berguncang ketika tiupan sangkakala pertama, semuanya rusak dan hancur.\n\nTiupan sangkakala yang pertama itu kemudian diikuti oleh tiupan kedua yang membangkitkan manusia dari kuburnya. Inilah hari Kiamat dalam arti yang sebenarnya.\n\nAyat-ayat permulaan pada Surah an-Nazi''at ini oleh jumhur mufasir dipahami sebagai sumpah-sumpah kepada para malaikat. Akan tetapi, ada mufasir lain, seperti Ahmad Musthafa al-Maragi, yang memahami sumpah ini bukan kepada para malaikat, tetapi kepada bintang-bintang yang beredar menurut aturan tertentu, seperti matahari, bulan, dan planet-planet yang lain. Dalam tafsir al-MarAgi, ayat-ayat ini dipahami sebagai bintang-bintang yang sigap dan cepat jalannya, cahaya-cahaya yang keluar dari bintang ke bintang, dan bintang-bintang yang jalannya cepat dari bintang-bintang yang lain.\n\nAdapun tentang pemahaman jawab qasam-nya sama dengan pendapat jumhur mufasir.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 4, 'فَالسّٰبِقٰتِ سَبْقًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan (malaikat) yang mendahului dengan kencang,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat-ayat ini, Allah berfirman dalam bentuk sumpah terhadap beberapa malaikat yang mencabut nyawa manusia dengan keras dan juga kepada para malaikat yang mencabut nyawa manusia dengan lemah-lembut. Hal ini dalam rangka menegaskan adanya hari kebangkitan yang diingkari orang-orang musyrik. Ayat-ayat selanjutnya yang juga dalam bentuk kalimat-kalimat sumpah kepada para malaikat yang turun dari langit dengan cepat sambil membawa perintah Allah. Bahkan Allah bersumpah kepada para malaikat yang mendahului malaikat yang lain dengan kencang, serta para malaikat yang mengatur dunia.\n\nFirman-firman dalam bentuk sumpah ini banyak terdapat pada surah-surah Makkiyyah karena banyak orang-orang musyrik menolak dan mengingkari hari kebangkitan, seperti pada Surah as-saffat/37: 1-4:\n\nDemi (rombongan malaikat) yang berbaris bersaf-saf, demi (rombongan) yang mencegah dengan sungguh-sungguh, demi (rombongan) yang membacakan peringatan, sungguh, Tuhanmu benar-benar Esa. (as-saffat/37: 1-4)\n\nAdapun jawab qasam (isi dari sumpah) pada awal Surah an-Nazi''at ini terdapat dalam ayat 6, yaitu sungguh pada saat alam berguncang ketika tiupan sangkakala pertama, semuanya rusak dan hancur.\n\nTiupan sangkakala yang pertama itu kemudian diikuti oleh tiupan kedua yang membangkitkan manusia dari kuburnya. Inilah hari Kiamat dalam arti yang sebenarnya.\n\nAyat-ayat permulaan pada Surah an-Nazi''at ini oleh jumhur mufasir dipahami sebagai sumpah-sumpah kepada para malaikat. Akan tetapi, ada mufasir lain, seperti Ahmad Musthafa al-Maragi, yang memahami sumpah ini bukan kepada para malaikat, tetapi kepada bintang-bintang yang beredar menurut aturan tertentu, seperti matahari, bulan, dan planet-planet yang lain. Dalam tafsir al-MarAgi, ayat-ayat ini dipahami sebagai bintang-bintang yang sigap dan cepat jalannya, cahaya-cahaya yang keluar dari bintang ke bintang, dan bintang-bintang yang jalannya cepat dari bintang-bintang yang lain.\n\nAdapun tentang pemahaman jawab qasam-nya sama dengan pendapat jumhur mufasir.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 5, 'فَالْمُدَبِّرٰتِ اَمْرًاۘ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan (malaikat) yang mengatur urusan (dunia).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat-ayat ini, Allah berfirman dalam bentuk sumpah terhadap beberapa malaikat yang mencabut nyawa manusia dengan keras dan juga kepada para malaikat yang mencabut nyawa manusia dengan lemah-lembut. Hal ini dalam rangka menegaskan adanya hari kebangkitan yang diingkari orang-orang musyrik. Ayat-ayat selanjutnya yang juga dalam bentuk kalimat-kalimat sumpah kepada para malaikat yang turun dari langit dengan cepat sambil membawa perintah Allah. Bahkan Allah bersumpah kepada para malaikat yang mendahului malaikat yang lain dengan kencang, serta para malaikat yang mengatur dunia.\n\nFirman-firman dalam bentuk sumpah ini banyak terdapat pada surah-surah Makkiyyah karena banyak orang-orang musyrik menolak dan mengingkari hari kebangkitan, seperti pada Surah as-saffat/37: 1-4:\n\nDemi (rombongan malaikat) yang berbaris bersaf-saf, demi (rombongan) yang mencegah dengan sungguh-sungguh, demi (rombongan) yang membacakan peringatan, sungguh, Tuhanmu benar-benar Esa. (as-saffat/37: 1-4)\n\nAdapun jawab qasam (isi dari sumpah) pada awal Surah an-Nazi''at ini terdapat dalam ayat 6, yaitu sungguh pada saat alam berguncang ketika tiupan sangkakala pertama, semuanya rusak dan hancur.\n\nTiupan sangkakala yang pertama itu kemudian diikuti oleh tiupan kedua yang membangkitkan manusia dari kuburnya. Inilah hari Kiamat dalam arti yang sebenarnya.\n\nAyat-ayat permulaan pada Surah an-Nazi''at ini oleh jumhur mufasir dipahami sebagai sumpah-sumpah kepada para malaikat. Akan tetapi, ada mufasir lain, seperti Ahmad Musthafa al-Maragi, yang memahami sumpah ini bukan kepada para malaikat, tetapi kepada bintang-bintang yang beredar menurut aturan tertentu, seperti matahari, bulan, dan planet-planet yang lain. Dalam tafsir al-MarAgi, ayat-ayat ini dipahami sebagai bintang-bintang yang sigap dan cepat jalannya, cahaya-cahaya yang keluar dari bintang ke bintang, dan bintang-bintang yang jalannya cepat dari bintang-bintang yang lain.\n\nAdapun tentang pemahaman jawab qasam-nya sama dengan pendapat jumhur mufasir.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 6, 'يَوْمَ تَرْجُفُ الرَّاجِفَةُۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Sungguh, kamu akan dibangkitkan) pada hari ketika tiupan pertama mengguncangkan alam,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat-ayat ini, Allah berfirman dalam bentuk sumpah terhadap beberapa malaikat yang mencabut nyawa manusia dengan keras dan juga kepada para malaikat yang mencabut nyawa manusia dengan lemah-lembut. Hal ini dalam rangka menegaskan adanya hari kebangkitan yang diingkari orang-orang musyrik. Ayat-ayat selanjutnya yang juga dalam bentuk kalimat-kalimat sumpah kepada para malaikat yang turun dari langit dengan cepat sambil membawa perintah Allah. Bahkan Allah bersumpah kepada para malaikat yang mendahului malaikat yang lain dengan kencang, serta para malaikat yang mengatur dunia.\n\nFirman-firman dalam bentuk sumpah ini banyak terdapat pada surah-surah Makkiyyah karena banyak orang-orang musyrik menolak dan mengingkari hari kebangkitan, seperti pada Surah as-saffat/37: 1-4:\n\nDemi (rombongan malaikat) yang berbaris bersaf-saf, demi (rombongan) yang mencegah dengan sungguh-sungguh, demi (rombongan) yang membacakan peringatan, sungguh, Tuhanmu benar-benar Esa. (as-saffat/37: 1-4)\n\nAdapun jawab qasam (isi dari sumpah) pada awal Surah an-Nazi''at ini terdapat dalam ayat 6, yaitu sungguh pada saat alam berguncang ketika tiupan sangkakala pertama, semuanya rusak dan hancur.\n\nTiupan sangkakala yang pertama itu kemudian diikuti oleh tiupan kedua yang membangkitkan manusia dari kuburnya. Inilah hari Kiamat dalam arti yang sebenarnya.\n\nAyat-ayat permulaan pada Surah an-Nazi''at ini oleh jumhur mufasir dipahami sebagai sumpah-sumpah kepada para malaikat. Akan tetapi, ada mufasir lain, seperti Ahmad Musthafa al-Maragi, yang memahami sumpah ini bukan kepada para malaikat, tetapi kepada bintang-bintang yang beredar menurut aturan tertentu, seperti matahari, bulan, dan planet-planet yang lain. Dalam tafsir al-MarAgi, ayat-ayat ini dipahami sebagai bintang-bintang yang sigap dan cepat jalannya, cahaya-cahaya yang keluar dari bintang ke bintang, dan bintang-bintang yang jalannya cepat dari bintang-bintang yang lain.\n\nAdapun tentang pemahaman jawab qasam-nya sama dengan pendapat jumhur mufasir.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 7, 'تَتْبَعُهَا الرَّادِفَةُ ۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(tiupan pertama) itu diiringi oleh tiupan kedua.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat-ayat ini, Allah berfirman dalam bentuk sumpah terhadap beberapa malaikat yang mencabut nyawa manusia dengan keras dan juga kepada para malaikat yang mencabut nyawa manusia dengan lemah-lembut. Hal ini dalam rangka menegaskan adanya hari kebangkitan yang diingkari orang-orang musyrik. Ayat-ayat selanjutnya yang juga dalam bentuk kalimat-kalimat sumpah kepada para malaikat yang turun dari langit dengan cepat sambil membawa perintah Allah. Bahkan Allah bersumpah kepada para malaikat yang mendahului malaikat yang lain dengan kencang, serta para malaikat yang mengatur dunia.\n\nFirman-firman dalam bentuk sumpah ini banyak terdapat pada surah-surah Makkiyyah karena banyak orang-orang musyrik menolak dan mengingkari hari kebangkitan, seperti pada Surah as-saffat/37: 1-4:\n\nDemi (rombongan malaikat) yang berbaris bersaf-saf, demi (rombongan) yang mencegah dengan sungguh-sungguh, demi (rombongan) yang membacakan peringatan, sungguh, Tuhanmu benar-benar Esa. (as-saffat/37: 1-4)\n\nAdapun jawab qasam (isi dari sumpah) pada awal Surah an-Nazi''at ini terdapat dalam ayat 6, yaitu sungguh pada saat alam berguncang ketika tiupan sangkakala pertama, semuanya rusak dan hancur.\n\nTiupan sangkakala yang pertama itu kemudian diikuti oleh tiupan kedua yang membangkitkan manusia dari kuburnya. Inilah hari Kiamat dalam arti yang sebenarnya.\n\nAyat-ayat permulaan pada Surah an-Nazi''at ini oleh jumhur mufasir dipahami sebagai sumpah-sumpah kepada para malaikat. Akan tetapi, ada mufasir lain, seperti Ahmad Musthafa al-Maragi, yang memahami sumpah ini bukan kepada para malaikat, tetapi kepada bintang-bintang yang beredar menurut aturan tertentu, seperti matahari, bulan, dan planet-planet yang lain. Dalam tafsir al-MarAgi, ayat-ayat ini dipahami sebagai bintang-bintang yang sigap dan cepat jalannya, cahaya-cahaya yang keluar dari bintang ke bintang, dan bintang-bintang yang jalannya cepat dari bintang-bintang yang lain.\n\nAdapun tentang pemahaman jawab qasam-nya sama dengan pendapat jumhur mufasir.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 8, 'قُلُوْبٌ يَّوْمَىِٕذٍ وَّاجِفَةٌۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Hati manusia pada waktu itu merasa sangat takut,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat-ayat ini dijelaskan bahwa hati orang-orang kafir pada waktu itu sangat takut setelah mereka menyaksikan sendiri apa yang telah diberitahukan kepada mereka dahulu di dunia. Orang-orang kafir Mekah ketika di dunia bahkan telah diberitahu langsung oleh Nabi Muhammad. Pandangan mereka tertunduk lemas, selalu melihat ke bawah karena rasa takut dan gelisah yang sangat tinggi.\n\nPada ayat lain digambarkan keadaan orang-orang kafir pada hari Kiamat itu sebagai berikut:\n\nMereka datang tergesa-gesa (memenuhi panggilan) dengan mengangkat kepalanya, sedang mata mereka tidak berkedip-kedip dan hati mereka kosong. (Ibrahim/14: 43)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 9, 'اَبْصَارُهَا خَاشِعَةٌ  ۘ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'pandangannya tunduk.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat-ayat ini dijelaskan bahwa hati orang-orang kafir pada waktu itu sangat takut setelah mereka menyaksikan sendiri apa yang telah diberitahukan kepada mereka dahulu di dunia. Orang-orang kafir Mekah ketika di dunia bahkan telah diberitahu langsung oleh Nabi Muhammad. Pandangan mereka tertunduk lemas, selalu melihat ke bawah karena rasa takut dan gelisah yang sangat tinggi.\n\nPada ayat lain digambarkan keadaan orang-orang kafir pada hari Kiamat itu sebagai berikut:\n\nMereka datang tergesa-gesa (memenuhi panggilan) dengan mengangkat kepalanya, sedang mata mereka tidak berkedip-kedip dan hati mereka kosong. (Ibrahim/14: 43)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 10, 'يَقُوْلُوْنَ ءَاِنَّا لَمَرْدُوْدُوْنَ فِى الْحَافِرَةِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Orang-orang kafir) berkata, “Apakah kita benar-benar akan dikembalikan kepada kehidupan yang semula?   ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini kemudian dijelaskan bahwa orang-orang kafir yang mengingkari hari kebangkitan bertanya dengan nada penyesalan, "Apakah kami betul-betul dikembalikan seperti kehidupan semula?" Hal ini juga pernah mereka tanyakan, sebagaimana terdapat dalam firman Allah:\n\nMereka berkata, "Apakah betul, apabila kami telah mati dan telah menjadi tanah dan tulang belulang, kami benar-benar akan dibangkitkan kembali? (al-Mu''minun/23: 82)\n\nPada hari Kiamat pun mereka masih bertanya, "Apakah kami akan dibangkitkan juga apabila telah menjadi tulang-belulang yang hancur dan bersatu dengan tanah?" padahal ketika di dunia sudah dijelaskan dalam firman Allah:\n\nDia berkata, "Siapakah yang dapat menghidupkan tulang-belulang yang telah hancur luluh?" Katakanlah (Muhammad), "Yang akan menghidupkannya ialah (Allah) yang menciptakannya pertama kali. Dan Dia Maha Mengetahui tentang segala makhluk. (Yasin/36: 78-79)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 11, 'ءَاِذَا كُنَّا عِظَامًا نَّخِرَةً ۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Apakah (akan dibangkitkan juga) apabila kita telah menjadi tulang belulang yang hancur?”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini kemudian dijelaskan bahwa orang-orang kafir yang mengingkari hari kebangkitan bertanya dengan nada penyesalan, "Apakah kami betul-betul dikembalikan seperti kehidupan semula?" Hal ini juga pernah mereka tanyakan, sebagaimana terdapat dalam firman Allah:\n\nMereka berkata, "Apakah betul, apabila kami telah mati dan telah menjadi tanah dan tulang belulang, kami benar-benar akan dibangkitkan kembali? (al-Mu''minun/23: 82)\n\nPada hari Kiamat pun mereka masih bertanya, "Apakah kami akan dibangkitkan juga apabila telah menjadi tulang-belulang yang hancur dan bersatu dengan tanah?" padahal ketika di dunia sudah dijelaskan dalam firman Allah:\n\nDia berkata, "Siapakah yang dapat menghidupkan tulang-belulang yang telah hancur luluh?" Katakanlah (Muhammad), "Yang akan menghidupkannya ialah (Allah) yang menciptakannya pertama kali. Dan Dia Maha Mengetahui tentang segala makhluk. (Yasin/36: 78-79)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 12, 'قَالُوْا تِلْكَ اِذًا كَرَّةٌ خَاسِرَةٌ  ۘ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mereka berkata, “Kalau demikian, itu adalah suatu pengembalian yang merugikan.”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini akhirnya mereka berkata juga, "Kalau demikian, sungguh kami akan mengalami pengembalian yang sangat merugikan." Allah menjawab ejekan dan penyesalan mereka itu dengan menjelaskan bahwa pengembalian itu cukup sederhana saja, yaitu dapat terjadi hanya dengan satu kali tiupan saja oleh Malaikat Israfil.\n\nAkhirnya mereka menyadari bahwa manusia tidak dapat memandang peristiwa hari kebangkitan itu sebagai mustahil. Sebab, dengan itu mereka dapat serta merta akan hidup kembali di permukaan bumi sebagai permulaan hari akhirat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 13, 'فَاِنَّمَا هِيَ زَجْرَةٌ وَّاحِدَةٌۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka pengembalian itu hanyalah dengan sekali tiupan saja.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini akhirnya mereka berkata juga, "Kalau demikian, sungguh kami akan mengalami pengembalian yang sangat merugikan." Allah menjawab ejekan dan penyesalan mereka itu dengan menjelaskan bahwa pengembalian itu cukup sederhana saja, yaitu dapat terjadi hanya dengan satu kali tiupan saja oleh Malaikat Israfil.\n\nAkhirnya mereka menyadari bahwa manusia tidak dapat memandang peristiwa hari kebangkitan itu sebagai mustahil. Sebab, dengan itu mereka dapat serta merta akan hidup kembali di permukaan bumi sebagai permulaan hari akhirat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 14, 'فَاِذَا هُمْ بِالسَّاهِرَةِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka seketika itu mereka hidup kembali di bumi (yang baru).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini akhirnya mereka berkata juga, "Kalau demikian, sungguh kami akan mengalami pengembalian yang sangat merugikan." Allah menjawab ejekan dan penyesalan mereka itu dengan menjelaskan bahwa pengembalian itu cukup sederhana saja, yaitu dapat terjadi hanya dengan satu kali tiupan saja oleh Malaikat Israfil.\n\nAkhirnya mereka menyadari bahwa manusia tidak dapat memandang peristiwa hari kebangkitan itu sebagai mustahil. Sebab, dengan itu mereka dapat serta merta akan hidup kembali di permukaan bumi sebagai permulaan hari akhirat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 15, 'هَلْ اَتٰىكَ حَدِيْثُ مُوْسٰىۘ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sudahkah sampai kepadamu (Muhammad) kisah Musa?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengingatkan Nabi Muhammad tentang kisah Musa dalam bentuk pertanyaan, yaitu apakah belum diketahui olehnya tentang kisah Musa yang diutus Allah kepada Fir''aun untuk menyampaikan risalahnya dengan cara yang halus dan lemah lembut seperti tercantum dalam firman Allah:\n\nMaka berbicaralah kamu berdua kepadanya (Fir''aun) dengan kata-kata yang lemah lembut, mudah-mudahan dia sadar atau takut. (thaha/20: 44)\n\nKisah Nabi Musa terutama tatkala Tuhan memanggil Musa di lembah suci yaitu di Lembah thuwa di dekat Gunung Sinai. Pada saat itu, Nabi Musa bermunajat kepada Allah sebagaimana dijelaskan dalam ayat berikut ini.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 16, 'اِذْ نَادٰىهُ رَبُّهٗ بِالْوَادِ الْمُقَدَّسِ طُوًىۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Ketika Tuhan memanggilnya (Musa) di lembah suci yaitu Lembah Tuwa;', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengingatkan Nabi Muhammad tentang kisah Musa dalam bentuk pertanyaan, yaitu apakah belum diketahui olehnya tentang kisah Musa yang diutus Allah kepada Fir''aun untuk menyampaikan risalahnya dengan cara yang halus dan lemah lembut seperti tercantum dalam firman Allah:\n\nMaka berbicaralah kamu berdua kepadanya (Fir''aun) dengan kata-kata yang lemah lembut, mudah-mudahan dia sadar atau takut. (thaha/20: 44)\n\nKisah Nabi Musa terutama tatkala Tuhan memanggil Musa di lembah suci yaitu di Lembah thuwa di dekat Gunung Sinai. Pada saat itu, Nabi Musa bermunajat kepada Allah sebagaimana dijelaskan dalam ayat berikut ini.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 17, 'اِذْهَبْ اِلٰى فِرْعَوْنَ اِنَّهٗ طَغٰىۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'pergilah engkau kepada Fir‘aun! Sesungguhnya dia telah melampaui batas,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Tugas Nabi Musa ialah supaya pergi kepada Fir''aun dan menasihatinya karena Fir''aun sudah melampaui batas, berlaku sombong terhadap Bani Israil dan memperbudak mereka dengan kekejaman yang luar biasa dan di luar peri kemanusiaan. Di antaranya adalah perintah untuk membunuh bayi-bayi laki-laki dan membiarkan bayi perempuan hidup. Kemudian Allah menyuruh Nabi Musa supaya melaksanakan dakwah dengan halus dan lemah lembut.\n\nNabi Musa diperintahkan untuk berdialog secara baik-baik dengan Fir''aun dan mengemukakan pertanyaan apakah Fir''aun mau membersihkan diri dari kesesatan. Fir''aun telah bergelimang dalam kesesatan, sehingga sebaiknya mau menerima petunjuk dari Allah yang dibawa Nabi Musa. Fir''aun perlu menempuh jalan kebajikan yaitu menjauhkan diri dari perbuatan-perbuatan jahat.\n\nKemudian Nabi Musa diperintahkan untuk menjelaskan secara terbuka dengan mengajak Fir''aun untuk mengikuti risalahnya menuju ke jalan Allah dengan bertakwa kepada-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 18, 'فَقُلْ هَلْ لَّكَ اِلٰٓى اَنْ تَزَكّٰىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka katakanlah (kepada Fir‘aun), “Adakah keinginanmu untuk membersihkan diri (dari kesesatan),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Tugas Nabi Musa ialah supaya pergi kepada Fir''aun dan menasihatinya karena Fir''aun sudah melampaui batas, berlaku sombong terhadap Bani Israil dan memperbudak mereka dengan kekejaman yang luar biasa dan di luar peri kemanusiaan. Di antaranya adalah perintah untuk membunuh bayi-bayi laki-laki dan membiarkan bayi perempuan hidup. Kemudian Allah menyuruh Nabi Musa supaya melaksanakan dakwah dengan halus dan lemah lembut.\n\nNabi Musa diperintahkan untuk berdialog secara baik-baik dengan Fir''aun dan mengemukakan pertanyaan apakah Fir''aun mau membersihkan diri dari kesesatan. Fir''aun telah bergelimang dalam kesesatan, sehingga sebaiknya mau menerima petunjuk dari Allah yang dibawa Nabi Musa. Fir''aun perlu menempuh jalan kebajikan yaitu menjauhkan diri dari perbuatan-perbuatan jahat.\n\nKemudian Nabi Musa diperintahkan untuk menjelaskan secara terbuka dengan mengajak Fir''aun untuk mengikuti risalahnya menuju ke jalan Allah dengan bertakwa kepada-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 19, 'وَاَهْدِيَكَ اِلٰى رَبِّكَ فَتَخْشٰىۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan engkau akan kupimpin ke jalan Tuhanmu agar engkau takut kepada-Nya?”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Tugas Nabi Musa ialah supaya pergi kepada Fir''aun dan menasihatinya karena Fir''aun sudah melampaui batas, berlaku sombong terhadap Bani Israil dan memperbudak mereka dengan kekejaman yang luar biasa dan di luar peri kemanusiaan. Di antaranya adalah perintah untuk membunuh bayi-bayi laki-laki dan membiarkan bayi perempuan hidup. Kemudian Allah menyuruh Nabi Musa supaya melaksanakan dakwah dengan halus dan lemah lembut.\n\nNabi Musa diperintahkan untuk berdialog secara baik-baik dengan Fir''aun dan mengemukakan pertanyaan apakah Fir''aun mau membersihkan diri dari kesesatan. Fir''aun telah bergelimang dalam kesesatan, sehingga sebaiknya mau menerima petunjuk dari Allah yang dibawa Nabi Musa. Fir''aun perlu menempuh jalan kebajikan yaitu menjauhkan diri dari perbuatan-perbuatan jahat.\n\nKemudian Nabi Musa diperintahkan untuk menjelaskan secara terbuka dengan mengajak Fir''aun untuk mengikuti risalahnya menuju ke jalan Allah dengan bertakwa kepada-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 20 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 20, 'فَاَرٰىهُ الْاٰيَةَ الْكُبْرٰىۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 20);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 20;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Lalu (Musa) memperlihatkan kepadanya mukjizat yang besar.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian Allah menerangkan bahwa Fir''aun tetap membangkang dan tidak mau mengikuti ajakan Nabi Musa sehingga Musa terpaksa memperlihatkan mukjizat-mukjizatnya. Lalu Musa memperlihatkan kepada Fir''aun mukjizat yang besar yaitu tongkat menjadi ular dan telapak tangan yang bersinar terang. Meskipun begitu, Fir''aun masih mengingkari kenabian Musa dan tetap bersikap durhaka dan menentang Allah. Kemudian Fir''aun berpaling dan berusaha untuk mengadakan perlawanan kepada Musa.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 21 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 21, 'فَكَذَّبَ وَعَصٰىۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 21);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 21;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Tetapi dia (Fir‘aun) mendustakan dan mendurhakai.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian Allah menerangkan bahwa Fir''aun tetap membangkang dan tidak mau mengikuti ajakan Nabi Musa sehingga Musa terpaksa memperlihatkan mukjizat-mukjizatnya. Lalu Musa memperlihatkan kepada Fir''aun mukjizat yang besar yaitu tongkat menjadi ular dan telapak tangan yang bersinar terang. Meskipun begitu, Fir''aun masih mengingkari kenabian Musa dan tetap bersikap durhaka dan menentang Allah. Kemudian Fir''aun berpaling dan berusaha untuk mengadakan perlawanan kepada Musa.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 22 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 22, 'ثُمَّ اَدْبَرَ يَسْعٰىۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 22);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 22;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kemudian dia berpaling seraya berusaha menantang (Musa).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian Allah menerangkan bahwa Fir''aun tetap membangkang dan tidak mau mengikuti ajakan Nabi Musa sehingga Musa terpaksa memperlihatkan mukjizat-mukjizatnya. Lalu Musa memperlihatkan kepada Fir''aun mukjizat yang besar yaitu tongkat menjadi ular dan telapak tangan yang bersinar terang. Meskipun begitu, Fir''aun masih mengingkari kenabian Musa dan tetap bersikap durhaka dan menentang Allah. Kemudian Fir''aun berpaling dan berusaha untuk mengadakan perlawanan kepada Musa.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 23 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 23, 'فَحَشَرَ فَنَادٰىۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 23);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 23;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kemudian dia mengumpulkan (pembesar-pembesarnya) lalu berseru (memanggil kaumnya).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat-ayat ini, Allah menerangkan bahwa Fir''aun mengumpulkan pembesar-pembesarnya dan berseru memanggil kaumnya yang sebagiannya terdiri dari para tukang sihir. Dengan penuh kesombongan, Fir''aun berkata, "Akulah tuhan kamu yang paling tinggi. Jangan ikuti ajakan Musa."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 24 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 24, 'فَقَالَ اَنَا۠ رَبُّكُمُ الْاَعْلٰىۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 24);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 24;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Seraya) berkata, “Akulah tuhanmu yang paling tinggi.”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat-ayat ini, Allah menerangkan bahwa Fir''aun mengumpulkan pembesar-pembesarnya dan berseru memanggil kaumnya yang sebagiannya terdiri dari para tukang sihir. Dengan penuh kesombongan, Fir''aun berkata, "Akulah tuhan kamu yang paling tinggi. Jangan ikuti ajakan Musa."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 25 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 25, 'فَاَخَذَهُ اللّٰهُ نَكَالَ الْاٰخِرَةِ وَالْاُوْلٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 25);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 25;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka Allah menghukumnya dengan azab di akhirat dan siksaan di dunia.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Maka Allah menurunkan siksa kepadanya, bukan di dunia saja bahkan juga di akhirat. Siksaan di dunia ialah dengan ditenggelamkan bersama kaumnya di Laut Merah, dan siksaan di akhirat dengan dijerumuskan ke dalam neraka Jahanam, yang merupakan tempat kembali yang sangat buruk.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 26 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 26, 'اِنَّ فِيْ ذٰلِكَ لَعِبْرَةً لِّمَنْ يَّخْشٰى ۗ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 26);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 26;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, pada yang demikian itu terdapat pelajaran bagi orang yang takut (kepada Allah).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini dijelaskan sesungguhnya pada kejadian yang demikian itu terdapat pelajaran bagi orang-orang yang mempunyai akal dan dapat memperhitungkan tiap-tiap kejadian dengan akibatnya, terutama bagi orang yang takut kepada Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 27 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 27, 'ءَاَنْتُمْ اَشَدُّ خَلْقًا اَمِ السَّمَاۤءُ ۚ بَنٰىهَاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 27);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 27;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Apakah penciptaan kamu yang lebih hebat ataukah langit yang telah dibangun-Nya?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menghimbau manusia untuk menggunakan akalnya untuk membandingkan penciptaan dirinya yang kecil dan lemah dengan penciptaan alam semesta yang demikian luas dan kokoh. Hal itu menunjukkan kekuasaan Allah. Ibnu Khaldun menggambarkan keadaan manusia yang terlalu mengagungkan kemampuan logika tanpa mengasah kalbunya dengan mengatakan, "Bagaimana manusia dengan otaknya yang hanya sebesar timbangan emas mau digunakan untuk menimbang alam semesta?"'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 28 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 28, 'رَفَعَ سَمْكَهَا فَسَوّٰىهَاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 28);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 28;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dia telah meninggikan bangunannya lalu menyempurnakannya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini dijelaskan bahwa Allah meninggikan langit, meluaskan, dan melengkapinya dengan benda-benda angkasa, seperti planet dan lainnya. Allah lalu menetapkan ketentuan-ketentuan yang mengatur benda-benda angkasa itu, sehingga tetap di tempatnya dan tidak berjatuhan, seakan-akan menjadi perhiasan seluruh jagatnya. Menciptakan dan mengatur alam raya (makrokosmos) ini jauh lebih rumit dan kompleks daripada menciptakan manusia yang hanya disebut mikrokosmos.\n\nKajian saintifik modern saat ini menyatakan bahwa jagad-raya seisinya ini diawali pembentukannya dari adanya singularity. Singularity adalah sesuatu dimana calon/bakal ruang, energi, materi dan waktu masih terkumpul menjadi satu (manunggal). Dentuman Besar (Big Bang) meledakkan singularity ini dan berkembanglah bak seperti spiral-kerucut yang terus menerus berekspansi melebar dan melebar terus. Sejak Big Bang itulah, waktu mulai memisahkan diri dari ruang, begitu pula energi, materi dan gaya-gaya memisahkan diri, dan selama bermiliar-miliar tahun terbentuklah seluruh jagad-raya yang berisi miliaran galaksi. Ruang dan waktu terus mengalami ekspansi meluas. Inilah yang disebut dengan "meninggikan bangunannya (langitnya)". Bahiruddin S. Mahmud menjelaskan bahwa ekspansi jagad raya bukannya tak terbatas, bukannya terus menerus. Laju ekspansi atau perkembangan ini berangsur-angsur menurun, karena gaya gravitasi antar galaksi (yang mereka sesamanya terus saling menjauh) mulai mengendur, sehingga suatu saat akan berhentilah ekspansi jagad raya itu, maka sempurnalah bangunan itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 29 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 29, 'وَاَغْطَشَ لَيْلَهَا وَاَخْرَجَ ضُحٰىهَاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 29);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 29;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan Dia menjadikan malamnya (gelap gulita), dan menjadikan siangnya (terang benderang).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini dijelaskan bahwa Allah telah menjadikan malam gelap gulita dan siang terang benderang, dan pergantian siang dan malam, serta perbedaan musim-musim sebagai akibat dari peredaran planet-planet di sekitar orbitnya. Mengatur dan memelihara peredaran planet-planet ini sungguh pekerjaan yang luar biasa hebatnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 30 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 30, 'وَالْاَرْضَ بَعْدَ ذٰلِكَ دَحٰىهَاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 30);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 30;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan setelah itu bumi Dia hamparkan. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Juga diterangkan bahwa Allah menjadikan bumi terhampar, sehingga makhluk Allah mudah melaksanakan kehidupan di sana. Ayat ini menunjukkan bahwa Allah menciptakan bumi lebih dahulu, kemudian menciptakan langit, kemudian kembali lagi ke bumi dan menghamparkannya untuk kediaman manusia. Setelah menyiapkan tempat-tempat tinggal, maka Allah menyediakan segala sesuatu yang diperlukan manusia yaitu tentang makanan dan minuman, sebagaimana dijelaskan dalam ayat berikutnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 31 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 31, 'اَخْرَجَ مِنْهَا مَاۤءَهَا وَمَرْعٰىهَاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 31);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 31;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Darinya Dia pancarkan mata air, dan (ditumbuhkan) tumbuh-tumbuhannya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini dijelaskan bahwa Allah memancarkan dari perut bumi sumber-sumber mata air dan sungai-sungai dan menumbuhkan tumbuh-tumbuhannya, baik untuk dimakan manusia maupun binatang ternak.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 32 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 32, 'وَالْجِبَالَ اَرْسٰىهَاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 32);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 32;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan gunung-gunung Dia pancangkan dengan teguh.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini juga dijelaskan bahwa Allah memancangkan gunung-gunung dengan cara yang teguh sekali laksana tonggak sehingga menjadikan bumi stabil tidak goyah. Allah menerangkan hikmahnya pada ayat berikut ini.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 33 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 33, 'مَتَاعًا لَّكُمْ وَلِاَنْعَامِكُمْۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 33);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 33;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Semua itu) untuk kesenanganmu dan untuk hewan-hewan ternakmu.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Semuanya itu untuk kesenangan manusia dan hewan-hewan ternaknya. Dengan demikian, manusia dan hewan-hewan itu dapat hidup dengan tenang dan mencari rezeki dengan melakukan berbagai kegiatan.\n\nHal ini juga dijelaskan dalam firman Allah yang lain:\n\nDialah yang telah menurunkan air (hujan) dari langit untuk kamu, sebagiannya menjadi minuman dan sebagiannya (menyuburkan) tumbuhan, padanya kamu menggembalakan ternakmu. (an-Nahl/16: 10)\n\nSetelah mempelajari kandungan ayat-ayat tersebut yang ditujukan untuk meyakinkan tentang adanya hari kebangkitan, maka sepatutnya menjadi bahan renungan bahwa Tuhan yang telah menciptakan manusia dan menciptakan apa-apa yang diperlukan untuk kehidupannya, yang telah mengangkat langit di atas dan menghamparkan bumi di bawah, tidakkah berkuasa untuk membangkitkan manusia kembali pada hari Kiamat? Pantaskah Allah membiarkan manusia melakukan perbuatan yang sia-sia setelah menyiapkan sarana bagi mereka dan menghimpun kebaikan-kebaikan yang melimpah ruah itu untuk mereka?'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 34 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 34, 'فَاِذَا جَاۤءَتِ الطَّاۤمَّةُ الْكُبْرٰىۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 34);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 34;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka apabila malapetaka besar (hari Kiamat) telah datang,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini dijelaskan bahwa apabila malapetaka yang sangat besar yaitu hari Kiamat telah datang yang menyebabkan rambut pemuda bisa beruban dan neraka dapat dilihat, maka setiap orang akan melupakan malapetaka-malapetaka lain yang pernah dialaminya. Allah akan memisahkan antara orang-orang yang taat serta bertakwa, yang mana akan dimasukkan ke dalam surga, dengan orang-orang yang membangkang dan durhaka, yang mana akan dimasukkan ke dalam neraka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 35 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 35, 'يَوْمَ يَتَذَكَّرُ الْاِنْسَانُ مَا سَعٰىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 35);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 35;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yaitu pada hari (ketika) manusia teringat akan apa yang telah dikerjakannya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada hari Kiamat, manusia akan teringat kepada apa yang telah dikerjakannya ketika hidup di dunia, karena amal-amalnya tercatat dalam sebuah kitab yang lengkap berisi rekaman-rekaman dari ucapan dan perbuatannya sejak mulai balig sampai mati.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 36 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 36, 'وَبُرِّزَتِ الْجَحِيْمُ لِمَنْ يَّرٰى', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 36);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 36;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan neraka diperlihatkan dengan jelas kepada setiap orang yang melihat.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada hari Kiamat, manusia akan teringat kepada apa yang telah dikerjakannya ketika hidup di dunia, karena amal-amalnya tercatat dalam sebuah kitab yang lengkap berisi rekaman-rekaman dari ucapan dan perbuatannya sejak mulai balig sampai mati.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 37 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 37, 'فَاَمَّا مَنْ طَغٰىۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 37);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 37;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka adapun orang yang melampaui batas,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Adapun orang-orang yang sombong dan melampaui batas, lebih mengutamakan kelezatan kehidupan dunia dari pahala di akhirat. Maka sesungguhnya neraka Jahimlah tempat kediamannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 38 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 38, 'وَاٰثَرَ الْحَيٰوةَ الدُّنْيَاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 38);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 38;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan lebih mengutamakan kehidupan dunia,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Adapun orang-orang yang sombong dan melampaui batas, lebih mengutamakan kelezatan kehidupan dunia dari pahala di akhirat. Maka sesungguhnya neraka Jahimlah tempat kediamannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 39 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 39, 'فَاِنَّ الْجَحِيْمَ هِيَ الْمَأْوٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 39);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 39;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'maka sungguh, nerakalah tempat tinggalnya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Adapun orang-orang yang sombong dan melampaui batas, lebih mengutamakan kelezatan kehidupan dunia dari pahala di akhirat. Maka sesungguhnya neraka Jahimlah tempat kediamannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 40 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 40, 'وَاَمَّا مَنْ خَافَ مَقَامَ رَبِّهٖ وَنَهَى النَّفْسَ عَنِ الْهَوٰىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 40);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 40;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan adapun orang-orang yang takut kepada kebesaran Tuhannya dan menahan diri dari (keinginan) hawa nafsunya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebaliknya ditegaskan pula bahwa orang-orang yang takut dan mengadakan persiapan karena memandang kebesaran Tuhannya serta menahan diri dari ajakan hawa nafsunya, maka sesungguhnya surgalah tempat kediamannya yang kekal dan abadi. Alangkah beruntung mereka memperoleh bagian seperti itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 41 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 41, 'فَاِنَّ الْجَنَّةَ هِيَ الْمَأْوٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 41);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 41;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'maka sungguh, surgalah tempat tinggal(nya).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebaliknya ditegaskan pula bahwa orang-orang yang takut dan mengadakan persiapan karena memandang kebesaran Tuhannya serta menahan diri dari ajakan hawa nafsunya, maka sesungguhnya surgalah tempat kediamannya yang kekal dan abadi. Alangkah beruntung mereka memperoleh bagian seperti itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 42 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 42, 'يَسْـَٔلُوْنَكَ عَنِ السَّاعَةِ اَيَّانَ مُرْسٰىهَاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 42);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 42;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mereka (orang-orang kafir) bertanya kepadamu (Muhammad) tentang hari Kiamat, “Kapankah terjadinya?” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Orang-orang musyrik bertanya kepada Nabi tentang kapan waktunya hari Kiamat itu datang. Mereka menanyakan hal itu dengan nada mengejek dan mencemooh. Nabi sendiri ingin sekali menjawab pertanyaan mereka dengan tepat, akan tetapi Allah melarangnya karena hanya Dia sendirilah yang mengetahui kapan hari Kiamat itu akan terjadi.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 43 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 43, 'فِيْمَ اَنْتَ مِنْ ذِكْرٰىهَاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 43);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 43;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Untuk apa engkau perlu menyebutkannya (waktunya)?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menanyakan apakah Nabi Muhammad akan menyebutkan waktu Kiamat itu? Padahal tugasnya hanya sekadar memberi peringatan sehingga tidak ada kewenangan untuk menyebutkan tentang kedatangan hari kebangkitan. Waktu datangnya hari Kiamat tetap merupakan rahasia Allah. Nabi sendiri tidak mengetahui tentang waktu kedatangannya, sebagaimana difirmankan Allah dalam Al-Qur''an:\n\nKewajibanmu tidak lain hanyalah menyampaikan (risalah). (asy-Syura/42: 48)\n\nDalam sebuah hadis yang diriwayatkan oleh ''Umar bin al-Khaththab, ketika Nabi ditanya tentang kapan datangnya hari Kiamat, beliau menjawab:\n\nOrang yang ditanya tidaklah lebih mengetahui daripada orang yang bertanya. (Riwayat Muslim dari ''Umar bin al-Khaththab)\n\nAllah tetap merahasiakan waktu datangnya hari Kiamat mempunyai hikmah yang besar, yaitu supaya manusia selalu mempersiapkan diri setiap saat dengan banyak-banyak berbuat kebaikan dan selalu menghindari perbuatan jahat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 44 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 44, 'اِلٰى رَبِّكَ مُنْتَهٰىهَاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 44);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 44;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kepada Tuhanmulah (dikembalikan) kesudahannya (ketentuan waktunya).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini diterangkan bahwa hanya Allah saja yang mengetahui kapan ketentuan waktunya. Tidak ada yang mengetahui kapan ketentuan waktunya, dan kapan akan terjadinya kiamat kecuali Allah sendiri. Firman Allah:\n\nMereka menanyakan kepadamu (Muhammad) tentang Kiamat, "Kapan terjadi?" Katakanlah, "Sesungguhnya pengetahuan tentang Kiamat itu ada pada Tuhanku; tidak ada (seorang pun) yang dapat menjelaskan waktu terjadinya selain Dia. (Kiamat) itu sangat berat (huru-haranya bagi makhluk) yang di langit dan di bumi, tidak akan datang kepadamu kecuali secara tiba-tiba." Mereka bertanya kepadamu seakan-akan engkau mengetahuinya. Katakanlah (Muhammad), "Sesungguhnya pengetahuan tentang (hari Kiamat) ada pada Allah, tetapi kebanyakan manusia tidak mengetahui." (al-A''raf/7: 187)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 45 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 45, 'اِنَّمَآ اَنْتَ مُنْذِرُ مَنْ يَّخْشٰىهَاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 45);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 45;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Engkau (Muhammad) hanyalah pemberi peringatan bagi siapa yang takut kepadanya (hari Kiamat).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini diterangkan bahwa Nabi Muhammad hanya ditugaskan untuk memberi peringatan kepada orang yang takut kepada hari kebangkitan. Mereka diminta untuk mempersiapkan diri dengan beramal kebaikan dan menghindari kejahatan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 46 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 79, 46, 'كَاَنَّهُمْ يَوْمَ يَرَوْنَهَا لَمْ يَلْبَثُوْٓا اِلَّا عَشِيَّةً اَوْ ضُحٰىهَا ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 79 AND ayah_number = 46);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 79 AND ayah_number = 46;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Pada hari ketika mereka melihat hari Kiamat itu (karena suasananya hebat), mereka merasa seakan-akan hanya (sebentar saja) tinggal (di dunia) pada waktu sore atau pagi hari.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada hari menyaksikan hari kebangkitan dan merasakan huru-haranya, mereka merasa seolah-olah tinggal di dunia hanya sementara saja, seperti sepenggal pagi atau sepenggal sore pada masa-masa yang lalu itu. Kehidupan manusia di dunia ini memang hanya sebentar saja, sebagaimana firman Allah:\n\nPada hari mereka melihat azab yang dijanjikan, mereka merasa seolah-olah mereka tinggal (di dunia) hanya sesaat saja pada siang hari. (al-Ahqaf/46: 35)'
    )
    ON CONFLICT DO NOTHING;
END $$;

