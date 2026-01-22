-- Seed Surah 105 (Al-Fil) with 5 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/105.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (105, 'الفيل', 'Al-Fil', 5, 'Makkiyah', 'Gajah')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 105, 1, 'اَلَمْ تَرَ كَيْفَ فَعَلَ رَبُّكَ بِاَصْحٰبِ الْفِيْلِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 105 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 105 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Tidakkah engkau (Muhammad) perhatikan bagaimana Tuhanmu telah bertindak terhadap pasukan bergajah?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam surah ini, Allah mengingatkan Nabi Muhammad dan pengikutnya dengan suatu peristiwa yang menunjukkan betapa besarnya kekuasaan Allah. Peristiwa itu adalah penyerbuan tentara gajah yang dipimpin oleh panglima Abrahah dari Yaman untuk menundukkan penduduk Mekah dan meruntuhkan Ka''bah. Akan tetapi, Allah membinasakan mereka sebelum maksud yang jahat itu tercapai. Peristiwa Gajah adalah suatu peristiwa yang paling terkenal di kalangan bangsa Arab, sehingga peristiwa ini mereka jadikan patokan tanggal bagi peristiwa-peristiwa lainnya.\n\nKesimpulan riwayatnya adalah bahwa seorang panglima perang yang berkuasa di Yaman ingin menguasai Ka''bah dan menghancurkannya, dengan maksud melarang orang-orang Arab mengerjakan haji ke Ka''bah. Lalu bala tentaranya bergerak menuju Ka''bah disertai beberapa ekor gajah untuk menakut-nakuti. Ketika iring-iringan angkatan perang tersebut tiba di suatu tempat bernama Muqammas (suatu tempat yang berdekatan dengan Mekah), mereka beristirahat di sana. Panglima perang mengirim utusannya kepada penduduk Mekah untuk menyampaikan maksudnya, yaitu bukan untuk memerangi penduduk tetapi untuk menghancurkan Ka''bah. Penduduk Mekah menjadi ketakutan dan lari ke gunung-gunung di sekeliling Ka''bah untuk melihat dari jauh apa yang akan terjadi dan apa yang akan dilakukan oleh panglima perang tersebut.\n\nDalam surah ini pula Allah menjelaskan apa yang terjadi terhadap pasukan bergajah dalam bentuk pertanyaan bahwa Muhammad tidak mengetahui keadaan yang sangat aneh dan peristiwa yang sangat dahsyat yang membuktikan kekuasaan Allah, ilmu dan hikmah-Nya yang tinggi terhadap tentara gajah yang ingin menghancurkan Ka''bah. Kejadian itu berbeda dengan kejadian lainnya yang mempunyai sebab dan akibat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 105, 2, 'اَلَمْ يَجْعَلْ كَيْدَهُمْ فِيْ تَضْلِيْلٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 105 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 105 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bukankah Dia telah menjadikan tipu daya mereka itu sia-sia?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menjelaskan bahwa Ia telah menggagalkan tipu muslihat mereka yang hendak menghancurkan Ka''bah.\n\nAllah mengungkapkan cara menggagalkan tipu daya mereka, yaitu dengan mengirimkan pasukan burung yang berbondong-bondong melempari mereka dengan batu-batu yang berasal dari tanah sehingga menjadikan mereka hancur-lebur dan daging mereka beterbangan ke mana-mana. Maka tentara gajah menjadi laksana daun-daun yang dimakan ulat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 105, 3, 'وَّاَرْسَلَ عَلَيْهِمْ طَيْرًا اَبَابِيْلَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 105 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 105 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan Dia mengirimkan kepada mereka burung yang berbondong-bondong,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menjelaskan bahwa Ia telah menggagalkan tipu muslihat mereka yang hendak menghancurkan Ka''bah.\n\nAllah mengungkapkan cara menggagalkan tipu daya mereka, yaitu dengan mengirimkan pasukan burung yang berbondong-bondong melempari mereka dengan batu-batu yang berasal dari tanah sehingga menjadikan mereka hancur-lebur dan daging mereka beterbangan ke mana-mana. Maka tentara gajah menjadi laksana daun-daun yang dimakan ulat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 105, 4, 'تَرْمِيْهِمْ بِحِجَارَةٍ مِّنْ سِجِّيْلٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 105 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 105 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang melempari mereka dengan batu dari tanah liat yang dibakar,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menjelaskan bahwa Ia telah menggagalkan tipu muslihat mereka yang hendak menghancurkan Ka''bah.\n\nAllah mengungkapkan cara menggagalkan tipu daya mereka, yaitu dengan mengirimkan pasukan burung yang berbondong-bondong melempari mereka dengan batu-batu yang berasal dari tanah sehingga menjadikan mereka hancur-lebur dan daging mereka beterbangan ke mana-mana. Maka tentara gajah menjadi laksana daun-daun yang dimakan ulat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 105, 5, 'فَجَعَلَهُمْ كَعَصْفٍ مَّأْكُوْلٍ ࣖ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 105 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 105 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sehingga mereka dijadikan-Nya seperti daun-daun yang dimakan (ulat).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menjelaskan bahwa Ia telah menggagalkan tipu muslihat mereka yang hendak menghancurkan Ka''bah.\n\nAllah mengungkapkan cara menggagalkan tipu daya mereka, yaitu dengan mengirimkan pasukan burung yang berbondong-bondong melempari mereka dengan batu-batu yang berasal dari tanah sehingga menjadikan mereka hancur-lebur dan daging mereka beterbangan ke mana-mana. Maka tentara gajah menjadi laksana daun-daun yang dimakan ulat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

