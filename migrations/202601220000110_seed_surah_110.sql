-- Seed Surah 110 (An-Nasr) with 3 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/110.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (110, 'النصر', 'An-Nasr', 3, 'Makkiyah', 'Pertolongan')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 110, 1, 'اِذَا جَاۤءَ نَصْرُ اللّٰهِ وَالْفَتْحُۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 110 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 110 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Apabila telah datang pertolongan Allah dan kemenangan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah memerintahkan apa yang harus dilakukan Nabi Muhammad pada saat pembebasan Mekah, yaitu apabila ia telah melihat pertolongan Allah terhadap agama-Nya telah tiba, dengan kekalahan orang-orang musyrik dan kemenangan di pihak Nabi, dan melihat pula orang-orang masuk agama Allah beramai-ramai dan berduyun-duyun, bukan perseorangan sebagaimana halnya pada permulaan dakwah.\n\nOrang-orang Arab berkata, "Manakala Muhammad menang atas penduduk Mekah yang mana Allah telah selamatkan mereka dari pasukan bergajah, maka kalian tidak berdaya melawannya." Akhirnya mereka masuk Islam berduyun-duyun, berkelompok-kelompok dan satu kelompok 40 orang.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 110, 2, 'وَرَاَيْتَ النَّاسَ يَدْخُلُوْنَ فِيْ دِيْنِ اللّٰهِ اَفْوَاجًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 110 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 110 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan engkau melihat manusia berbondong-bondong masuk agama Allah,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah memerintahkan apa yang harus dilakukan Nabi Muhammad pada saat pembebasan Mekah, yaitu apabila ia telah melihat pertolongan Allah terhadap agama-Nya telah tiba, dengan kekalahan orang-orang musyrik dan kemenangan di pihak Nabi, dan melihat pula orang-orang masuk agama Allah beramai-ramai dan berduyun-duyun, bukan perseorangan sebagaimana halnya pada permulaan dakwah.\n\nOrang-orang Arab berkata, "Manakala Muhammad menang atas penduduk Mekah yang mana Allah telah selamatkan mereka dari pasukan bergajah, maka kalian tidak berdaya melawannya." Akhirnya mereka masuk Islam berduyun-duyun, berkelompok-kelompok dan satu kelompok 40 orang.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 110, 3, 'فَسَبِّحْ بِحَمْدِ رَبِّكَ وَاسْتَغْفِرْهُۗ اِنَّهٗ كَانَ تَوَّابًا ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 110 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 110 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'maka bertasbihlah dalam dengan Tuhanmu dan mohonlah ampunan kepada-Nya. Sungguh, Dia Maha Penerima tobat.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Bila yang demikian itu telah terjadi, Nabi diperintahkan untuk mengagungkan dan mensucikan Tuhannya dari hal-hal yang tidak layak bagi-Nya, seperti menganggap terlambat datangnya pertolongan dan mengira bahwa Tuhan tidak menepati janji-Nya menolong Nabi atas orang-orang kafir.\n\nMenyucikan Allah hendaknya dengan memuji-Nya atas nikmat-nikmat yang dianugerahkan-Nya dan mensyukuri segala kebaikan-kebaikan yang telah dilimpahkan-Nya dan menyanjung-Nya dengan sepantasnya. Bila Allah Yang Mahakuasa dan Mahabijaksana memberi kesempatan kepada orang-orang kafir, bukanlah berarti Dia telah menyia-nyiakan pahala orang-orang yang beramal baik.\n\nKemudian Nabi Muhammad dianjurkan untuk meminta ampun kepada Allah untuk dirinya dan sahabat-sahabatnya yang telah memperlihatkan kesedihan dan keputusasaan karena merasa pertolongan Allah terlambat datangnya. Bertobat dari keluh-kesah adalah dengan mempercayai penuh akan janji-janji Allah dan membersihkan jiwa dari pemikiran yang bukan-bukan bila menghadapi kesulitan. Hal ini walaupun berat untuk jiwa manusia biasa, tetapi ringan untuk Nabi Muhammad sebagai insan kamil (manusia sempurna). Oleh sebab itu, Allah menyuruh Nabi saw memohon ampunan-Nya.\n\nKeadaan ini terjadi pula pada para sahabat yang memiliki jiwa yang sempurna dan menerima tobat mereka, karena Allah selalu menerima tobat hamba-hamba-Nya. Allah mendidik hamba-hamba-Nya melalui bermacam-macam cobaan dan bila merasa tidak sanggup menghadapinya harus memohon bantuan-Nya serta yakin akan datangnya bantuan itu. Bila ia selalu melakukan yang demikian niscaya menjadi kuat dan sempurnalah jiwanya.\n\nMaksudnya, bila pertolongan telah tiba dan telah mencapai kemenangan serta manusia berbondong-bondong masuk Islam, hilanglah ketakutan dan hendaklah Nabi saw bertasbih menyucikan Tuhannya dan mensyukuri-Nya serta membersihkan jiwa dari pemikiran-pemikiran yang terjadi pada masa kesulitan. Dengan demikian, keluh-kesah dan rasa kecewa tidak lagi akan mempengaruhi jiwa orang-orang yang ikhlas selagi mereka memiliki keikhlasan dan berada dalam persesuaian kata dan cinta sama cinta.\n\nDengan turunnya Surah an-Nasr ini, Nabi memahami bahwa tugas risalahnya telah selesai dan selanjutnya ia hanya menunggu panggilan pulang ke rahmatullah. \n\nIbnu ''AbbAs berkata: "Ketika turun ayat Idha jaa nasrullahi wal fath, Rasulullah saw memanggil Fatimah, lalu berkata: "Kematian diriku sudah dekat." Fatimah pun menangis. Rasulullah saw berkata, "Jangan menangis, karea kamu adalah anggota pertama dari keluargaku yang akan menyusulku." Fatimah pun tertawa bahagia (mendengarnya). Para istri Nabi saw yang melihat hal itu berkata, "Wahai Fatimah, kami melihatmu menangis lalu tertawa." Fatimah berkata, "Rasulullah saw memberitahuku bahwa kematian dirinya telah dekat, maka aku menangis. Namun, beliau mengatakan, "Jangan menangis, karena kamu adalah anggota pertama dari keluargaku yang akan menyusulku." Maka aku pun tertawa bahagia. (Riwayat al- Darimi)\n\nIbnu ''Umar berkata, "Surah ini turun di Mina ketika Nabi mengerjakan Haji Wada'', sesudah itu turun firman Allah:\n\nPada hari ini telah Aku sempurnakan agamamu untukmu, dan telah Aku cukupkan nikmat-Ku bagimu, dan telah Aku ridai Islam sebagai agamamu. (al-Ma''idah/5: 3)\n\nNabi hidup hanya delapan puluh hari setelah turun ayat ini. Kemudian setelah itu, turun ayat Kalalah, dan Nabi hidup sesudahnya lima puluh hari. Setelah itu turun ayat:\n\nSungguh, telah datang kepadamu seorang rasul dari kaummu sendiri. (at-Taubah/9:128)\n\nMaka Nabi saw hidup sesudahnya tiga puluh lima hari. Kemudian turun firman Allah:\n\nDan takutlah pada hari (ketika) kamu semua dikembalikan kepada Allah. (al Baqarah/2: 281)\n\nMaka Nabi saw hidup sesudahnya hanya dua puluh satu hari saja.'
    )
    ON CONFLICT DO NOTHING;
END $$;

