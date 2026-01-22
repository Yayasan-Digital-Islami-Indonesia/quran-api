-- Seed Surah 77 (Al-Mursalat) with 50 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/77.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (77, 'المرسلٰت', 'Al-Mursalat', 50, 'Makkiyah', 'Malaikat Yang Diutus')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 1, 'وَالْمُرْسَلٰتِ عُرْفًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demi (malaikat-malaikat) yang diutus untuk membawa kebaikan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah bersumpah dengan malaikat-malaikat yang menyebarkan kebaikan. Al-Mursalat (malaikat-malaikat yang diutus) adalah para malaikat yang bertugas untuk menyampaikan nikmat atau karunia Ilahi kepada suatu kaum atau mendatangkan siksaan kepada kelompok lain yang pantas menerimanya. Sebagian ulama mengartikan al-mursalat itu dengan angin yang bertiup terus-menerus ke segala arah atas perintah Tuhan untuk menyebarkan rahmat dan nikmat ke dunia ini.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 2, 'فَالْعٰصِفٰتِ عَصْفًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan (malaikat-malaikat) yang terbang dengan kencangnya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah juga bersumpah dengan angin yang bertiup dengan kencang. Ada pula yang mengartikan al-''asifat dengan malaikat-malaikat yang menjauhkan diri dari kebatilan sebagaimana halnya angin kencang yang berhembus meniup onggokan tanah atau debu di atas batu. Yang lain menafsirkannya dengan angin yang menyebarkan air hujan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 3, 'وَّالنّٰشِرٰتِ نَشْرًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan (malaikat-malaikat) yang menyebarkan (rahmat Allah) dengan seluas-luasnya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah bersumpah dengan malaikat-malaikat yang menyebarkan rahmat-Nya seluas-luasnya. Terdapat berbagai macam penafsiran tentang kata an-nasyirat di sini. Ada yang mengartikannya dengan malaikat yang menebarkan maut kepada orang yang ditetapkan kematiannya tanpa diketahui sedikit pun. Ada pula yang menafsirkannya dengan malaikat yang menebarkan dan meratakan syariat-syariat Allah kepada sekalian nabi dan rasul-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 4, 'فَالْفٰرِقٰتِ فَرْقًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan (malaikat-malaikat) yang membedakan (antara yang baik dan yang buruk) dengan sejelas-jelasnya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bersumpah pula dengan para malaikat yang membedakan antara yang hak dengan yang batil dengan sejelas-jelasnya, membedakan antara petunjuk dan kesesatan.\n\nSebagian mufasir mengartikan al-fariqat dengan angin yang dapat membedakan mana yang membawa rahmat dan mana yang bertugas merusak manusia banyak. Dengan kata lain, angin pembawa rahmat dan angin pembawa bencana.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 5, 'فَالْمُلْقِيٰتِ ذِكْرًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan (malaikat-malaikat) yang menyampaikan wahyu,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah bersumpah dengan malaikat yang bertugas membawa wahyu kepada para nabi dan rasul. Akan tetapi, seperti pada ayat-ayat sebelumnya, ada yang mengartikan al-mulqiyat ini dengan angin yang menurunkan peringatan akan bencana Allah kepada manusia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 6, 'عُذْرًا اَوْ نُذْرًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'untuk menolak alasan-alasan atau memberi peringatan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini ditegaskan bahwa kedatangan wahyu kepada para nabi yang dibawa oleh malaikat adalah untuk menyampaikan alasan guna membantah ketidakpercayaan orang musyrik kepada adanya hari kebangkitan, dan untuk mengancam mereka dengan azab yang pedih bila mereka membangkang perintah Tuhan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 7, 'اِنَّمَا تُوْعَدُوْنَ لَوَاقِعٌۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, apa yang dijanjikan kepadamu pasti terjadi.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah bersumpah dengan beberapa macam makhluk-Nya di atas, maka dalam ayat ini, Allah menegaskan bahwa sesungguhnya apa yang telah dijanjikan kepada manusia itu pasti akan terjadi. Yang dijanjikan itu adalah datangnya hari kebangkitan, terjadinya kiamat, dihidupkannya kembali segala makhluk yang sudah mati sejak dahulu, sekarang, hingga yang akan datang dan dikumpulkan di Padang Mahsyar. Semuanya itu menurut penegasan ayat ini pasti akan terjadi!'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 8, 'فَاِذَا النُّجُوْمُ طُمِسَتْۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka apabila bintang-bintang dihapuskan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa pada waktu kedatangan hari Kiamat itu, cahaya bintang-bintang telah dihilangkan karena sumbernya telah berantakan, sebagaimana tersebut dalam ayat lain:\n\nDan apabila bintang-bintang berjatuhan. (at-Takwir/81: 2)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 9, 'وَاِذَا السَّمَاۤءُ فُرِجَتْۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan apabila langit terbelah,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dikatakan pula bila langit pecah hancur berantakan berkeping-keping karena terjadinya guncangan gempa yang sangat dahsyat akibat benda-benda langit beradu sesamanya. Demikianlah beberapa ayat lain menceritakan hal yang sama, yakni:\n\nDan (ingatlah) pada hari (ketika) langit pecah mengeluarkan kabut putih dan para malaikat diturunkan (secara) bergelombang. (al-Furqan/25: 25)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 10, 'وَاِذَا الْجِبَالُ نُسِفَتْۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan apabila gunung-gunung dihancurkan menjadi debu,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menyebutkan bahwa gunung-gunung dihancurkan menjadi debu. Dalam ayat lain disebutkan kedatangan hari Kiamat menyebabkan gunung-gunung beterbangan bagaikan kapas atau bulu yang diterbangkan angin atau dihancurkan sehancur-hancurnya. Firman Allah: \n\nDan mereka bertanya kepadamu (Muhammad) tentang gunung-gunung, maka katakanlah, "Tuhanku akan menghancurkannya (pada hari Kiamat) sehancur-hancurnya." (thaha/20: 105)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 11, 'وَاِذَا الرُّسُلُ اُقِّتَتْۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan apabila rasul-rasul telah ditetapkan waktunya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini ditegaskan bahwa dengan kedatangan hari Kiamat, para nabi dan rasul dikumpulkan bersama-sama umat masing-masing. Tujuannya agar nabi dan rasul itu diberi kesempatan untuk mempertanggungjawabkan misi kenabian dan kerasulan mereka di hadapan Allah serta umatnya sebagai saksi. \n\nDan bagaimanakah (keadaan orang kafir nanti), jika Kami mendatangkan seorang saksi (Rasul) dari setiap umat dan Kami mendatangkan engkau (Muhammad) sebagai saksi atas mereka. (an-Nisa''/4: 41)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 12, 'لِاَيِّ يَوْمٍ اُجِّلَتْۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Niscaya dikatakan kepada mereka), “Sampai hari apakah ditangguhkan (azab orang-orang kafir itu)?”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menegaskan bahwa sampai kapankah urusan umat dengan rasul mereka ditangguhkan, sehingga yang kafir harus diazab atau mendapatkan kehinaan, dan sebaliknya yang beriman memperoleh kenikmatan dan pemeliharaan dari Allah? Ayat ini merupakan ancaman betapa hebatnya masalah-masalah yang dihadapi umat di hari itu, dan betapa beratnya tanggung jawab manusia di hadapan Allah kelak.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 13, 'لِيَوْمِ الْفَصْلِۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sampai hari keputusan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian Allah menerangkan bahwa pada hari yang dijanjikan itu Dia menyelesaikan segala perkara yang terjadi di antara sesama makhluk. Pada hari itulah tegaknya Mahkamah Ilahi yang mengadili segala perkara dengan seadil-adilnya. Itulah hari yang disebut Yaumul-Fasl (hari pemisah).'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 14, 'وَمَآ اَدْرٰىكَ مَا يَوْمُ الْفَصْلِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan tahukah kamu apakah hari ke-putusan itu?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menunjukkan betapa dahsyatnya hari itu dalam bentuk pertanyaan kepada Nabi Muhammad, "Tahukah engkau apakah hari pemisah itu?" Apakah hari saat umat dan rasul mereka masing-masing dikumpulkan?'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 15, 'وَيْلٌ يَّوْمَىِٕذٍ لِّلْمُكَذِّبِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Celakalah pada hari itu, bagi mereka yang mendustakan (kebenaran).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian Allah sendiri menjelaskan jawaban dari pertanyaan yang disebutkan dalam ayat di atas. Pada hari itu azab dan kehinaan menimpa orang-orang yang mendustakan Allah dan Rasul serta kitab suci yang diturunkan-Nya. Azab akan dijatuhkan kepada manusia yang suka mendustakan apa yang telah disampaikan dan diceritakan para rasul.\n\nSemua orang kafir masih ragu terhadap semua yang ditegaskan Allah. Akan tetapi, Allah tidak akan menyalahi janji-Nya. Ayat lain menegaskan:\n\n(Yaitu) pada hari (ketika) bumi diganti dengan bumi yang lain dan (demikian pula) langit, dan mereka (manusia) berkumpul (di Padang Mahsyar) menghadap Allah Yang Maha Esa, Mahaperkasa. (Ibrahim/14:: 48)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 16, 'اَلَمْ نُهْلِكِ الْاَوَّلِيْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bukankah telah Kami binasakan orang-orang yang dahulu?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini dimulai dengan pertanyaan Allah, "Apakah Kami tidak membinasakan orang-orang yang telah mendustakan rasul-Nya sebelum kamu?" Sejarah para nabi dan rasul bersama kaumnya mencatat bahwa hampir setiap bangsa yang telah mendurhakai Allah dan rasul-Nya telah dibinasakan dengan berbagai macam azab yang satu dengan yang lainnya berbeda.\n\nTerkadang Allah menghancurkan mereka dengan banjir seperti nasib yang telah diderita oleh umat Nabi Nuh, ketika negeri mereka ditenggelamkan Allah dengan air bah. Ada yang ditelan binasa oleh bumi setelah negeri itu dilanda oleh gempa yang sangat hebat, seperti halnya umat Nabi Lut. Ada pula yang diserang angin kencang selama 8 hari 7 malam, yang menyebabkan seluruh penduduknya tewas, kecuali orang yang beriman, yakni umat Nabi Saleh. Begitulah seterusnya.\n\nPertanyaan Allah yang demikian mengandung suatu peringatan halus agar manusia yang masih kafir itu hendaknya mawas diri, sebab bagaimana pun juga sunatullah peraturan Allah yang berlaku tidak akan diubah. Dalam hal ini, siapa yang kafir baik dahulu maupun sekarang atau pada masa yang akan datang, tetap akan merasakan siksaan dari-Nya. Oleh karena itu, hendaklah manusia sadar sebelum datang penyesalan yang tiada berguna.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 17, 'ثُمَّ نُتْبِعُهُمُ الْاٰخِرِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Lalu Kami susulkan (azab Kami terhadap) orang-orang yang datang kemudian.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menyatakan bahwa azab Allah yang menimpa bangsa-bangsa dahulu kala itu silih berganti datangnya. Umat yang satu binasa, ada umat lain yang serupa. Pada saatnya mereka akan binasa pula bila tidak mau belajar dari sejarah nenek moyang mereka yang mendurhakai Allah dan rasul-Nya.\n\nDengan penurunan Al-Qur''an, Allah memperingatkan orang Mekah yang bersikap menantang dan mendustakan Nabi Muhammad dan juga kepada umat yang hidup sesudah beliau pada masa kini dan akan datang. Hendaklah umat manusia selalu belajar dari sejarah, karena sejarah itu akan datang mengulang dirinya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 18, 'كَذٰلِكَ نَفْعَلُ بِالْمُجْرِمِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demikianlah Kami perlakukan orang-orang yang berdosa.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah sekali lagi menegaskan bahwa apa yang telah diperbuat-Nya terhadap umat dahulu akan sama saja dengan apa yang dilakukan-Nya terhadap umat sekarang. Sebab sunnah-Nya sejak dahulu sampai sekarang tetap sama, tidak akan berubah sedikit pun. Begitulah Dia telah menghancurkan orang-orang yang berdosa akibat perbuatan dan sikap mereka yang mendustai-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 19, 'وَيْلٌ يَّوْمَىِٕذٍ لِّلْمُكَذِّبِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Celakalah pada hari itu, bagi mereka yang mendustakan (kebenaran).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini berisi kecaman Allah terhadap orang-orang yang mendustakan-Nya serta para nabi dan rasul-Nya dengan kecaman "celakalah orang yang mendustakan".\n\nPengulangan sumpah dan kecaman yang terdapat dalam Surah al-Mursalat ini, di samping dimaksudkan untuk menegaskan arti (ta''kid), juga mengandung pengertian lain, yakni bahwa kecaman tersebut tidak hanya diberlakukan di akhirat, melainkan juga diperlihatkan-Nya di dunia ini.\n\nImam al-Qurthubi mengatakan kata wail diulang-ulang dalam surah ini untuk menunjukkan bahwa untuk masing-masing bangsa yang mendustakan Allah, diberikan siksaan yang berlainan dengan apa yang diterima oleh bangsa lain sebelumnya. Masing-masing umat nabi dahulu kala yang bersikap membangkang telah menerima siksaan Ilahi yang berlainan satu dengan lainnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 20 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 20, 'اَلَمْ نَخْلُقْكُّمْ مِّنْ مَّاۤءٍ مَّهِيْنٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 20);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 20;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bukankah Kami menciptakan kamu dari air yang hina (mani),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini, Allah mengingatkan kembali dengan suatu pertanyaan, "Tidakkah manusia itu dijadikan dari setetes air yang hina?" Air yang hina yang disebut mani ini tersimpan dalam tempat yang kokoh yakni rahim ibu. Di situlah mani sang ayah dengan sel telur ibu bercampur dan mengikuti proses kejadian tahap demi tahap yang diatur dengan sangat rapi dan teliti oleh yang Mahakuasa. Setelah cukup waktu yang ditetapkan, maka lahirlah calon manusia itu dalam bentuk bayi.\n\nKetiga ayat di atas kembali mengulang mengenai peran air mani dalam perkembangan manusia. Namun, dalam ayat ini disebutkan rahim secara khusus. Untuk itu, tekanan interpretasi yang berkait dengan ayat ini adalah rahim.\n\nMenurut sains, rahim atau uterus adalah tempat dimana embrio dan janin tumbuh dan berkembang, sebelum dilahirkan dalam bentuk anak manusia yang utuh. Rahim disebutkan sebagai tempat yang kokoh dan aman karena beberapa hal, yaitu:\n\n1.Letaknya terlindung karena terletak di antara tulang panggul. Ia ''dipegang secara kuat di kedua sisinya oleh otot-otot, yang pada saat bersamaan memberikan kebebasan kepada rahim untuk bergerak dan tumbuh sampai beberapa ratus kali ukuran sebelumnya, pada saat puncak kandungan sebelum melahirkan.\n\n2.Pada saat kehamilan, dihasilkan suatu cairan yang dinamakan progesteron, atau biasa disebut sebagai hormon kehamilan, yang berfungsi untuk merendahkan frekuensi kontraksi rahim.\n\n3.Embrio yang ada di dalam rahim dikelilingi oleh beberapa lapisan membran yang menghasilkan suatu cairan dimana embrio itu berenang di dalamnya. Hal ini menjaga embrio dari kemungkinan rusak akibat benturan dari luar.\n\nAda satu ayat lain yang mengindikasikan tahapan-tahapan pengembangan dan keamanan yang ditawarkan rahim kepada janin:\n\n... Dia menjadikan kamu dalam perut ibumu kejadian demi kejadian dalam tiga kegelapan. Yang (berbuat) demikian itu adalah Allah, Tuhan kamu, Tuhan yang memiliki kerajaan. Tidak ada tuhan selain Dia; maka mengapa kamu dapat dipalingkan? (az-Zumar/39: 6)\n\nMengenai tahapan-tahapan sudah kita bahas di depan. Sedangkan mengenai keamanan janin di dalam rahim, para ahli menemukan adanya tiga lapis membran (di dalam ayat di atas disebutkan dengan ''tiga kegelapan) yang dapat mengamankan janin selama berada di dalam rahim, yaitu:\n\n1.Lapisan membran amnion yang mengandung cairan sehingga janin dalam keadaan berenang. Kondisi demikian ini melindungi janin apabila ada benturan dari luar. Di samping itu, posisi berenang ini memberikan kesempatan kepada janin dalam memposisikan diri saat akan dilahirkan.\n\n2.Lapisan membran chorion\n\n3.Lapisan membran decidua\n\nBeberapa peneliti menghubungkan tiga lapisan kegelapan dalam ayat di atas dengan lapisan membran amniotik yang mengelilingi rahim, dinding rahim itu sendiri, dan dinding abdomen di bagian perut.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 21 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 21, 'فَجَعَلْنٰهُ فِيْ قَرَارٍ مَّكِيْنٍ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 21);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 21;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'kemudian Kami letakkan ia dalam tempat yang kokoh (rahim),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini, Allah mengingatkan kembali dengan suatu pertanyaan, "Tidakkah manusia itu dijadikan dari setetes air yang hina?" Air yang hina yang disebut mani ini tersimpan dalam tempat yang kokoh yakni rahim ibu. Di situlah mani sang ayah dengan sel telur ibu bercampur dan mengikuti proses kejadian tahap demi tahap yang diatur dengan sangat rapi dan teliti oleh yang Mahakuasa. Setelah cukup waktu yang ditetapkan, maka lahirlah calon manusia itu dalam bentuk bayi.\n\nKetiga ayat di atas kembali mengulang mengenai peran air mani dalam perkembangan manusia. Namun, dalam ayat ini disebutkan rahim secara khusus. Untuk itu, tekanan interpretasi yang berkait dengan ayat ini adalah rahim.\n\nMenurut sains, rahim atau uterus adalah tempat dimana embrio dan janin tumbuh dan berkembang, sebelum dilahirkan dalam bentuk anak manusia yang utuh. Rahim disebutkan sebagai tempat yang kokoh dan aman karena beberapa hal, yaitu:\n\n1.Letaknya terlindung karena terletak di antara tulang panggul. Ia ''dipegang secara kuat di kedua sisinya oleh otot-otot, yang pada saat bersamaan memberikan kebebasan kepada rahim untuk bergerak dan tumbuh sampai beberapa ratus kali ukuran sebelumnya, pada saat puncak kandungan sebelum melahirkan.\n\n2.Pada saat kehamilan, dihasilkan suatu cairan yang dinamakan progesteron, atau biasa disebut sebagai hormon kehamilan, yang berfungsi untuk merendahkan frekuensi kontraksi rahim.\n\n3.Embrio yang ada di dalam rahim dikelilingi oleh beberapa lapisan membran yang menghasilkan suatu cairan dimana embrio itu berenang di dalamnya. Hal ini menjaga embrio dari kemungkinan rusak akibat benturan dari luar.\n\nAda satu ayat lain yang mengindikasikan tahapan-tahapan pengembangan dan keamanan yang ditawarkan rahim kepada janin:\n\n... Dia menjadikan kamu dalam perut ibumu kejadian demi kejadian dalam tiga kegelapan. Yang (berbuat) demikian itu adalah Allah, Tuhan kamu, Tuhan yang memiliki kerajaan. Tidak ada tuhan selain Dia; maka mengapa kamu dapat dipalingkan? (az-Zumar/39: 6)\n\nMengenai tahapan-tahapan sudah kita bahas di depan. Sedangkan mengenai keamanan janin di dalam rahim, para ahli menemukan adanya tiga lapis membran (di dalam ayat di atas disebutkan dengan ''tiga kegelapan) yang dapat mengamankan janin selama berada di dalam rahim, yaitu:\n\n1.Lapisan membran amnion yang mengandung cairan sehingga janin dalam keadaan berenang. Kondisi demikian ini melindungi janin apabila ada benturan dari luar. Di samping itu, posisi berenang ini memberikan kesempatan kepada janin dalam memposisikan diri saat akan dilahirkan.\n\n2.Lapisan membran chorion\n\n3.Lapisan membran decidua\n\nBeberapa peneliti menghubungkan tiga lapisan kegelapan dalam ayat di atas dengan lapisan membran amniotik yang mengelilingi rahim, dinding rahim itu sendiri, dan dinding abdomen di bagian perut.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 22 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 22, 'اِلٰى قَدَرٍ مَّعْلُوْمٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 22);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 22;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sampai waktu yang ditentukan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini, Allah mengingatkan kembali dengan suatu pertanyaan, "Tidakkah manusia itu dijadikan dari setetes air yang hina?" Air yang hina yang disebut mani ini tersimpan dalam tempat yang kokoh yakni rahim ibu. Di situlah mani sang ayah dengan sel telur ibu bercampur dan mengikuti proses kejadian tahap demi tahap yang diatur dengan sangat rapi dan teliti oleh yang Mahakuasa. Setelah cukup waktu yang ditetapkan, maka lahirlah calon manusia itu dalam bentuk bayi.\n\nKetiga ayat di atas kembali mengulang mengenai peran air mani dalam perkembangan manusia. Namun, dalam ayat ini disebutkan rahim secara khusus. Untuk itu, tekanan interpretasi yang berkait dengan ayat ini adalah rahim.\n\nMenurut sains, rahim atau uterus adalah tempat dimana embrio dan janin tumbuh dan berkembang, sebelum dilahirkan dalam bentuk anak manusia yang utuh. Rahim disebutkan sebagai tempat yang kokoh dan aman karena beberapa hal, yaitu:\n\n1.Letaknya terlindung karena terletak di antara tulang panggul. Ia ''dipegang secara kuat di kedua sisinya oleh otot-otot, yang pada saat bersamaan memberikan kebebasan kepada rahim untuk bergerak dan tumbuh sampai beberapa ratus kali ukuran sebelumnya, pada saat puncak kandungan sebelum melahirkan.\n\n2.Pada saat kehamilan, dihasilkan suatu cairan yang dinamakan progesteron, atau biasa disebut sebagai hormon kehamilan, yang berfungsi untuk merendahkan frekuensi kontraksi rahim.\n\n3.Embrio yang ada di dalam rahim dikelilingi oleh beberapa lapisan membran yang menghasilkan suatu cairan dimana embrio itu berenang di dalamnya. Hal ini menjaga embrio dari kemungkinan rusak akibat benturan dari luar.\n\nAda satu ayat lain yang mengindikasikan tahapan-tahapan pengembangan dan keamanan yang ditawarkan rahim kepada janin:\n\n... Dia menjadikan kamu dalam perut ibumu kejadian demi kejadian dalam tiga kegelapan. Yang (berbuat) demikian itu adalah Allah, Tuhan kamu, Tuhan yang memiliki kerajaan. Tidak ada tuhan selain Dia; maka mengapa kamu dapat dipalingkan? (az-Zumar/39: 6)\n\nMengenai tahapan-tahapan sudah kita bahas di depan. Sedangkan mengenai keamanan janin di dalam rahim, para ahli menemukan adanya tiga lapis membran (di dalam ayat di atas disebutkan dengan ''tiga kegelapan) yang dapat mengamankan janin selama berada di dalam rahim, yaitu:\n\n1.Lapisan membran amnion yang mengandung cairan sehingga janin dalam keadaan berenang. Kondisi demikian ini melindungi janin apabila ada benturan dari luar. Di samping itu, posisi berenang ini memberikan kesempatan kepada janin dalam memposisikan diri saat akan dilahirkan.\n\n2.Lapisan membran chorion\n\n3.Lapisan membran decidua\n\nBeberapa peneliti menghubungkan tiga lapisan kegelapan dalam ayat di atas dengan lapisan membran amniotik yang mengelilingi rahim, dinding rahim itu sendiri, dan dinding abdomen di bagian perut.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 23 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 23, 'فَقَدَرْنَاۖ فَنِعْمَ الْقٰدِرُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 23);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 23;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'lalu Kami tentukan (bentuknya), maka (Kamilah) sebaik-baik yang menentukan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam urusan mengatur dan menetapkan masa lamanya si anak "tersimpan" dalam rahim itu dan kemudian menetapkan bila dia harus lahir sebagai anak yang sempurna ke alam ini, adalah urusan Allah semata. Manusia boleh mengetahui lewat pikirannya, namun soal pengaturannya tetaplah di tangan Yang Mahakuasa. Terhadap soal ini, Allah menegaskan bahwa Dialah sebaik-baiknya yang menentukan.\n\nBetapa tepat, indah, dan harmonis kejadian manusia yang diciptakan-Nya itu dapat kita bandingkan, umpamanya, dengan bentuk dan rupa hewan. Sekalipun jenis makhluk hewan itu tidak ada yang cacat maupun yang janggal menurut penglihatan kita, namun ciptaan dan susunan anatomi tubuh manusia tetap jauh lebih sempurna, indah, dan menarik, dibandingkan dengan segala makhluk hidup yang ada. Dengan merenungkan hal itu, barulah kita menyimpulkan bahwa memang Tuhanlah yang sebaik-baik menentukan.\n\nAyat ini mengandung ajakan bagi manusia untuk berpikir dan menyimpulkan sikap hidupnya terhadap Zat yang menjadikan itu. Apakah tidak patut manusia bersyukur dan berterima kasih kepada-Nya? Apakah tidak selayaknya kalau manusia menanggalkan sikap ingkar dan keras kepalanya setelah ia menyadari sepenuhnya betapa kasih sayang Allah, dan betapa Allah telah membimbing kehidupan ini dengan mengirim rasul-Nya guna mengajarkan ajaran tentang keesaan-Nya?'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 24 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 24, 'وَيْلٌ يَّوْمَىِٕذٍ لِّلْمُكَذِّبِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 24);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 24;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Celakalah pada hari itu, bagi mereka yang mendustakan (kebenaran).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa terlepas dari semua itu kalau memang manusia tak mau mengubah tabiat dan karakternya, tetap saja kafir laknat, dan lebih dari itu juga berusaha merongrong kewibawaan Ilahi itu dengan mempersekutukan-Nya dengan makhluk lain ciptaan-Nya, dan sama sekali tidak yakin adanya hari kebangkitan, hari manusia menerima ganjaran amal perbuatan baiknya, maka Tuhan mengancam untuk kedua kalinya, "Celaka besarlah pada hari itu bagi orang-orang yang mendustakan."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 25 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 25, 'اَلَمْ نَجْعَلِ الْاَرْضَ كِفَاتًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 25);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 25;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bukankah Kami jadikan bumi untuk (tempat) berkumpul,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah menyebutkan berbagai rupa nikmat-Nya di sekitar proses kejadian manusia, maka dalam ayat ini, Allah mengajak manusia memperhatikan dengan seksama terhadap nikmat-Nya yang ada di cakrawala ini. Hal ini diungkapkan Allah dengan kalimat pertanyaan, "Bukankah Kami telah menciptakan bumi yang terhampar dan terbentang begitu luas sebagai tempat berkumpul dan tempat hidup bersama-sama mencari penghidupan.\n\nSecara saintifik, planet bumi ini beserta atmosfernya telah diciptakan Allah dengan benar dan tepat. Bumi kita dan atmosfernya mengandung substansi atau materi yang mendukung adanya proses kehidupan, antara lain adanya gas nitrogen (N2) yang tak berbahaya bagi makhluk hidup, namun sangat dibutuhkan untuk timbulnya suatu proses kehidupan, dan gas oksigen (O2), yang sangat dibutuhkan dalam kelangsungan kehidupan semua makhluk hidup. Oleh sebab itu, di bumi semua kehidupan berkumpul (lebih detail lihat Al-Qur''an dan Tafsirnya Jilid 5 Surah Ibrahim/14:19).'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 26 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 26, 'اَحْيَاۤءً وَّاَمْوَاتًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 26);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 26;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'bagi yang masih hidup dan yang sudah mati?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kegunaan bumi diciptakan terhampar dan tempat berkumpul bukan saja untuk yang masih hidup yang tinggal di atas permukaannya, melainkan juga bagi yang telah meninggal dunia untuk dikuburkan dalam perutnya. Itulah sebabnya dikatakan bumi untuk orang yang masih hidup dan yang sudah meninggal. Kifat dalam bahasa Arab berarti kuburan bagi yang meninggal dan rumah bagi yang masih hidup.\n\nMenurut para ilmuwan, bagian atas bumi merupakan lempengan-lempengan kulit bumi yang saling berinteraksi satu sama lain dan mengakibatkan terjadinya deformasi kerak bumi yang antara lain dimanifestasikan dengan pembentukan pegunungan, gunung api dan gempa bumi. Pegunungan-pegunungan yang tinggi ikut serta dalam siklus hidrologi dimana air akhirnya tersimpan di daratan dan menjadi sumber air minum manusia dan kehidupan lainnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 27 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 27, 'وَّجَعَلْنَا فِيْهَا رَوَاسِيَ شٰمِخٰتٍ وَّاَسْقَيْنٰكُمْ مَّاۤءً فُرَاتًاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 27);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 27;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan Kami jadikan padanya gunung-gunung yang tinggi, dan Kami beri minum kamu dengan air tawar?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selain itu, Allah juga mengarahkan perhatian manusia kepada tujuan penciptaan gunung yang menjulang tinggi dari permukaan bumi. Ia dikatakan sebagai pasak bumi dan dengan demikian, manusia merasa tenteram tinggal di bumi. Gunung itulah yang bertugas sebagai pasak tiang untuk menjaga keseimbangan bumi tersebut. Terkadang sebagian badan gunung-gunung itu terbenam dalam tanah atau dalam laut maupun sungai-sungai.\n\nSelanjutnya Allah mengajak manusia memikirkan tentang air tawar yang diminum setiap hari, sebagai anugerah dari-Nya. Dialah yang menurut ayat ini memberikan minum. Terkadang air itu tercurah dari langit yang dibawa hujan yang berasal dari gumpalan awan atau dari salju mencair dan adakalanya pula mengalir dari anak-anak sungai atau memancar dari mata air, di bawah celah-celah gunung maupun di pinggir kali, dan sebagainya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 28 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 28, 'وَيْلٌ يَّوْمَىِٕذٍ لِّلْمُكَذِّبِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 28);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 28;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Celakalah pada hari itu, bagi mereka yang mendustakan (kebenaran).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Oleh karena itu, bagi siapa yang masih mendustakan nikmat Allah itu terkena oleh kutukan ayat ini, "Celaka besarlah pada hari itu bagi orang-orang yang mendustakan."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 29 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 29, 'اِنْطَلِقُوْٓا اِلٰى مَا كُنْتُمْ بِهٖ تُكَذِّبُوْنَۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 29);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 29;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Akan dikatakan), “Pergilah kamu mendapatkan apa (azab) yang dahulu kamu dustakan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa orang-orang yang bernasib malang yang hendak dimasukkan ke dalam neraka Jahanam, akan ditegur oleh malaikat penjaga dengan suara keras agar mereka pergi kepada azab dan siksaan yang didustakan ketika masih di dunia dahulu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 30 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 30, 'اِنْطَلِقُوْٓا اِلٰى ظِلٍّ ذِيْ ثَلٰثِ شُعَبٍ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 30);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 30;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Pergilah kamu mendapatkan naungan (asap api neraka) yang mempunyai tiga cabang, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Gumpalan asap neraka itu bercabang tiga. Satu bagian di sebelah kanan, satu cabang di kiri, dan yang ketiga di atas pundak mereka, sehingga mereka terkepung di dalamnya dan tidak dapat keluar lagi. Di dalam ayat yang lain, Allah berfirman:\n\nSesungguhnya Kami telah menyediakan neraka bagi orang zalim, yang gejolaknya mengepung mereka. (al-Kahf/18: 29)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 31 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 31, 'لَا ظَلِيْلٍ وَّلَا يُغْنِيْ مِنَ اللَّهَبِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 31);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 31;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang tidak melindungi dan tidak pula menolak nyala api neraka.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah mengatakan dalam ayat ini bahwa biarpun neraka itu disebutkan punya lindungan namun bukan melindungi mereka dari panasnya api neraka. Tidak ada tempat beristirahat dan tempat berteduh dari kepanasan. Ditegaskan pula di sini bahwa lindungan mereka bukan lindungan seperti yang diperoleh seorang mukmin, karena tidak ada yang dapat menaungi mereka dari panas gejolak api neraka.\n\nAyat lain menerangkan:\n\n(Mereka) dalam siksaan angin yang sangat panas dan air yang mendidih, dan naungan asap yang hitam, tidak sejuk dan tidak menyenangkan. (al-Waqi''ah/56: 42-44)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 32 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 32, 'اِنَّهَا تَرْمِيْ بِشَرَرٍ كَالْقَصْرِۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 32);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 32;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, (neraka) itu menyemburkan bunga api (sebesar dan setinggi) istana, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menyebutkan pula bahwa neraka itu selalu melontarkan bunga api sebesar dan setinggi istana ke seluruh penjuru. Allah mengumpamakan gejolak api neraka Jahanam yang sangat dahsyat itu dengan unta kuning yang sangat banyak dan bergerak cepat. Allah mengulangi lagi ancamannya bahwa kecelakaan bagi orang yang mendustakan karena mereka tidak dapat mengelakkan diri dari siksaan yang begitu hebat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 33 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 33, 'كَاَنَّهٗ جِمٰلَتٌ صُفْرٌۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 33);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 33;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'seakan-akan iring-iringan unta yang kuning.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menyebutkan pula bahwa neraka itu selalu melontarkan bunga api sebesar dan setinggi istana ke seluruh penjuru. Allah mengumpamakan gejolak api neraka Jahanam yang sangat dahsyat itu dengan unta kuning yang sangat banyak dan bergerak cepat. Allah mengulangi lagi ancamannya bahwa kecelakaan bagi orang yang mendustakan karena mereka tidak dapat mengelakkan diri dari siksaan yang begitu hebat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 34 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 34, 'وَيْلٌ يَّوْمَىِٕذٍ لِّلْمُكَذِّبِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 34);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 34;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Celakalah pada hari itu, bagi mereka yang mendustakan (kebenaran). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menyebutkan pula bahwa neraka itu selalu melontarkan bunga api sebesar dan setinggi istana ke seluruh penjuru. Allah mengumpamakan gejolak api neraka Jahanam yang sangat dahsyat itu dengan unta kuning yang sangat banyak dan bergerak cepat. Allah mengulangi lagi ancamannya bahwa kecelakaan bagi orang yang mendustakan karena mereka tidak dapat mengelakkan diri dari siksaan yang begitu hebat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 35 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 35, 'هٰذَا يَوْمُ لَا يَنْطِقُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 35);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 35;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Inilah hari, saat mereka tidak dapat berbicara, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa pada hari itu manusia tidak bisa berbicara dan hanya terpukau karena kedahsyatan keadaan. Mereka tidak diizinkan berbicara, dan andaikata diizinkan pun, hal itu tidak ada gunanya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 36 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 36, 'وَلَا يُؤْذَنُ لَهُمْ فَيَعْتَذِرُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 36);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 36;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan tidak diizinkan kepada mereka mengemukakan alasan agar mereka dimaafkan. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah selanjutnya menerangkan bahwa mereka tidak diizinkan untuk minta uzur, sebab hari itu bukanlah hari pembelaan diri, tetapi hari untuk menerima keputusan. Mereka dapat mengeluh dan menyesali nasib, namun untuk mengajukan sanggahan tidak mungkin lagi karena keputusan Allah tidak dapat diganggu gugat. Dalam Surah al-An''am/6: 23, orang musyrik di hari itu menyatakan bahwa mereka tidak mau musyrik lagi. Pada Surah an-Nisa''/4: 42 disebutkan bahwa mereka tidak bisa menyembunyikan pembicaraannya, dan dalam ayat az-Zumar/39: 31 disebutkan mereka orang-orang kafir berdebat di muka Allah, saling menuduh, dan saling menyalahkan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 37 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 37, 'وَيْلٌ يَّوْمَىِٕذٍ لِّلْمُكَذِّبِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 37);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 37;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Celakalah pada hari itu, bagi mereka yang mendustakan (kebenaran). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengulangi lagi ancaman-Nya bahwa kecelakaan besar di hari itu bagi orang yang mendustakan. Sebab rasul telah mengajak mereka supaya beriman dan mengancam dengan memperingatkan mereka dengan akan datangnya azab yang mereka hadapi itu. Sayang mereka tidak mau menerima dan mendengarkan ajakan itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 38 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 38, 'هٰذَا يَوْمُ الْفَصْلِ جَمَعْنٰكُمْ وَالْاَوَّلِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 38);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 38;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Inilah hari keputusan; (pada hari ini) Kami kumpulkan kamu dan orang-orang yang terdahulu. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menerangkan bahwa hari ini adalah hari keputusan. Inilah hari yang memisahkan antara kebenaran dan kebatilan, hari ketika diungkapkan kebenaran dan kepalsuan seseorang.\n\nDi hari itu, Allah menghimpun semua manusia yang pernah hidup di dunia ini sejak zaman Nabi Adam sampai akhir masa pada tempat yang satu. Tujuannya untuk memberikan suatu keputusan hukum buat mereka siapa yang salah dan siapa yang benar, sehingga masing-masing orang memperoleh haknya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 39 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 39, 'فَاِنْ كَانَ لَكُمْ كَيْدٌ فَكِيْدُوْنِ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 39);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 39;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka jika kamu punya tipu daya, maka lakukanlah (tipu daya) itu terhadap-Ku. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menantang dengan cara mengejek orang-orang kafir dan orang-orang yang merasa mempunyai kekuatan membela diri, untuk menggunakan kepandaian dan tipu dayanya guna menyelamatkan diri dari siksaan-Nya.\n\nSelain itu, ayat ini memberikan suatu pelajaran keras bagi orang-orang yang menentang agama Islam, yang selalu menipu dan mempermainkan orang-orang yang beriman bahwa kelak pada saatnya mereka akan mengetahui betapa lemahnya alasan mereka yang suka mengolok-olokkan agama itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 40 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 40, 'وَيْلٌ يَّوْمَىِٕذٍ لِّلْمُكَذِّبِيْنَ ࣖ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 40);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 40;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Celakalah pada hari itu, bagi mereka yang mendustakan (kebenaran).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah mengulangi lagi ancaman-Nya bahwa kecelakaan besar di hari kebangkitan bagi orang-orang yang mendustakan-Nya. Kecelakaan buat mereka di hari kebangkitan karena waktu itulah terbukti kelemahan dan mereka berhadapan dengan Allah yang mereka dustai. Pada saat seperti itu terbukti betapa batalnya dakwaan yang mereka yakini selama ini.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 41 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 41, 'اِنَّ الْمُتَّقِيْنَ فِيْ ظِلٰلٍ وَّعُيُوْنٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 41);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 41;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, orang-orang yang bertakwa berada dalam naungan (pepohonan surga yang teduh) dan (di sekitar) mata air, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini dan ayat berikutnya Allah menerangkan berbagai kenikmatan buat orang-orang yang bertakwa yaitu naungan surga yang berada di (sekitar) mata air, di bawah pohon rindang yang mengalir anak-anak sungai di bawahnya, tidak pernah mereka merasakan udara panas dan gejolak api yang membakar. Dalam ayat ini, Allah berfirman:\n\nMereka dan pasangan-pasangannya berada dalam tempat yang teduh, bersandar di atas dipan-dipan. (Yasin/36: 56)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 42 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 42, 'وَّفَوَاكِهَ مِمَّا يَشْتَهُوْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 42);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 42;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan buah-buahan yang mereka sukai. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa di dalam surga terdapat anak sungai, berbagai jenis buah-buahan yang cita rasanya manis dan lezat, boleh dipetik dan dimakan kapan saja dikehendaki tanpa ada yang mengganggu. Bagi yang memakannya tidak perlu takut dan khawatir akan menimbulkan penyakit kalau terlalu banyak memakannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 43 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 43, 'كُلُوْا وَاشْرَبُوْا هَنِيْۤـًٔا ۢبِمَا كُنْتُمْ تَعْمَلُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 43);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 43;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Katakan kepada mereka), “Makan dan minumlah dengan rasa nikmat sebagai balasan dari apa yang telah kamu kerjakan.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Penduduk surga diterima dengan sambutan yang ramah dari penjaganya, yang mengatakan bahwa orang yang berbuat baik di dunia dahulu, dibolehkan menikmati segala buah-buahan dan minuman yang telah tersedia selama-lamanya. Mereka tidak akan sakit dan tidak pula perlu khawatir akan habis. Inilah balasan terhadap segala jerih payah mereka dulu dengan beramal menaati Allah, berjuang bersungguh-sungguh mendekatkan diri kepada-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 44 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 44, 'اِنَّا كَذٰلِكَ نَجْزِى الْمُحْسِنِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 44);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 44;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, demikianlah Kami memberi balasan kepada orang-orang yang berbuat baik. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah menerangkan bahwa semua kenikmatan itu merupakan pemberian dari-Nya sebagai pembalasan bagi orang yang bertakwa, dan orang yang senantiasa mengamalkan kebaikan dengan dasar dan menghambakan diri kepada-Nya. Tidak ada kebaikan yang luput dari pembalasan pahala Allah sebagaimana disebutkan dalam ayat lain:\n\nSungguh, mereka yang beriman dan mengerjakan kebajikan, Kami benar-benar tidak akan menyia-nyiakan pahala orang yang mengerjakan perbuatan yang baik itu. (al-Kahf/18: 30)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 45 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 45, 'وَيْلٌ يَّوْمَىِٕذٍ لِّلْمُكَذِّبِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 45);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 45;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Celakalah pada hari itu, bagi mereka yang mendustakan (kebenaran). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini sekali lagi Allah mengutuk orang-orang yang mendustakan-Nya, "Kecelakaan bagi orang-orang yang mendustakan (Kami) pada hari itu." Kecelakaan bagi mereka karena mendustakan apa yang telah diberikan Allah, yaitu kemuliaan orang bertakwa dan dengan kehinaan mereka pada hari Kiamat. Sungguh sial nasib orang yang mendustakan itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 46 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 46, 'كُلُوْا وَتَمَتَّعُوْا قَلِيْلًا اِنَّكُمْ مُّجْرِمُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 46);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 46;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Katakan kepada orang-orang kafir), “Makan dan bersenang-senanglah kamu (di dunia) sebentar, sesungguhnya kamu orang-orang durhaka!”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian dalam ayat ini Allah berseru dan mengancam dengan firman-Nya agar mereka makan dan menikmati sisa-sisa kesenangan hidup di dunia yang tinggal sedikit itu, sebab kelak pada waktunya Allah akan memberlakukan sunah berupa kedatangan siksa dan azab buat mereka seperti berulang-ulang dijatuhkan pada bangsa-bangsa sebelum mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 47 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 47, 'وَيْلٌ يَّوْمَىِٕذٍ لِّلْمُكَذِّبِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 47);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 47;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Celakalah pada hari itu, bagi mereka yang mendustakan (kebenaran). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah lalu mengulangi lagi celaan dan ancaman-Nya kepada orang yang mendustakan-Nya. Mereka telah melakukan suatu perbuatan yang menyebabkan diri mereka terbenam dalam azab dan kesengsaraan abadi. Padahal di dunia mereka cuma menikmati kesenangan yang sangat sedikit dan tiada lama waktunya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 48 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 48, 'وَاِذَا قِيْلَ لَهُمُ ارْكَعُوْا لَا يَرْكَعُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 48);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 48;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan apabila dikatakan kepada mereka, “Rukuklah,” mereka tidak mau rukuk.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Diriwayatkan bahwa ayat ini turun ketika Rasulullah saw berdakwah menyuruh penduduk negeri Saqif, suatu negeri yang tidak jauh dari Mekah untuk salat menyembah Allah. Mereka menjawab dengan sombong, "Kami tak akan ruku'' (salat) karena bukan merupakan suatu kebiasaan kami." Nabi menjawab bahwa tidak ada kebaikan bagi suatu agama yang tidak ada padanya ruku'' dan sujud. Ada yang mengatakan perintah ini adalah ketika orang-orang kafir disuruh sujud di hadapan Allah di hari akhirat, mereka tak sanggup melakukannya, sebab tidak biasa mengerjakan di atas dunia.\n\nAllah menyatakan bahwa mereka diperintahkan ruku'' (mengerjakan salat), tetapi mereka enggan. Apabila disuruh patuh dan taat serta takut kepada Allah dan pada hari yang di waktu itu semua mata tunduk karena takut, mereka bersikap keras kepala.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 49 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 49, 'وَيْلٌ يَّوْمَىِٕذٍ لِّلْمُكَذِّبِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 49);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 49;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Celakalah pada hari itu, bagi mereka yang mendustakan (kebenaran)! ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebagai penutup dari dua ayat terakhir ini, Allah mengulang kembali kutukan-Nya terhadap orang-orang yang mendustakan perintah dan larangan-Nya. Kecelakaan besar bagi orang yang mendustakan karena tidak patuh kepada perintah-Nya dan tidak mau meninggalkan larangan-Nya.\n\nSetelah mencela orang kafir dengan sangat keras agar mengikuti agama yang benar, maka Allah mengakhiri surah ini dengan menegaskan bahwa orang-orang musyrik itu sama sekali tidak mau mendengarkan nasihat para dai yang mengajak mereka untuk mengikuti ajaran Ilahi bagi kepentingan kehidupan mereka di dunia dan akhirat. Allah mengatakan, "Maka kepada perkataan apakah selain Al-Qur''an mereka akan beriman?" Jadi dengan keterangan-keterangan Al-Qur''an yang begitu jelas dan mudah dimengerti disertai dengan bukti-bukti yang jelas, mereka tidak juga mau beriman, maka manakah lagi kebenaran yang mampu membawa mereka kepada petunjuk Ilahi?"\n\nDari ayat terakhir ini jelaslah bahwa Allah telah menetapkan ajaran Al-Qur''an tentang dunia dan akhirat yang menghimpun sekalian keterangan yang ada, lengkap dengan segala seluk-beluknya sebagai alasan yang kuat. Dengan demikian, Al-Qur''an satu-satunya kitab suci yang dikenal manusia yang mengandung keterangan yang begitu jelas dan lengkap. Hanya manusia tidak mau beriman menjelang ajal datang mencabut kehidupannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 50 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 77, 50, 'فَبِاَيِّ حَدِيْثٍۢ بَعْدَهٗ يُؤْمِنُوْنَ ࣖ   ۔', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 77 AND ayah_number = 50);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 77 AND ayah_number = 50;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka kepada ajaran manakah (selain Al-Qur''an) ini mereka akan beriman?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebagai penutup dari dua ayat terakhir ini, Allah mengulang kembali kutukan-Nya terhadap orang-orang yang mendustakan perintah dan larangan-Nya. Kecelakaan besar bagi orang yang mendustakan karena tidak patuh kepada perintah-Nya dan tidak mau meninggalkan larangan-Nya.\n\nSetelah mencela orang kafir dengan sangat keras agar mengikuti agama yang benar, maka Allah mengakhiri surah ini dengan menegaskan bahwa orang-orang musyrik itu sama sekali tidak mau mendengarkan nasihat para dai yang mengajak mereka untuk mengikuti ajaran Ilahi bagi kepentingan kehidupan mereka di dunia dan akhirat. Allah mengatakan, "Maka kepada perkataan apakah selain Al-Qur''an mereka akan beriman?" Jadi dengan keterangan-keterangan Al-Qur''an yang begitu jelas dan mudah dimengerti disertai dengan bukti-bukti yang jelas, mereka tidak juga mau beriman, maka manakah lagi kebenaran yang mampu membawa mereka kepada petunjuk Ilahi?"\n\nDari ayat terakhir ini jelaslah bahwa Allah telah menetapkan ajaran Al-Qur''an tentang dunia dan akhirat yang menghimpun sekalian keterangan yang ada, lengkap dengan segala seluk-beluknya sebagai alasan yang kuat. Dengan demikian, Al-Qur''an satu-satunya kitab suci yang dikenal manusia yang mengandung keterangan yang begitu jelas dan lengkap. Hanya manusia tidak mau beriman menjelang ajal datang mencabut kehidupannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

