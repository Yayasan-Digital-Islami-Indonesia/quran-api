-- Seed Surah 83 (Al-Mutaffifin) with 36 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/83.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (83, 'المطفّفين', 'Al-Mutaffifin', 36, 'Makkiyah', 'Orang-Orang Curang')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 1, 'وَيْلٌ لِّلْمُطَفِّفِيْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Celakalah bagi orang-orang yang curang (dalam menakar dan menimbang)! ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Azab dan kehinaan yang besar pada hari Kiamat disediakan bagi orang-orang yang curang dalam menakar dan menimbang. Allah telah menyampaikan ancaman yang pedas kepada orang-orang yang curang dalam menakar dan menimbang yang terjadi di tempat-tempat jual beli di Mekah dan Medinah pada waktu itu.\n\nDiriwayatkan bahwa di Medinah ada seorang laki-laki bernama Abu Juhainah. Ia mempunyai dua macam takaran yang besar dan yang kecil. Bila ia membeli gandum atau kurma dari para petani, ia mempergunakan takaran yang besar, akan tetapi jika ia menjual kepada orang lain ia mempergunakan takaran yang kecil.\n\nPerbuatan seperti itu menunjukkan adanya sifat tamak, ingin mencari keuntungan bagi dirinya sendiri walaupun dengan jalan merugikan orang lain. Terhadap orang seperti itu, Nabi Muhammad telah memberi ancaman yang pedas sekali seperti tersebut dalam hadis ini:\n\nAda lima perkara yang dibalas dengan lima perkara: Tidak pernah suatu kaum yang melanggar janji, melainkan Allah akan membiarkan kaum itu dikuasai musuhnya. Tidak pernah mereka yang memutuskan suatu perkara dengan hukuman yang tidak diturunkan oleh Allah, melainkan akan tersebar luaslah kefakiran di kalangan mereka. Perzinaan tidak pernah meluas di kalangan mereka secara luas, melainkan akan tersebar luaslah bahaya kematian. Tidak pernah mereka yang berbuat curang dalam menakar dan menimbang, melainkan mereka akan kehilangan kesuburan tumbuh-tumbuhan dan ditimpa musim kemarau. Dan tidak pernah mereka yang menahan zakat, melainkan akan diazab dengan tertahannya hujan (kemarau yang panjang). (Riwayat ath-thabrani dari Ibnu ''Abbas)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 2, 'الَّذِيْنَ اِذَا اكْتَالُوْا عَلَى النَّاسِ يَسْتَوْفُوْنَۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Yaitu) orang-orang yang apabila menerima takaran dari orang lain mereka minta dicukupkan, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam dua ayat ini, Allah menjelaskan perilaku orang yang akan menjadi penghuni neraka. Mereka adalah orang-orang yang ingin dipenuhi takaran atau timbangannya ketika membeli karena tidak mau rugi. Sebaliknya, apabila menjual kepada orang lain, mereka akan mengurangi takaran atau timbangannya. \n\nOrang-orang yang mengurangi takaran dan timbangan mendapat dosa yang besar karena dengan perbuatan itu, dia dianggap telah memakan harta orang lain tanpa kerelaan pemiliknya. Allah melarang perbuatan yang demikian itu. Allah berfirman:\n\nDan janganlah kamu makan harta di antara kamu dengan jalan yang batil. (al-Baqarah/2: 188)\n\nYang dimaksud dengan takaran di sini mencakup segala ukuran dan timbangan yang biasa dipakai dalam jual beli dan terkait dengan pengurangan hak orang lain. Banyak sekali kita jumpai dalam kehidupan sekarang ini pengurangan-pengurangan yang merugikan orang lain, seperti menjual tabung gas yang isinya tidak sesuai dengan standar, mengurangi literan bensin yang dijual, penjual kain yang mengurangi ukuran kain yang dijualnya. Termasuk dalam pengurangan takaran yang sangat merugikan dan berbahaya adalah korupsi. Pelaku korupsi mengurangi dana sebuah proyek dari perencanaan semula demi memperoleh keuntungan untuk diri sendiri, atau mengurangi kualitas bahan yang diperlukan dalam proyek tersebut dan menggantinya dengan bahan yang berkualitas lebih rendah.\n\nAyat ini mengingatkan manusia untuk menjauhi praktek-praktek yang merugikan orang lain dan ancaman hukumannya sangat besar di dunia dan akhirat. Ayat senada yang menyuruh manusia untuk memenuhi dan menyempurnakan timbangan adalah firman Allah:\n\nDan sempurnakanlah takaran apabila kamu menakar, dan timbanglah dengan timbangan yang benar. Itulah yang lebih utama (bagimu) dan lebih baik akibatnya. (al-Isra''/17: 35)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 3, 'وَاِذَا كَالُوْهُمْ اَوْ وَّزَنُوْهُمْ يُخْسِرُوْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan apabila mereka menakar atau menimbang (untuk orang lain), mereka mengurangi. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam dua ayat ini, Allah menjelaskan perilaku orang yang akan menjadi penghuni neraka. Mereka adalah orang-orang yang ingin dipenuhi takaran atau timbangannya ketika membeli karena tidak mau rugi. Sebaliknya, apabila menjual kepada orang lain, mereka akan mengurangi takaran atau timbangannya. \n\nOrang-orang yang mengurangi takaran dan timbangan mendapat dosa yang besar karena dengan perbuatan itu, dia dianggap telah memakan harta orang lain tanpa kerelaan pemiliknya. Allah melarang perbuatan yang demikian itu. Allah berfirman:\n\nDan janganlah kamu makan harta di antara kamu dengan jalan yang batil. (al-Baqarah/2: 188)\n\nYang dimaksud dengan takaran di sini mencakup segala ukuran dan timbangan yang biasa dipakai dalam jual beli dan terkait dengan pengurangan hak orang lain. Banyak sekali kita jumpai dalam kehidupan sekarang ini pengurangan-pengurangan yang merugikan orang lain, seperti menjual tabung gas yang isinya tidak sesuai dengan standar, mengurangi literan bensin yang dijual, penjual kain yang mengurangi ukuran kain yang dijualnya. Termasuk dalam pengurangan takaran yang sangat merugikan dan berbahaya adalah korupsi. Pelaku korupsi mengurangi dana sebuah proyek dari perencanaan semula demi memperoleh keuntungan untuk diri sendiri, atau mengurangi kualitas bahan yang diperlukan dalam proyek tersebut dan menggantinya dengan bahan yang berkualitas lebih rendah.\n\nAyat ini mengingatkan manusia untuk menjauhi praktek-praktek yang merugikan orang lain dan ancaman hukumannya sangat besar di dunia dan akhirat. Ayat senada yang menyuruh manusia untuk memenuhi dan menyempurnakan timbangan adalah firman Allah:\n\nDan sempurnakanlah takaran apabila kamu menakar, dan timbanglah dengan timbangan yang benar. Itulah yang lebih utama (bagimu) dan lebih baik akibatnya. (al-Isra''/17: 35)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 4, 'اَلَا يَظُنُّ اُولٰۤىِٕكَ اَنَّهُمْ مَّبْعُوْثُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Tidakkah mereka itu mengira, bahwa sesungguhnya mereka akan dibangkitkan, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini mencela orang-orang yang mengurangi takaran dan timbangan dengan pertanyaan apakah mereka itu menyangka hari kebangkitan itu tidak akan pernah ada. Sebab, jika mereka menyangka saja, belum meyakini adanya hari kebangkitan, tentu mereka tidak tergugah untuk menghindari kecurangan. Memang mereka itu tidak mengharapkan adanya hari penghitungan, sebagaimana firman Allah:\n\nSesungguhnya dahulu mereka tidak pernah mengharapkan perhitungan. (an-Naba''/78: 27)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 5, 'لِيَوْمٍ عَظِيْمٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'pada suatu hari yang besar, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Mereka akan dibangkitkan untuk dihisab pada hari pembalasan. Allah menerangkan bahwa ketika itu semua umat manusia berdiri menghadap Allah Rabbul ''Alamin untuk dihisab dan diperiksa segala amal perbuatannya selama hidup di dunia. Semuanya dihisab dengan penuh keadilan karena Allah Mahaadil. Timbangan itu adalah lambang keadilan yang senantiasa harus ditegakkan dan dipertahankan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 6, 'يَّوْمَ يَقُوْمُ النَّاسُ لِرَبِّ الْعٰلَمِيْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(yaitu) pada hari (ketika) semua orang bangkit menghadap Tuhan seluruh alam.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Mereka akan dibangkitkan untuk dihisab pada hari pembalasan. Allah menerangkan bahwa ketika itu semua umat manusia berdiri menghadap Allah Rabbul ''Alamin untuk dihisab dan diperiksa segala amal perbuatannya selama hidup di dunia. Semuanya dihisab dengan penuh keadilan karena Allah Mahaadil. Timbangan itu adalah lambang keadilan yang senantiasa harus ditegakkan dan dipertahankan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 7, 'كَلَّآ اِنَّ كِتٰبَ الْفُجَّارِ لَفِيْ سِجِّيْنٍۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sekali-kali jangan begitu! Sesungguhnya catatan orang yang durhaka benar-benar tersimpan dalam Sijjin. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat-ayat ini menjelaskan kepada orang-orang yang tidak percaya terhadap hari kebangkitan bahwa perbuatan mereka harus dipertanggungjawabkan. Mereka tidak bisa menghindari hukuman Allah karena masing-masing manusia diawasi oleh malaikat yang mencatat semua perbuatannya . \n\nBuku catatan orang-orang yang durhaka kepada Allah akan disimpan di Sijjin, yaitu kitab yang tertulis. Di dalamnya tercatat kejahatan dan kecurangan manusia. Catatan-catatan inilah yang akan dijadikan takaran untuk menghisab mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 8, 'وَمَآ اَدْرٰىكَ مَا سِجِّيْنٌۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan tahukah engkau apakah Sijjin itu? ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat-ayat ini menjelaskan kepada orang-orang yang tidak percaya terhadap hari kebangkitan bahwa perbuatan mereka harus dipertanggungjawabkan. Mereka tidak bisa menghindari hukuman Allah karena masing-masing manusia diawasi oleh malaikat yang mencatat semua perbuatannya . \n\nBuku catatan orang-orang yang durhaka kepada Allah akan disimpan di Sijjin, yaitu kitab yang tertulis. Di dalamnya tercatat kejahatan dan kecurangan manusia. Catatan-catatan inilah yang akan dijadikan takaran untuk menghisab mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 9, 'كِتٰبٌ مَّرْقُوْمٌۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Yaitu) Kitab yang berisi catatan (amal).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat-ayat ini menjelaskan kepada orang-orang yang tidak percaya terhadap hari kebangkitan bahwa perbuatan mereka harus dipertanggungjawabkan. Mereka tidak bisa menghindari hukuman Allah karena masing-masing manusia diawasi oleh malaikat yang mencatat semua perbuatannya . \n\nBuku catatan orang-orang yang durhaka kepada Allah akan disimpan di Sijjin, yaitu kitab yang tertulis. Di dalamnya tercatat kejahatan dan kecurangan manusia. Catatan-catatan inilah yang akan dijadikan takaran untuk menghisab mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 10, 'وَيْلٌ يَّوْمَىِٕذٍ لِّلْمُكَذِّبِيْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Celakalah pada hari itu, bagi orang-orang yang mendustakan! ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dua ayat ini kembali mengancam orang-orang yang mendustakan hari pembalasan dengan azab yang sangat pedih, yaitu neraka. Ancaman dan hukuman bagi orang-orang yang mengingkari hari kebangkitan memang sangat pedih, karena mengingkari hari kiamat berarti mengingkari keadilan Allah, dan hukum-hukum syariat agama yang berlaku di dunia dan berakibat di akhirat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 11, 'الَّذِيْنَ يُكَذِّبُوْنَ بِيَوْمِ الدِّيْنِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(yaitu) orang-orang yang mendustakannya (hari pembalasan).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dua ayat ini kembali mengancam orang-orang yang mendustakan hari pembalasan dengan azab yang sangat pedih, yaitu neraka. Ancaman dan hukuman bagi orang-orang yang mengingkari hari kebangkitan memang sangat pedih, karena mengingkari hari kiamat berarti mengingkari keadilan Allah, dan hukum-hukum syariat agama yang berlaku di dunia dan berakibat di akhirat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 12, 'وَمَا يُكَذِّبُ بِهٖٓ اِلَّا كُلُّ مُعْتَدٍ اَثِيْمٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan tidak ada yang mendustakannya (hari pembalasan) kecuali setiap orang yang melampaui batas dan berdosa,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menjelaskan bahwa tidak ada manusia yang mengingkari hari Kiamat kecuali orang-orang yang selalu melampaui batas-batas agama, yang tertutup hatinya oleh kekafiran, dan yang tidak lagi bermanfaat baginya berbagai peringatan dan ancaman. Allah berfirman:\n\nSesungguhnya orang-orang kafir, sama saja bagi mereka, engkau (Muhammad) beri peringatan atau tidak engkau beri peringatan, mereka tidak akan beriman. (al-Baqarah/2: 6)\n\nSifat lain dari manusia yang mengingkari hari Kiamat adalah tenggelam dalam perbuatan dosa-dosa besar, acuh tak acuh terhadap perintah dan larangan Allah, lebih mementingkan kesenangan duniawi daripada kehidupan akhirat. Firman Allah:\n\nMaka adapun orang yang melampaui batas, dan lebih mengutamakan kehidupan dunia, maka sungguh, nerakalah tempat tinggalnya. (an-Nazi''at/79: 37-39)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 13, 'اِذَا تُتْلٰى عَلَيْهِ اٰيٰتُنَا قَالَ اَسَاطِيْرُ الْاَوَّلِيْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang apabila dibacakan kepadanya ayat-ayat Kami, dia berkata, “Itu adalah dongeng orang-orang dahulu.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menjelaskan bahwa ketika dibacakan ayat-ayat Al-Qur''an kepada orang-orang yang melampaui batas, selalu berdosa, tidak mempercayai hari akhirat dan Al-Qur''an sebagai kitab suci yang berisi petunjuk-petunjuk Allah untuk mengantarkan manusia ke jalan yang lurus menuju kebahagiaan dunia dan akhirat, mereka tidak mau mendengarkannya dengan khusyuk atau menyimak isinya. Mereka bahkan mengatakan bahwa Al-Qur''an itu adalah dongeng-dongeng orang-orang dahulu yang didiktekan kepada Nabi Muhammad. Firman Allah:\n\nDan orang-orang kafir berkata, "(Al-Qur''an) ini tidak lain hanyalah kebohongan yang diada-adakan oleh dia (Muhammad), dibantu oleh orang-orang lain," Sungguh, mereka telah berbuat zalim dan dusta yang besar. Dan mereka berkata, "(Itu hanya) dongeng-dongeng orang-orang terdahulu, yang diminta agar dituliskan, lalu dibacakanlah dongeng itu kepadanya setiap pagi dan petang." Katakanlah (Muhammad), "(Al-Qur''an) itu diturunkan oleh (Allah) yang mengetahui rahasia di langit dan di bumi. Sungguh, Dia Maha Pengampun, Maha Penyayang." (al-Furqan/25: 4-6)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 14, 'كَلَّا بَلْ ۜرَانَ عَلٰى قُلُوْبِهِمْ مَّا كَانُوْا يَكْسِبُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sekali-kali tidak! Bahkan apa yang mereka kerjakan itu telah menutupi hati mereka. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah membantah tuduhan orang-orang kafir Mekah yang mengatakan bahwa Al-Qur''an itu dongengan orang dahulu. Sama sekali bukan demikian. Sebenarnya apa yang selalu mereka usahakan itu menutup hati mereka. Kebiasaan mereka berbuat dosa telah menyebabkan hati mereka jadi keras, gelap, dan tertutup laksana logam yang berkarat. Oleh karena itu, mereka tidak dapat membedakan antara dusta yang berat dengan kebenaran yang terang benderang. Hati yang demikian hanya bisa dibersihkan dengan tobat yang sempurna.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 15, 'كَلَّآ اِنَّهُمْ عَنْ رَّبِّهِمْ يَوْمَىِٕذٍ لَّمَحْجُوْبُوْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sekali-kali tidak! Sesungguhnya mereka pada hari itu benar-benar terhalang dari (melihat) Tuhannya. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menjelaskan bahwa orang-orang kafir yang tidak mau mengakui Al-Qur''an sebagai wahyu Allah terhalang dari rahmat-Nya di dunia dan akhirat. Mereka terhalang dari nikmat terbesar bagi seorang hamba, yaitu memandang dan melihat Allah di akhirat. Imam Syafi''i mengatakan ayat ini bisa dijadikan dalil bahwa orang-orang Mukmin tidak akan terhalangi dari memandang Allah di akhirat, sebagaimana firman-Nya:\n\nWajah-wajah (orang mukmin) pada hari itu berseri-seri, memandang Tuhannya. (al-Qiyamah/75: 22-23)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 16, 'ثُمَّ اِنَّهُمْ لَصَالُوا الْجَحِيْمِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kemudian, sesungguhnya mereka benar-benar masuk neraka. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah dijauhkan dari rahmat Allah dan tidak dapat mencapai cita-cita yang diangan-angankannya pada hari pembalasan, orang-orang kafir itu benar-benar masuk neraka Jahim yang sangat panas.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 17, 'ثُمَّ يُقَالُ هٰذَا الَّذِيْ كُنْتُمْ بِهٖ تُكَذِّبُوْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kemudian, dikatakan (kepada mereka), “Inilah (azab) yang dahulu kamu dustakan.”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian dikatakan kepada mereka ucapan yang mengandung cercaan sehingga penderitaan mereka itu berlipat ganda. Di samping penderitaan fisik, mereka juga menderita secara psikis (kejiwaan). Inilah azab yang selalu mereka dustakan ketika di dunia. Inilah balasan terhadap sikap mereka mendustakan berita-berita rasul yang benar, seperti anggapan mereka bahwa manusia tidak akan dibangkitkan kembali, Al-Qur''an itu dongengan orang-orang dahulu, Muhammad saw itu hanya seorang tukang sihir atau pendusta, dan berbagai macam tuduhan lainnya.\n\nDi akhirat nanti, akan menjadi jelas bagaimana fakta kebenaran yang sesungguhnya yang dapat disaksikan oleh pancaindra mereka. Alangkah sedihnya dirasakan oleh seorang yang sedang menderita azab bila diberi kecaman yang sangat menusuk hatinya, padahal ia sempat menempuh jalan keselamatannya jika ia benar-benar beriman dan bertakwa.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 18, 'كَلَّآ اِنَّ كِتٰبَ الْاَبْرَارِ لَفِيْ عِلِّيِّيْنَۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sekali-kali tidak! Sesungguhnya catatan orang-orang yang berbakti benar-benar tersimpan dalam ’Illiyyin. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah membantah tuduhan orang-orang durhaka yang mengingkari hari kebangkitan dan kebenaran Al-Qur''an. Sekali-kali tidak demikian. Sesungguhnya kitab orang-orang yang berbakti disimpan dalam suatu tempat yang tinggi yang diberi nama ''Illiyyun, yang disaksikan oleh malaikat-malaikat muqarrabin (yang dekat dengan Allah).'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 19, 'وَمَآ اَدْرٰىكَ مَا عِلِّيُّوْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan tahukah engkau apakah ’Illiyyin itu?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Untuk memperlihatkan keagungan ''Illiyyun itu, Allah mengemukakan pertanyaan, "Tahukah kamu apakah ''Illiyyun itu?" Allah lalu menjelaskannya langsung, "Yaitu kitab yang tertulis dan disaksikan oleh para malaikat yang didekatkan kepada Allah."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 20 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 20, 'كِتٰبٌ مَّرْقُوْمٌۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 20);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 20;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Yaitu) Kitab yang berisi catatan (amal),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Untuk memperlihatkan keagungan ''Illiyyun itu, Allah mengemukakan pertanyaan, "Tahukah kamu apakah ''Illiyyun itu?" Allah lalu menjelaskannya langsung, "Yaitu kitab yang tertulis dan disaksikan oleh para malaikat yang didekatkan kepada Allah."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 21 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 21, 'يَّشْهَدُهُ الْمُقَرَّبُوْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 21);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 21;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang disaksikan oleh (malaikat-malaikat) yang didekatkan (kepada Allah). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Untuk memperlihatkan keagungan ''Illiyyun itu, Allah mengemukakan pertanyaan, "Tahukah kamu apakah ''Illiyyun itu?" Allah lalu menjelaskannya langsung, "Yaitu kitab yang tertulis dan disaksikan oleh para malaikat yang didekatkan kepada Allah."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 22 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 22, 'اِنَّ الْاَبْرَارَ لَفِيْ نَعِيْمٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 22);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 22;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sesungguhnya orang-orang yang berbakti benar-benar berada dalam (surga yang penuh) kenikmatan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah menerangkan kitab orang-orang yang berbakti yang diberi nama ''Illiyyun, lalu Allah menerangkan keadaan orang yang berbakti (al-abrar) itu secara terperinci. Sesungguhnya mereka yang membenarkan apa-apa yang dibawa oleh Muhammad saw itu, benar-benar berada dalam kenikmatan yang besar, yaitu surga.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 23 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 23, 'عَلَى الْاَرَاۤىِٕكِ يَنْظُرُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 23);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 23;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'mereka (duduk) di atas dipan-dipan melepas pandangan. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Mereka duduk di atas dipan-dipan sambil memandang berbagai macam kenikmatan surga seperti bidadari, anak-anak mereka yang mati sebelum balig yang disediakan dalam surga untuk berkhidmat kepada orang tuanya, aneka macam makanan dan minuman, dan sebagainya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 24 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 24, 'تَعْرِفُ فِيْ وُجُوْهِهِمْ نَضْرَةَ النَّعِيْمِۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 24);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 24;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kamu dapat mengetahui dari wajah mereka kesenangan hidup yang penuh kenikmatan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini dijelaskan bahwa tanda-tanda kebahagiaan itu tampak pada wajah-wajah mereka. Orang yang melihatnya dapat merasakan kesenangan hidup mereka yang penuh dengan kenikmatan seperti tercantum dalam firman Allah:\n\nPada hari itu ada wajah-wajah yang berseri-seri, tertawa dan gembira ria. (''Abasa/80: 38-39)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 25 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 25, 'يُسْقَوْنَ مِنْ رَّحِيْقٍ مَّخْتُوْمٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 25);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 25;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mereka diberi minum dari khamar murni (tidak memabukkan) yang (tempatnya) masih dilak (disegel), ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini dijelaskan bahwa orang-orang yang berbakti itu diberi minum dari khamar murni yang bersih dari campuran dan tidak memabukkan. Khamar itu disimpan di tempat yang tersegel sehingga terpelihara dari pencemaran.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 26 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 26, 'خِتٰمُهٗ مِسْكٌ ۗوَفِيْ ذٰلِكَ فَلْيَتَنَافَسِ الْمُتَنَافِسُوْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 26);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 26;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'laknya dari kasturi. Dan untuk yang demikian itu hendaknya orang berlomba-lomba. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Segelnya adalah kasturi dan untuk mencapai kenikmatan yang demikian itu, hendaklah orang berlomba-lomba dalam rangka melaksanakan ketaatan dan ketakwaan kepada Allah. Barang siapa yang giat beribadah kepada-Nya, maka akan cepat pula melintasi jembatan as-sirathal-mustaqim yang berada di atas api neraka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 27 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 27, 'وَمِزَاجُهٗ مِنْ تَسْنِيْمٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 27);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 27;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan campurannya dari tasnim, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam dua ayat ini dijelaskan bahwa campuran khamar murni itu ialah dari tasnim yang datang dari daerah yang tinggi. Tasnim adalah mata air yang menjadi sumber air minum orang-orang yang didekatkan kepada Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 28 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 28, 'عَيْنًا يَّشْرَبُ بِهَا الْمُقَرَّبُوْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 28);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 28;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(yaitu) mata air yang diminum oleh mereka yang dekat (kepada Allah). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam dua ayat ini dijelaskan bahwa campuran khamar murni itu ialah dari tasnim yang datang dari daerah yang tinggi. Tasnim adalah mata air yang menjadi sumber air minum orang-orang yang didekatkan kepada Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 29 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 29, 'اِنَّ الَّذِيْنَ اَجْرَمُوْا كَانُوْا مِنَ الَّذِيْنَ اٰمَنُوْا يَضْحَكُوْنَۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 29);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 29;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sesungguhnya orang-orang yang berdosa adalah mereka yang dahulu menertawakan orang-orang yang beriman.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sesungguhnya orang-orang yang melampaui batas dan berdosa dahulu selalu menertawakan orang-orang yang beriman. Ketika Nabi Muhammad membawa Al-Qur''an dengan ajaran Islam yang mengandung kebajikan, ia mendapatkan perlawanan yang hebat dari orang-orang musyrik Mekah. Perlawanan ini terutama dari para pembesarnya yang sejak nenek moyangnya sudah biasa menyembah patung berhala. Mereka menentang ajaran apa saja yang datang dari luar yang bertentangan dengan kepercayaan mereka.\n\nTelah menjadi kebiasaan bagi orang-orang besar yang bersandar kepada kekuasaan dan kebendaan atau kekayaan bahwa mereka selalu bersikap sinis atau mencemoohkan pihak lain yang tidak sejalan dengan kepercayaan dan kebudayaan mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 30 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 30, 'وَاِذَا مَرُّوْا بِهِمْ يَتَغَامَزُوْنَۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 30);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 30;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan apabila mereka (orang-orang yang beriman) melintas di hadapan mereka, mereka saling mengedip-ngedipkan matanya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Apabila orang-orang yang beriman lewat di hadapan mereka, orang-orang yang berdosa itu saling memberi isyarat dengan kedipan mata yang mengandung unsur ejekan dan cemoohan. Apabila kembali kepada kaum kerabatnya, mereka membangga-banggakan diri karena telah mengadakan tindakan terhadap pengikut-pengikut Muhammad saw dengan berbagai tindakan yang mengandung unsur ejekan, cemoohan, dan permusuhan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 31 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 31, 'وَاِذَا انْقَلَبُوْٓا اِلٰٓى اَهْلِهِمُ انْقَلَبُوْا فَكِهِيْنَۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 31);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 31;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan apabila kembali kepada kaumnya, mereka kembali dengan gembira ria. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Apabila orang-orang yang beriman lewat di hadapan mereka, orang-orang yang berdosa itu saling memberi isyarat dengan kedipan mata yang mengandung unsur ejekan dan cemoohan. Apabila kembali kepada kaum kerabatnya, mereka membangga-banggakan diri karena telah mengadakan tindakan terhadap pengikut-pengikut Muhammad saw dengan berbagai tindakan yang mengandung unsur ejekan, cemoohan, dan permusuhan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 32 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 32, 'وَاِذَا رَاَوْهُمْ قَالُوْٓا اِنَّ هٰٓؤُلَاۤءِ لَضَاۤلُّوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 32);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 32;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan apabila mereka melihat (orang-orang mukmin), mereka mengatakan, “Sesungguhnya mereka benar-benar orang-orang sesat,”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Apabila melihat orang-orang Mukmin, orang-orang yang berdosa itu berkata bahwa sesungguhnya mereka melihat orang yang benar-benar sesat dan menyimpang dari kebenaran, karena mengubah kepercayaan yang sejak dahulu kala mereka warisi dari nenek moyang mereka tentang penyembahan berhala.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 33 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 33, 'وَمَآ اُرْسِلُوْا عَلَيْهِمْ حٰفِظِيْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 33);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 33;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'padahal (orang-orang yang berdosa itu), mereka tidak diutus sebagai penjaga (orang-orang mukmin). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menegaskan bahwa orang-orang kafir itu hidup di dunia tidak ditugaskan untuk melindungi atau menjaga orang-orang Mukmin. Mereka tidak berwenang menjaga orang-orang Mukmin karena orang-orang Mukmin tidak berada di bawah kekuasaan mereka. Oleh sebab itu, mereka tidak berhak mengejek, mengawasi, dan menyakiti orang-orang Mukmin yang tulus ikhlas beriman kepada Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 34 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 34, 'فَالْيَوْمَ الَّذِيْنَ اٰمَنُوْا مِنَ الْكُفَّارِ يَضْحَكُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 34);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 34;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka pada hari ini, orang-orang yang beriman yang menertawakan orang-orang kafir, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menjelaskan bahwa pada hari pembalasan giliran orang-orang Mukmin dalam surga mencemoohkan orang-orang kafir yang sedang menderita azab neraka. Pada hari itu, orang-orang yang beriman akan tertawa lebar karena menyaksikan pahala dan berbagai macam kenikmatan yang sesuai dengan janji Allah. Mereka juga menertawakan orang-orang kafir yang dahulu di dunia pernah mencemoohkan mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 35 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 35, 'عَلَى الْاَرَاۤىِٕكِ يَنْظُرُوْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 35);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 35;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'mereka (duduk) di atas dipan-dipan melepas pandangan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Mereka duduk santai di atas dipan-dipan sambil memandang apa yang diperbuat oleh Allah terhadap orang-orang kafir dalam neraka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 36 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 83, 36, 'هَلْ ثُوِّبَ الْكُفَّارُ مَا كَانُوْا يَفْعَلُوْنَ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 83 AND ayah_number = 36);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 83 AND ayah_number = 36;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Apakah orang-orang kafir itu diberi balasan (hukuman) terhadap apa yang telah mereka perbuat? ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Mereka meyakinkan bahwa sesungguhnya orang-orang kafir itu tidak dianiaya, tetapi hanya diberi balasan terhadap apa yang dahulu mereka kerjakan. Sebab, balasan itu biasanya diambil dari jenis perbuatan, yang baik dibalas dengan baik, dan yang jahat dibalas dengan jahat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

