-- Seed Surah 112 (Al-Ikhlas) with 4 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/112.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (112, 'الاخلاص', 'Al-Ikhlas', 4, 'Makkiyah', 'Ikhlas')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 112, 1, 'قُلْ هُوَ اللّٰهُ اَحَدٌۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 112 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 112 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Katakanlah (Muhammad), “Dialah Allah, Yang Maha Esa.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini, Allah menyuruh Nabi Muhammad menjawab pertanyaan orang-orang yang menanyakan tentang sifat Tuhannya, bahwa Dia adalah Allah Yang Maha Esa, tidak tersusun dan tidak berbilang, karena berbilang dalam susunan zat berarti bahwa bagian kumpulan itu memerlukan bagian yang lain, sedang Allah sama sekali tidak memerlukan suatu apa pun. Keesaan Allah itu meliputi tiga hal: Dia Maha Esa pada Zat-Nya, Maha Esa pada sifat-Nya dan Maha Esa pada perbuatan-Nya.\n\nMaha Esa pada zat-Nya berarti zat-Nya tidak tersusun dari beberapa zat atau bagian. Maha Esa pada sifat-Nya berarti tidak ada satu sifat makhluk pun yang menyamai-Nya dan Maha Esa pada perbuatan-Nya berarti Dialah yang membuat semua perbuatan sesuai dengan firman-Nya:\n\nSesungguhnya urusan-Nya apabila Dia menghendaki sesuatu Dia hanya berkata kepadanya, "Jadilah!" Maka jadilah sesuatu itu. (Yasin/36 : 82)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 112, 2, 'اَللّٰهُ الصَّمَدُۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 112 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 112 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Allah tempat meminta segala sesuatu.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menambahkan dalam ayat ini penjelasan tentang sifat Tuhan Yang Maha Esa itu, yaitu Dia adalah Tuhan tempat meminta dan memohon.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 112, 3, 'لَمْ يَلِدْ وَلَمْ يُوْلَدْۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 112 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 112 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Allah) tidak beranak dan tidak pula diperanakkan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah lalu menegaskan bahwa Mahasuci Ia dari mempunyai anak. Ayat ini juga menentang dakwaan orang-orang musyrik Arab yang mengatakan bahwa malaikat-malaikat adalah anak perempuan Allah dan dakwaan orang Nasrani bahwa Isa anak laki-laki Allah. Dalam ayat lain, Allah berfirman:\n\nMaka tanyakanlah (Muhammad) kepada mereka (orang-orang kafir Mekah), "Apakah anak-anak perempuan itu untuk Tuhanmu sedangkan untuk mereka anak-anak laki-laki?" Atau apakah Kami menciptakan malaikat-malaikat berupa perempuan sedangkan mereka menyaksikan(nya)? Ingatlah, sesungguhnya di antara kebohongannya mereka benar-benar mengatakan, "Allah mempunyai anak." Dan sungguh, mereka benar-benar pendusta. (as-saffat/37: 149-152)\n\nAllah tidak beranak, dan tidak pula diperanakkan. Dengan demikian, Dia tidak sama dengan makhluk. Dia berada tidak didahului oleh tidak ada. Mahasuci Allah dari apa yang mereka sebutkan.\n\nIbnu ''Abbas berkata, "Dia tidak beranak sebagaimana Maryam melahirkan Isa dan tidak pula diperanakkan. Ini adalah bantahan terhadap orang-orang Nasrani yang mengatakan Isa al-Masih adalah anak Allah dan bantahan terhadap orang-orang Yahudi yang mengatakan Uzair adalah anak Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 112, 4, 'وَلَمْ يَكُنْ لَّهٗ كُفُوًا اَحَدٌ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 112 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 112 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan tidak ada sesuatu yang setara dengan Dia.”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menjelaskan lagi bahwa tidak ada yang setara dan sebanding dengan Dia dalam zat, sifat, dan perbuatan-Nya. Ini adalah tantangan terhadap orang-orang yang beritikad bahwa ada yang setara dan menyerupai Allah dalam perbuatannya, sebagaimana pendirian orang-orang musyrik Arab yang menyatakan bahwa malaikat itu adalah sekutu Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

