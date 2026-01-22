-- Seed Surah 84 (Al-Insyiqaq) with 25 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/84.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (84, 'الانشقاق', 'Al-Insyiqaq', 25, 'Makkiyah', 'Terbelah')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 1, 'اِذَا السَّمَاۤءُ انْشَقَّتْۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Apabila langit terbelah,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan bahwa apabila langit terbelah karena telah rusak hubungan bagian-bagiannya dengan rusaknya peraturan alam semesta pada hari Kiamat nanti, disebabkan perbenturan bintang-bintang di langit karena masing-masing mempunyai daya tarik tersendiri. Oleh karena itu, rusaklah peraturan alam semesta dan terjadilah gumpalan-gumpalan awan yang gelap gulita yang timbul di beberapa tempat di angkasa luar, dan langit itu akan patuh kepada apa-apa yang diperintahkan Allah. Ia pantas menjadi patuh karena dialah makhluk Tuhan yang senantiasa berada dalam kekuasaan-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 2, 'وَاَذِنَتْ لِرَبِّهَا وَحُقَّتْۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan patuh kepada Tuhannya, dan sudah semestinya patuh, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan bahwa apabila langit terbelah karena telah rusak hubungan bagian-bagiannya dengan rusaknya peraturan alam semesta pada hari Kiamat nanti, disebabkan perbenturan bintang-bintang di langit karena masing-masing mempunyai daya tarik tersendiri. Oleh karena itu, rusaklah peraturan alam semesta dan terjadilah gumpalan-gumpalan awan yang gelap gulita yang timbul di beberapa tempat di angkasa luar, dan langit itu akan patuh kepada apa-apa yang diperintahkan Allah. Ia pantas menjadi patuh karena dialah makhluk Tuhan yang senantiasa berada dalam kekuasaan-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 3, 'وَاِذَا الْاَرْضُ مُدَّتْۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan apabila bumi diratakan, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah menerangkan bahwa bila bumi dan gunung-gunung hancur berkeping-keping sehingga menjadi rata dan mengeluarkan apa yang ada di dalam "perut"-nya, maka hal itu adalah karena ketundukannya pada perintah Allah dan kepatuhan melakukan kehendak-Nya.\n\nDalam ayat-ayat lain, Allah berfirman:\n\nApabila bumi diguncangkan dengan guncangan yang dahsyat, dan bumi telah mengeluarkan beban-beban berat (yang dikandung)nya. (az-Zalzalah/99: 1-2)\n\nDan apabila kuburan-kuburan dibongkar. (al-Infithar/82: 4)\n\nMaka tidakkah dia mengetahui apabila apa yang di dalam kubur dikeluarkan. (al-''Adiyat/100: 9)\n\nUntuk tafsir pada kalimat "langit terbelah" di atas, dapat dilihat kembali pada telaah ilmiah Surah al-Insyiqaq/84:1-5, lihat pula telaah ilmiah Surah al-haqqah/69:16 dan Surah al-Infithar/82:1. Kemudian, kalimat yang mengikutinya: "¦dan patuh kepada Tuhannya, dan sudah semestinya langit itu patuh", mengandung pengertian bahwa kejadian itu berlangsung menurut sunatullah, yaitu menurut hukum-hukum Allah yang ada di alam semesta ini. Pengertian "bumi diratakan, dan memuntahkan apa yang ada di dalamnya dan menjadi kosong" adalah bahwa bumi benar-benar luluh lantak, baik terjadinya benturan dengan planet atau benda langit lainnya, karena hilang atau kacaunya gaya gravitasi. Luluh lantaknya bumi inilah yang juga menyebabkan seluruh isi bumi dimuntahkan dan menjadikan isi bumi kosong. Kemudian, kalimat yang mengikutinya: "¦dan patuh kepada Tuhannya, dan sudah semestinya bumi itu patuh", mengandung pengertian bahwa kejadian itu berlangsung menurut sunatullah, yaitu menurut hukum-hukum Allah yang ada di alam semesta ini.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 4, 'وَاَلْقَتْ مَا فِيْهَا وَتَخَلَّتْۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan memuntahkan apa yang ada di dalamnya dan menjadi kosong,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah menerangkan bahwa bila bumi dan gunung-gunung hancur berkeping-keping sehingga menjadi rata dan mengeluarkan apa yang ada di dalam "perut"-nya, maka hal itu adalah karena ketundukannya pada perintah Allah dan kepatuhan melakukan kehendak-Nya.\n\nDalam ayat-ayat lain, Allah berfirman:\n\nApabila bumi diguncangkan dengan guncangan yang dahsyat, dan bumi telah mengeluarkan beban-beban berat (yang dikandung)nya. (az-Zalzalah/99: 1-2)\n\nDan apabila kuburan-kuburan dibongkar. (al-Infithar/82: 4)\n\nMaka tidakkah dia mengetahui apabila apa yang di dalam kubur dikeluarkan. (al-''Adiyat/100: 9)\n\nUntuk tafsir pada kalimat "langit terbelah" di atas, dapat dilihat kembali pada telaah ilmiah Surah al-Insyiqaq/84:1-5, lihat pula telaah ilmiah Surah al-haqqah/69:16 dan Surah al-Infithar/82:1. Kemudian, kalimat yang mengikutinya: "¦dan patuh kepada Tuhannya, dan sudah semestinya langit itu patuh", mengandung pengertian bahwa kejadian itu berlangsung menurut sunatullah, yaitu menurut hukum-hukum Allah yang ada di alam semesta ini. Pengertian "bumi diratakan, dan memuntahkan apa yang ada di dalamnya dan menjadi kosong" adalah bahwa bumi benar-benar luluh lantak, baik terjadinya benturan dengan planet atau benda langit lainnya, karena hilang atau kacaunya gaya gravitasi. Luluh lantaknya bumi inilah yang juga menyebabkan seluruh isi bumi dimuntahkan dan menjadikan isi bumi kosong. Kemudian, kalimat yang mengikutinya: "¦dan patuh kepada Tuhannya, dan sudah semestinya bumi itu patuh", mengandung pengertian bahwa kejadian itu berlangsung menurut sunatullah, yaitu menurut hukum-hukum Allah yang ada di alam semesta ini.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 5, 'وَاَذِنَتْ لِرَبِّهَا وَحُقَّتْۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan patuh kepada Tuhannya, dan sudah semestinya patuh.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah menerangkan bahwa bila bumi dan gunung-gunung hancur berkeping-keping sehingga menjadi rata dan mengeluarkan apa yang ada di dalam "perut"-nya, maka hal itu adalah karena ketundukannya pada perintah Allah dan kepatuhan melakukan kehendak-Nya.\n\nDalam ayat-ayat lain, Allah berfirman:\n\nApabila bumi diguncangkan dengan guncangan yang dahsyat, dan bumi telah mengeluarkan beban-beban berat (yang dikandung)nya. (az-Zalzalah/99: 1-2)\n\nDan apabila kuburan-kuburan dibongkar. (al-Infithar/82: 4)\n\nMaka tidakkah dia mengetahui apabila apa yang di dalam kubur dikeluarkan. (al-''Adiyat/100: 9)\n\nUntuk tafsir pada kalimat "langit terbelah" di atas, dapat dilihat kembali pada telaah ilmiah Surah al-Insyiqaq/84:1-5, lihat pula telaah ilmiah Surah al-haqqah/69:16 dan Surah al-Infithar/82:1. Kemudian, kalimat yang mengikutinya: "¦dan patuh kepada Tuhannya, dan sudah semestinya langit itu patuh", mengandung pengertian bahwa kejadian itu berlangsung menurut sunatullah, yaitu menurut hukum-hukum Allah yang ada di alam semesta ini. Pengertian "bumi diratakan, dan memuntahkan apa yang ada di dalamnya dan menjadi kosong" adalah bahwa bumi benar-benar luluh lantak, baik terjadinya benturan dengan planet atau benda langit lainnya, karena hilang atau kacaunya gaya gravitasi. Luluh lantaknya bumi inilah yang juga menyebabkan seluruh isi bumi dimuntahkan dan menjadikan isi bumi kosong. Kemudian, kalimat yang mengikutinya: "¦dan patuh kepada Tuhannya, dan sudah semestinya bumi itu patuh", mengandung pengertian bahwa kejadian itu berlangsung menurut sunatullah, yaitu menurut hukum-hukum Allah yang ada di alam semesta ini.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 6, 'يٰٓاَيُّهَا الْاِنْسَانُ اِنَّكَ كَادِحٌ اِلٰى رَبِّكَ كَدْحًا فَمُلٰقِيْهِۚ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Wahai manusia! Sesungguhnya kamu telah bekerja keras menuju Tuhanmu, maka kamu akan menemui-Nya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengungkapkan bahwa manusia dalam masa hidupnya bekerja dengan sungguh-sungguh untuk mencapai cita-citanya. Setiap langkah manusia sesungguhnya menuju kepada akhir hidupnya, yaitu mati. Hal ini berarti kembali kepada Allah. Oleh karena itu, manusia akan mengetahui tentang baik buruk pekerjaan yang telah mereka kerjakan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 7, 'فَاَمَّا مَنْ اُوْتِيَ كِتٰبَهٗ بِيَمِيْنِهٖۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka adapun orang yang catatannya diberikan dari sebelah kanannya, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini diterangkan golongan yang menerima catatan dengan tangan kanannya yang berisi apa-apa yang telah dikerjakannya, maka ia akan dihisab dengan mudah dan ringan. Dipaparkanlah semua perbuatannya yang baik dan yang buruk, kemudian diberi ganjaran atas perbuatannya yang baik dan dimaafkanlah perbuatannya yang buruk.\n\nDalam sebuah hadis Nabi saw dijelaskan:\n\nDari ''Aisyah, ia berkata, "Aku mendengar Rasulullah saw. berdoa dalam sebagian salat yang dilakukannya, "Wahai Allah, hisablah aku dengan hisab yang mudah". Ketika Rasul selesai salat, aku berkata: "Wahai Nabi Allah, apakah hisab yang mudah itu? Rasulullah menjawab, "Hisab yang mudah adalah ketika Allah memeriksa catatan amal seseorang, Dia memaafkan. Wahai ''Aisyah, orang yang diinterogasi pada perhitungan amalnya di hari itu (Hari Kiamat), maka ia celaka. Dan setiap musibah yang menimpa seorang mukmin, Allah akan mengampuni (dosanya) dengan musibah itu, walau hanya sekedar tertusuk duri." (Riwayat Ahmad)\n\nMaksud Rasulullah dengan perhitungan yang mudah ialah dimaafkan segala kesalahannya, sedangkan orang yang diperiksa catatannya dengan teliti adalah orang yang mendapat malapetaka. Barang siapa mendapat perhitungan yang mudah dan ringan, ia akan kembali kepada keluarganya yang mukmin dengan gembira sebagaimana firman Allah:\n\nAdapun orang yang kitabnya diberikan di tangan kanannya, maka dia berkata, "Ambillah, bacalah kitabku (ini). Sesungguhnya aku yakin bahwa (suatu saat) aku akan menerima perhitungan terhadap diriku." Maka orang itu berada dalam kehidupan yang diridai. (al-haqqah/69: 19-21)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 8, 'فَسَوْفَ يُحَاسَبُ حِسَابًا يَّسِيْرًاۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'maka dia akan diperiksa dengan pemeriksaan yang mudah, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini diterangkan golongan yang menerima catatan dengan tangan kanannya yang berisi apa-apa yang telah dikerjakannya, maka ia akan dihisab dengan mudah dan ringan. Dipaparkanlah semua perbuatannya yang baik dan yang buruk, kemudian diberi ganjaran atas perbuatannya yang baik dan dimaafkanlah perbuatannya yang buruk.\n\nDalam sebuah hadis Nabi saw dijelaskan:\n\nDari ''Aisyah, ia berkata, "Aku mendengar Rasulullah saw. berdoa dalam sebagian salat yang dilakukannya, "Wahai Allah, hisablah aku dengan hisab yang mudah". Ketika Rasul selesai salat, aku berkata: "Wahai Nabi Allah, apakah hisab yang mudah itu? Rasulullah menjawab, "Hisab yang mudah adalah ketika Allah memeriksa catatan amal seseorang, Dia memaafkan. Wahai ''Aisyah, orang yang diinterogasi pada perhitungan amalnya di hari itu (Hari Kiamat), maka ia celaka. Dan setiap musibah yang menimpa seorang mukmin, Allah akan mengampuni (dosanya) dengan musibah itu, walau hanya sekedar tertusuk duri." (Riwayat Ahmad)\n\nMaksud Rasulullah dengan perhitungan yang mudah ialah dimaafkan segala kesalahannya, sedangkan orang yang diperiksa catatannya dengan teliti adalah orang yang mendapat malapetaka. Barang siapa mendapat perhitungan yang mudah dan ringan, ia akan kembali kepada keluarganya yang mukmin dengan gembira sebagaimana firman Allah:\n\nAdapun orang yang kitabnya diberikan di tangan kanannya, maka dia berkata, "Ambillah, bacalah kitabku (ini). Sesungguhnya aku yakin bahwa (suatu saat) aku akan menerima perhitungan terhadap diriku." Maka orang itu berada dalam kehidupan yang diridai. (al-haqqah/69: 19-21)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 9, 'وَّيَنْقَلِبُ اِلٰٓى اَهْلِهٖ مَسْرُوْرًاۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan dia akan kembali kepada keluarganya (yang sama-sama beriman) dengan gembira.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini diterangkan golongan yang menerima catatan dengan tangan kanannya yang berisi apa-apa yang telah dikerjakannya, maka ia akan dihisab dengan mudah dan ringan. Dipaparkanlah semua perbuatannya yang baik dan yang buruk, kemudian diberi ganjaran atas perbuatannya yang baik dan dimaafkanlah perbuatannya yang buruk.\n\nDalam sebuah hadis Nabi saw dijelaskan:\n\nDari ''Aisyah, ia berkata, "Aku mendengar Rasulullah saw. berdoa dalam sebagian salat yang dilakukannya, "Wahai Allah, hisablah aku dengan hisab yang mudah". Ketika Rasul selesai salat, aku berkata: "Wahai Nabi Allah, apakah hisab yang mudah itu? Rasulullah menjawab, "Hisab yang mudah adalah ketika Allah memeriksa catatan amal seseorang, Dia memaafkan. Wahai ''Aisyah, orang yang diinterogasi pada perhitungan amalnya di hari itu (Hari Kiamat), maka ia celaka. Dan setiap musibah yang menimpa seorang mukmin, Allah akan mengampuni (dosanya) dengan musibah itu, walau hanya sekedar tertusuk duri." (Riwayat Ahmad)\n\nMaksud Rasulullah dengan perhitungan yang mudah ialah dimaafkan segala kesalahannya, sedangkan orang yang diperiksa catatannya dengan teliti adalah orang yang mendapat malapetaka. Barang siapa mendapat perhitungan yang mudah dan ringan, ia akan kembali kepada keluarganya yang mukmin dengan gembira sebagaimana firman Allah:\n\nAdapun orang yang kitabnya diberikan di tangan kanannya, maka dia berkata, "Ambillah, bacalah kitabku (ini). Sesungguhnya aku yakin bahwa (suatu saat) aku akan menerima perhitungan terhadap diriku." Maka orang itu berada dalam kehidupan yang diridai. (al-haqqah/69: 19-21)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 10, 'وَاَمَّا مَنْ اُوْتِيَ كِتٰبَهٗ وَرَاۤءَ ظَهْرِهٖۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan adapun orang yang catatannya diberikan dari sebelah belakang, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan bahwa golongan kedua adalah mereka yang banyak mengerjakan perbuatan maksiat, durhaka, dan tidak diridai Allah. Mereka akan menerima catatan perbuatan mereka dengan tangan kiri, dan dari belakang, kemudian mereka dimasukkan ke dalam neraka.\n\nDan adapun orang yang kitabnya diberikan di tangan kirinya, maka dia berkata, "Alangkah baiknya jika kitabku (ini) tidak diberikan kepadaku. Sehingga aku tidak mengetahui bagaimana perhitunganku. Wahai, kiranya (kematian) itulah yang menyudahi segala sesuatu. Hartaku sama sekali tidak berguna bagiku. Kekuasaanku telah hilang dariku." (al-haqqah/69: 25-29)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 11, 'فَسَوْفَ يَدْعُوْ ثُبُوْرًاۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'maka dia akan berteriak, “Celakalah aku!” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan bahwa golongan kedua adalah mereka yang banyak mengerjakan perbuatan maksiat, durhaka, dan tidak diridai Allah. Mereka akan menerima catatan perbuatan mereka dengan tangan kiri, dan dari belakang, kemudian mereka dimasukkan ke dalam neraka.\n\nDan adapun orang yang kitabnya diberikan di tangan kirinya, maka dia berkata, "Alangkah baiknya jika kitabku (ini) tidak diberikan kepadaku. Sehingga aku tidak mengetahui bagaimana perhitunganku. Wahai, kiranya (kematian) itulah yang menyudahi segala sesuatu. Hartaku sama sekali tidak berguna bagiku. Kekuasaanku telah hilang dariku." (al-haqqah/69: 25-29)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 12, 'وَّيَصْلٰى سَعِيْرًاۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan dia akan masuk ke dalam api yang menyala-nyala (neraka).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan bahwa golongan kedua adalah mereka yang banyak mengerjakan perbuatan maksiat, durhaka, dan tidak diridai Allah. Mereka akan menerima catatan perbuatan mereka dengan tangan kiri, dan dari belakang, kemudian mereka dimasukkan ke dalam neraka.\n\nDan adapun orang yang kitabnya diberikan di tangan kirinya, maka dia berkata, "Alangkah baiknya jika kitabku (ini) tidak diberikan kepadaku. Sehingga aku tidak mengetahui bagaimana perhitunganku. Wahai, kiranya (kematian) itulah yang menyudahi segala sesuatu. Hartaku sama sekali tidak berguna bagiku. Kekuasaanku telah hilang dariku." (al-haqqah/69: 25-29)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 13, 'اِنَّهٗ كَانَ فِيْٓ اَهْلِهٖ مَسْرُوْرًاۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, dia dahulu (di dunia) bergembira di kalangan keluarganya (yang sama-sama kafir). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menjelaskan bahwa ada dua hal yang menjadi sebab mengapa mereka menerima catatan amalnya dengan tangan kiri, yaitu: pertama, mereka berbuat sekehendak hatinya, mengerjakan kejahatan dan kemaksiatan dengan tidak memikirkan akibat buruk yang akan menimpa mereka di akhirat kelak.\n\nKedua, mereka menyangka bahwa mereka tidak akan kembali kepada Tuhannya dan tidak akan dibangkitkan kembali untuk dihisab dan menerima hasil perbuatan mereka di dunia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 14, 'اِنَّهٗ ظَنَّ اَنْ لَّنْ يَّحُوْرَ ۛ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sesungguhnya dia mengira bahwa dia tidak akan kembali (kepada Tuhannya). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menjelaskan bahwa ada dua hal yang menjadi sebab mengapa mereka menerima catatan amalnya dengan tangan kiri, yaitu: pertama, mereka berbuat sekehendak hatinya, mengerjakan kejahatan dan kemaksiatan dengan tidak memikirkan akibat buruk yang akan menimpa mereka di akhirat kelak.\n\nKedua, mereka menyangka bahwa mereka tidak akan kembali kepada Tuhannya dan tidak akan dibangkitkan kembali untuk dihisab dan menerima hasil perbuatan mereka di dunia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 15, 'بَلٰىۛ اِنَّ رَبَّهٗ كَانَ بِهٖ بَصِيْرًاۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Tidak demikian, sesungguhnya Tuhannya selalu melihatnya. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menegaskan bahwa mereka sesungguhnya akan kembali kepada-Nya dan akan menerima hasil perbuatan mereka di dunia. Orang yang saleh dan patuh mengerjakan perintah-Nya akan dimasukkan ke dalam surga, sedang orang yang durhaka dan banyak berbuat maksiat akan dimasukkan ke dalam neraka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 16, 'فَلَآ اُقْسِمُ بِالشَّفَقِۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka Aku bersumpah demi cahaya merah pada waktu senja, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah bersumpah dengan cahaya merah pada waktu senja, dengan malam dan apa-apa yang diselubunginya dan dengan bulan apabila jadi purnama bahwa sesungguhnya manusia melalui tahap demi tahap dalam kehidupan, dari setetes air mani sampai dilahirkan.\n\nKemudian melalui masa kanak-kanak, remaja dan dewasa sampai tua. Kemudian dari hidup sampai mati, lalu dibangkitkan kembali, hidup kembali di surga atau neraka setelah melalui ujian dan perhitungan yang sangat teliti.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 17, 'وَالَّيْلِ وَمَا وَسَقَۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'demi malam dan apa yang diselubunginya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah bersumpah dengan cahaya merah pada waktu senja, dengan malam dan apa-apa yang diselubunginya dan dengan bulan apabila jadi purnama bahwa sesungguhnya manusia melalui tahap demi tahap dalam kehidupan, dari setetes air mani sampai dilahirkan.\n\nKemudian melalui masa kanak-kanak, remaja dan dewasa sampai tua. Kemudian dari hidup sampai mati, lalu dibangkitkan kembali, hidup kembali di surga atau neraka setelah melalui ujian dan perhitungan yang sangat teliti.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 18, 'وَالْقَمَرِ اِذَا اتَّسَقَۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'demi bulan apabila jadi purnama,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah bersumpah dengan cahaya merah pada waktu senja, dengan malam dan apa-apa yang diselubunginya dan dengan bulan apabila jadi purnama bahwa sesungguhnya manusia melalui tahap demi tahap dalam kehidupan, dari setetes air mani sampai dilahirkan.\n\nKemudian melalui masa kanak-kanak, remaja dan dewasa sampai tua. Kemudian dari hidup sampai mati, lalu dibangkitkan kembali, hidup kembali di surga atau neraka setelah melalui ujian dan perhitungan yang sangat teliti.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 19, 'لَتَرْكَبُنَّ طَبَقًا عَنْ طَبَقٍۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sungguh, akan kamu jalani tingkat demi tingkat (dalam kehidupan).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah bersumpah dengan cahaya merah pada waktu senja, dengan malam dan apa-apa yang diselubunginya dan dengan bulan apabila jadi purnama bahwa sesungguhnya manusia melalui tahap demi tahap dalam kehidupan, dari setetes air mani sampai dilahirkan.\n\nKemudian melalui masa kanak-kanak, remaja dan dewasa sampai tua. Kemudian dari hidup sampai mati, lalu dibangkitkan kembali, hidup kembali di surga atau neraka setelah melalui ujian dan perhitungan yang sangat teliti.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 20 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 20, 'فَمَا لَهُمْ لَا يُؤْمِنُوْنَۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 20);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 20;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka mengapa mereka tidak mau beriman?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mencela sikap dan perbuatan mereka, "Mengapa mereka masih tidak mau beriman, sedangkan bukti telah nyata menunjukkan adanya hari kebangkitan itu?" Firman Allah:\n\nOrang-orang yang kafir mengira, bahwa mereka tidak akan dibangkitkan. Katakanlah (Muhammad), "Tidak demikian, demi Tuhanku, kamu pasti dibangkitkan, kemudian diberitakan semua yang telah kamu kerjakan." Dan yang demikian itu mudah bagi Allah. (at-Tagabun/64: 7)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 21 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 21, 'وَاِذَا قُرِئَ عَلَيْهِمُ الْقُرْاٰنُ لَا يَسْجُدُوْنَ ۗ ۩ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 21);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 21;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan apabila Al-Qur''an dibacakan kepada mereka, mereka tidak (mau) bersujud,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa mereka tidak mau mengakui bahwa Al-Qur''an itu kalam Ilahi yang harus dimuliakan dan dipatuhi serta mengakui bahwa sesungguhnya Nabi Muhammad saw utusan Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 22 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 22, 'بَلِ الَّذِيْنَ كَفَرُوْا يُكَذِّبُوْنَۖ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 22);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 22;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'bahkan orang-orang kafir itu mendustakan(nya).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa mereka tidak mau mengakui bahwa Al-Qur''an itu kalam Ilahi yang harus dimuliakan dan dipatuhi serta mengakui bahwa sesungguhnya Nabi Muhammad saw utusan Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 23 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 23, 'وَاللّٰهُ اَعْلَمُ بِمَا يُوْعُوْنَۖ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 23);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 23;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan Allah lebih mengetahui apa yang mereka sembunyikan (dalam hati mereka).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat berikut ini, Allah menerangkan sebab mereka tidak mau mengakuinya, yaitu:\n\n1.Mereka dengki kepada Nabi Muhammad atas kelebihan yang telah dikaruniakan Allah kepadanya.\n\n2.Mereka takut kehilangan pengaruh dan kedudukan sebagai pemimpin bangsanya.\n\n3.Mereka tidak mau mengganti kepercayaan yang telah dianut oleh nenek moyang mereka dengan kepercayaan yang lain. Allah mengetahui apa yang mereka sembunyikan dalam hati mereka. Oleh karena itu, Allah mengejek mereka dengan kata-kata, "Berilah kabar gembira kepada mereka dengan azab yang pedih di hari Kiamat nanti."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 24 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 24, 'فَبَشِّرْهُمْ بِعَذَابٍ اَلِيْمٍۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 24);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 24;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka sampaikanlah kepada mereka (ancaman) azab yang pedih,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat berikut ini, Allah menerangkan sebab mereka tidak mau mengakuinya, yaitu:\n\n1.Mereka dengki kepada Nabi Muhammad atas kelebihan yang telah dikaruniakan Allah kepadanya.\n\n2.Mereka takut kehilangan pengaruh dan kedudukan sebagai pemimpin bangsanya.\n\n3.Mereka tidak mau mengganti kepercayaan yang telah dianut oleh nenek moyang mereka dengan kepercayaan yang lain. Allah mengetahui apa yang mereka sembunyikan dalam hati mereka. Oleh karena itu, Allah mengejek mereka dengan kata-kata, "Berilah kabar gembira kepada mereka dengan azab yang pedih di hari Kiamat nanti."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 25 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 84, 25, 'اِلَّا الَّذِيْنَ اٰمَنُوْا وَعَمِلُوا الصّٰلِحٰتِ لَهُمْ اَجْرٌ غَيْرُ مَمْنُوْنٍ ࣖ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 84 AND ayah_number = 25);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 84 AND ayah_number = 25;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'kecuali orang-orang yang beriman dan mengerjakan kebajikan, mereka akan mendapat pahala yang tidak putus-putusnya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa orang-orang yang beriman kepada Allah dan Rasul-Nya, percaya kepada Al-Qur''an, serta mengerjakan ajarannya dengan sebaik-baiknya, akan mendapat ganjaran dari Allah yang tidak ada putus-putusnya, abadi selama-lamanya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

