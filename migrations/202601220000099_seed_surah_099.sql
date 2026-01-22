-- Seed Surah 99 (Az-Zalzalah) with 8 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/99.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (99, 'الزلزلة', 'Az-Zalzalah', 8, 'Makkiyah', 'Guncangan')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 99, 1, 'اِذَا زُلْزِلَتِ الْاَرْضُ زِلْزَالَهَاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 99 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 99 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Apabila bumi diguncangkan dengan guncangan yang dahsyat,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengungkapkan bahwa bumi bergeletar dan berguncang sedahsyat-dahsyatnya, sebagaimana diterangkan firman Allah dalam ayat lain:\n\nWahai manusia! Bertakwalah kepada Tuhanmu; sungguh, guncangan (hari) Kiamat itu adalah suatu (kejadian) yang sangat besar. (al-hajj/22: 1)\n\nApabila bumi diguncangkan sedahsyat-dahsyatnya. (al-Waqi''ah/56: 4).\n\nKeterangan ini menunjukkan tentang dahsyatnya keadaan ketika itu. Hal itu dimaksudkan untuk menarik perhatian orang-orang kafir agar memikirkan dan merenungkannya. Seakan-akan dikatakan kepada mereka bahwa apabila bumi sebagai benda padat bisa bergeletar dengan dahsyat pada hari itu, maka mengapa mereka sendiri tidak mau sadar dari kelalaian dengan meninggalkan kekafirannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 99, 2, 'وَاَخْرَجَتِ الْاَرْضُ اَثْقَالَهَاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 99 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 99 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan bumi telah mengeluarkan beban-beban berat (yang dikandung)nya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menyatakan bahwa pada hari terjadi kegun-cangan itu, karena dahsyatnya, bumi menghamburkan isi perutnya yang terpendam berupa logam, harta simpanan, dan mayat-mayat dari kubur. Dalam ayat lain, Allah berfirman:\n\nDan apabila bumi diratakan, dan memuntahkan apa yang ada di dalamnya dan menjadi kosong. (al-Insyiqaq/84: 3-4)\n\nContohnya, sebagaimana terjadi dengan letusan gunung Krakatau pada tahun 1883, gempa dan tsunami di Aceh pada tahun 2004, lumpur panas di Sidoarjo Jawa Timur sejak tahun 2006, dan lain-lain yang begitu dahsyat sehingga mengeluarkan lava dan isi perut bumi. Guncangan pada hari kiamat jauh lebih dahsyat lagi.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 99, 3, 'وَقَالَ الْاِنْسَانُ مَا لَهَاۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 99 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 99 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan manusia bertanya, “Apa yang terjadi pada bumi ini?”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengungkapkan bahwa orang-orang yang mengalami dan menyaksikan kejadian yang dahsyat dan membuat terperanjat orang-orang yang melihatnya, berkata, "Apa gerangan yang terjadi pada bumi. Ini belum pernah terjadi sebelumnya?" Dalam ayat lain, Allah berfirman:\n\nDan kamu melihat manusia dalam keadaan mabuk, padahal sebenarnya mereka tidak mabuk. (al-hajj/22: 2)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 99, 4, 'يَوْمَىِٕذٍ تُحَدِّثُ اَخْبَارَهَاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 99 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 99 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Pada hari itu bumi menyampaikan beritanya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menyatakan bahwa ketika terjadinya keguncangan yang dahsyat itu, saat bumi bergetar dan mengalami kehancuran serta kerusakan, seakan-akan ia menjelaskan kepada manusia bahwa kejadian yang belum pernah terjadi ini tidak menurut ketentuan yang berlaku bagi alam semesta dalam keadaan biasa.\n\nAllah menjelaskan bahwa sebab terjadinya keguncangan tersebut adalah atas perintah-Nya semata. Ketika bumi diperintahkan hancur, maka bumi akan hancur luluh.\n\nPada dasarnya ayat 1-5 di atas berkenaan dengan hari kiamat. Namun dari sekala lebih kecil ayat-ayat tersebut dapat ditafsirkan dengan proses geologi terjadinya gempa, yang sudah barang tentu besarannya jauh lebih kecil dibanding kejadian kiamat kelak.\n\nSeperti telah dijelaskan sebelumnya menurut kajian ilmiah bahwa lempengan-lempengan kulit bumi bergerak dan saling berinteraksi satu sama lain. Pada tempat-tempat saling bertemu, pertemuan lempengan ini menimbulkan gempa bumi. Sebagai contoh adalah Indonesia yang merupakan tempat pertemuan tiga lempeng: Eurasia, Pasifik, dan Indo-Australia. Bila dua lempeng bertemu, maka terjadi tekanan (beban) yang terus menerus, dan bila lempengan tidak tahan lagi menahan tekanan (beban) tersebut, maka lepaslah beban yang telah terkumpul ratusan tahun itu, dan dikeluarkan dalam bentuk gempa bumi.\n\nPada hari itu bumi ''menceritakan beritanya. Beban berat yang dikeluarkan dalam bentuk gempa bumi, merupakan satu proses geologi yang berjalan bertahun-tahun. Begitu seterusnya, setiap selesai beban dilepaskan, kembali proses pengumpulan beban terjadi. Proses geologi atau berita geologi ini dapat direkam baik secara alami maupun dengan menggunakan peralatan geofisika ataupun geodesi (lihat juga an-Naml/27: 88, ath-thur/52: 6). Telaah tentang gempa bumi dapat dilihat pula pada Surah an-Naba''/78: 17-20.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 99, 5, 'بِاَنَّ رَبَّكَ اَوْحٰى لَهَاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 99 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 99 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'karena sesungguhnya Tuhanmu telah memerintahkan (yang sedemikian itu) padanya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menyatakan bahwa ketika terjadinya keguncangan yang dahsyat itu, saat bumi bergetar dan mengalami kehancuran serta kerusakan, seakan-akan ia menjelaskan kepada manusia bahwa kejadian yang belum pernah terjadi ini tidak menurut ketentuan yang berlaku bagi alam semesta dalam keadaan biasa.\n\nAllah menjelaskan bahwa sebab terjadinya keguncangan tersebut adalah atas perintah-Nya semata. Ketika bumi diperintahkan hancur, maka bumi akan hancur luluh.\n\nPada dasarnya ayat 1-5 di atas berkenaan dengan hari kiamat. Namun dari sekala lebih kecil ayat-ayat tersebut dapat ditafsirkan dengan proses geologi terjadinya gempa, yang sudah barang tentu besarannya jauh lebih kecil dibanding kejadian kiamat kelak.\n\nSeperti telah dijelaskan sebelumnya menurut kajian ilmiah bahwa lempengan-lempengan kulit bumi bergerak dan saling berinteraksi satu sama lain. Pada tempat-tempat saling bertemu, pertemuan lempengan ini menimbulkan gempa bumi. Sebagai contoh adalah Indonesia yang merupakan tempat pertemuan tiga lempeng: Eurasia, Pasifik, dan Indo-Australia. Bila dua lempeng bertemu, maka terjadi tekanan (beban) yang terus menerus, dan bila lempengan tidak tahan lagi menahan tekanan (beban) tersebut, maka lepaslah beban yang telah terkumpul ratusan tahun itu, dan dikeluarkan dalam bentuk gempa bumi.\n\nPada hari itu bumi ''menceritakan beritanya. Beban berat yang dikeluarkan dalam bentuk gempa bumi, merupakan satu proses geologi yang berjalan bertahun-tahun. Begitu seterusnya, setiap selesai beban dilepaskan, kembali proses pengumpulan beban terjadi. Proses geologi atau berita geologi ini dapat direkam baik secara alami maupun dengan menggunakan peralatan geofisika ataupun geodesi (lihat juga an-Naml/27: 88, ath-thur/52: 6). Telaah tentang gempa bumi dapat dilihat pula pada Surah an-Naba''/78: 17-20.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 99, 6, 'يَوْمَىِٕذٍ يَّصْدُرُ النَّاسُ اَشْتَاتًا ەۙ لِّيُرَوْا اَعْمَالَهُمْۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 99 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 99 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Pada hari itu manusia keluar dari kuburnya dalam keadaan berkelompok-kelompok, untuk diperlihatkan kepada mereka (balasan) semua perbuatannya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa pada hari terjadinya kerusakan dan kehancuran bagi bumi serta terjadinya alam baru dan hidup baru, muncullah manusia dalam keadaan yang berbeda-beda dan berkelompok. Orang-orang yang beramal baik tidak sama dengan orang-orang jahat. Orang-orang yang taat tidak sama dengan orang yang berbuat maksiat. Mereka muncul untuk diperlihatkan Allah kepada mereka apa yang telah mereka lakukan dan untuk memetik hasil usaha mereka selama hidup di dunia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 99, 7, 'فَمَنْ يَّعْمَلْ مِثْقَالَ ذَرَّةٍ خَيْرًا يَّرَهٗۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 99 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 99 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka barangsiapa mengerjakan kebaikan seberat zarrah, niscaya dia akan melihat (balasan)nya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah merincikan balasan amal masing-masing. Barang siapa beramal baik, walaupun hanya seberat atom niscaya akan diterima balasannya, dan begitu pula yang beramal jahat walaupun hanya seberat atom akan merasakan balasannya. Amal kebajikan orang-orang kafir tidak dapat menolong dan melepaskannya dari siksa karena kekafirannya. Mereka akan tetap sengsara selama-lamanya di dalam neraka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 99, 8, 'وَمَنْ يَّعْمَلْ مِثْقَالَ ذَرَّةٍ شَرًّا يَّرَهٗ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 99 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 99 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan barangsiapa mengerjakan kejahatan seberat zarrah, niscaya dia akan melihat (balasan)nya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah merincikan balasan amal masing-masing. Barang siapa beramal baik, walaupun hanya seberat atom niscaya akan diterima balasannya, dan begitu pula yang beramal jahat walaupun hanya seberat atom akan merasakan balasannya. Amal kebajikan orang-orang kafir tidak dapat menolong dan melepaskannya dari siksa karena kekafirannya. Mereka akan tetap sengsara selama-lamanya di dalam neraka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

