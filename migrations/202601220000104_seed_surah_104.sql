-- Seed Surah 104 (Al-Humazah) with 9 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/104.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (104, 'الهمزة', 'Al-Humazah', 9, 'Makkiyah', 'Pengumpat')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 104, 1, 'وَيْلٌ لِّكُلِّ هُمَزَةٍ لُّمَزَةٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 104 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 104 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Celakalah bagi setiap pengumpat dan pencela,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengancam bahwa kemurkaan dan azab-Nya akan ditimpakan kepada setiap orang yang mengumpat, mencela, dan menyakiti mereka baik di hadapan maupun di belakang mereka. Firman Allah:\n\nWahai orang-orang yang beriman! Jauhilah banyak dari prasangka, sesungguhnya sebagian prasangka itu dosa dan janganlah kamu mencari-cari kesalahan orang lain dan janganlah ada di antara kamu yang menggunjing sebagian yang lain. Apakah ada di antara kamu yang suka memakan daging saudaranya yang sudah mati? Tentu kamu merasa jijik. Dan bertakwalah kepada Allah, sesungguhnya Allah Maha Penerima tobat, Maha Penyayang. (al-hujurat/49: 12)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 104, 2, ' ۨالَّذِيْ جَمَعَ مَالًا وَّعَدَّدَهٗۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 104 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 104 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang mengumpulkan harta dan menghitung-hitungnya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa orang yang menimbun harta juga diancam neraka karena memperkaya diri sendiri serta selalu menghitung-hitung harta kekayaannya. Hal itu ia lakukan karena sangat cinta dan senangnya kepada harta seakan-akan tidak ada kebahagiaan dan kemuliaan dalam hidup kecuali dengan harta. Bila ia menoleh kepada hartanya yang banyak itu, ia merasakan bahwa kedudukannya sudah tinggi dari orang-orang sekelilingnya.\n\nDia tidak merasa khawatir akan ditimpa musibah karena mencerca dan merobek-robek kehormatan orang lain. Karena kecongkakannya, ia lupa dan tidak sadar bahwa maut selalu mengintainya, tidak memikirkan apa yang akan terjadi sesudah mati, dan tidak pula merenungkan apa-apa yang akan terjadi atas dirinya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 104, 3, 'يَحْسَبُ اَنَّ مَالَهٗٓ اَخْلَدَهٗۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 104 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 104 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dia (manusia) mengira bahwa hartanya itu dapat mengekalkannya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian Allah menyatakan kesalahan anggapan pengumpat dan pencerca bahwa harta yang dimilikinya itu menjaminnya akan tetap hidup di dunia selamanya. Oleh karena itu, tindakannya sama dengan tindakan orang yang akan hidup selama-lamanya dan bila ia mati tidak akan hidup kembali untuk menerima balasan atas kejahatannya selama hidup di dunia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 104, 4, 'كَلَّا لَيُنْۢبَذَنَّ فِى الْحُطَمَةِۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 104 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 104 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sekali-kali tidak! Pasti dia akan dilemparkan ke dalam (neraka) Hutamah.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sesudah mengancam orang-orang yang bersifat demikian dengan siksaan yang pedih, Allah menyebutkan pula sebab yang membuat mereka mengerjakan sifat-sifat yang terkutuk itu. Penyebabnya adalah anggapan mereka bahwa semua harta yang dimiliki dapat menolong mereka dalam menghadapi kesulitan-kesulitan yang dihadapi. Ancaman dalam bentuk pertanyaan, "Siapakah yang menyangka bahwa hartanya itu dapat menjamin dirinya dari mati?" Allah menjawab, "Tidak! Sekali-kali tidak bahkan dia akan dilemparkan ke dalam neraka Huthamah, tidak ada yang memperhatikannya dan tidak pula yang mempedulikan."\n\n''Ali bin Abi thalib pernah memberi nasihat kepada Kumail bahwa orang-orang penimbun harta akan binasa, padahal mereka masih hidup, sedangkan para ulama akan kekal abadi meskipun jasad mereka sudah hilang, karena sifat-sifat keutamaan mereka tetap dikenang dalam hati. Maksudnya, penimbunan harta dikutuk, dicela, dan dibenci karena manusia tidak mendapat apa-apa dari harta mereka. Sedang para sarjana dan ulama terus-menerus terpuji selama terdapat di bumi orang-orang yang mengambil manfaat dari ilmu mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 104, 5, 'وَمَآ اَدْرٰىكَ مَا الْحُطَمَةُ ۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 104 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 104 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan tahukah kamu apakah (neraka) Hutamah itu?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menggambarkan kedahsyatan neraka Huthamah dalam bentuk pertanyaan, "Tahukah engkau apa Huthamah?" Allah menjelaskan sendiri bahwa Huthamah adalah api yang disediakan-Nya untuk menyiksa orang-orang yang durhaka dan berdosa. Tidak ada yang mampu mengetahui apa hakikatnya kecuali Allah penciptanya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 104, 6, 'نَارُ اللّٰهِ الْمُوْقَدَةُۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 104 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 104 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Yaitu) api  (azab) Allah yang dinyalakan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menggambarkan kedahsyatan neraka Huthamah dalam bentuk pertanyaan, "Tahukah engkau apa Huthamah?" Allah menjelaskan sendiri bahwa Huthamah adalah api yang disediakan-Nya untuk menyiksa orang-orang yang durhaka dan berdosa. Tidak ada yang mampu mengetahui apa hakikatnya kecuali Allah penciptanya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 104, 7, 'الَّتِيْ تَطَّلِعُ عَلَى الْاَفْـِٕدَةِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 104 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 104 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang (membakar) sampai ke hati.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah lalu menyatakan bahwa api yang menyala-nyala itu berbeda dengan api dunia. Ia menjilat dan naik sampai ke hulu hati, kemudian masuk ke dalam rongga perut sampai ke dada dan membakar hati. Hati adalah yang merasa paling sakit dari anggota-anggota badan lainnya. Apabila api sampai membakar hati, berarti siksa yang dirasakannya sudah sampai ke puncaknya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 104, 8, 'اِنَّهَا عَلَيْهِمْ مُّؤْصَدَةٌۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 104 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 104 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, api itu ditutup rapat atas (diri) mereka,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengungkapkan bahwa api tersebut berlapis-lapis mengelilingi mereka. Mereka tidak dikeluarkan daripadanya dan tidak pula mampu keluar sendiri. Dalam ayat lain, Allah berfirman:\n\nSetiap kali mereka hendak keluar darinya (neraka) karena tersiksa, mereka dikembalikan (lagi) ke dalamnya. (al-hajj/22: 22)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 104, 9, 'فِيْ عَمَدٍ مُّمَدَّدَةٍ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 104 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 104 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(sedang mereka itu) diikat pada tiang-tiang yang panjang.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menjelaskan melalui ayat ini keadaan orang-orang penghuni neraka Huthamah. Menurut Muqatil, pintu-pintu neraka itu ditutup rapat, sedangkan para penghuninya diikat pada tiang-tiang besi. Pintu-pintu itu tidak pernah dibuka dan di sana penuh dengan segala macam penderitaan. Tujuannya adalah untuk menjadikan mereka putus asa karena tidak dapat keluar dari neraka Huthamah itu. Semoga Allah menyelamatkan kita dari kemurkaan-Nya dan memelihara kita dari kedahsyatan api neraka dengan anugerah dan karunia-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

