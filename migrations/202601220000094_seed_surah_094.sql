-- Seed Surah 94 (Asy-Syarh) with 8 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/94.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (94, 'الشرح', 'Asy-Syarh', 8, 'Makkiyah', 'Lapang')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 94, 1, 'اَلَمْ نَشْرَحْ لَكَ صَدْرَكَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 94 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 94 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bukankah Kami telah melapangkan dadamu (Muhammad)?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini dinyatakan bahwa Allah telah melapangkan dada Nabi Muhammad dan menyelamatkannya dari ketidaktahuan tentang syariat. Nabi juga dirisaukan akibat kebodohan dan keras kepala kaumnya. Mereka tidak mau mengikuti kebenaran, sedang Nabi saw selalu mencari jalan untuk melepaskan mereka dari lembah kebodohan, sehingga ia menemui jalan untuk itu dan menyelamatkan mereka dari kehancuran yang sedang mereka alami.\n\nMaksud dari ayat ini adalah Allah telah membersihkan jiwa Nabi saw dari segala macam perasaan cemas, sehingga dia tidak gelisah, susah, dan gusar. Nabi juga dijadikan selalu tenang dan percaya akan pertolongan dan bantuan Allah kepadanya. Nabi juga yakin bahwa Dia yang menugasinya sebagai rasul, sekali-kali tidak akan membantu musuh-musuhnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 94, 2, 'وَوَضَعْنَا عَنْكَ وِزْرَكَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 94 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 94 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan Kami pun telah menurunkan bebanmu darimu,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah mengungkapkan bahwa Dia berkenan meringankan beban yang dipikulkan kepada Nabi Muhammad dalam menunaikan penyebaran risalah-Nya. Dengan demikian, dengan mudah Nabi dapat menyampaikannya kepada manusia, dan dengan jiwa yang tenteram menghadapi tantangan musuh-musuhnya walaupun kadang-kadang tantangan itu berbahaya.\n\nSetelah Muhammad diangkat menjadi rasul, maka beliau mulai melaksanakan tugas menyampaikan agama Allah kepada orang-orang Quraisy. Karena timbul reaksi yang kuat dari mereka, beliau menyiarkan agama Islam dengan sembunyi-sembunyi. Oleh karena itu, beliau merasakan sangat berat melakukan tugas itu. Dengan masuk Islamnya beberapa orang pembesar Quraisy seperti Umar bin al-Khaththab, Hamzah, dan lain-lain, Rasulullah merasa ringan melaksanakan tugasnya. Hal ini ditambah lagi dengan datangnya perintah Allah untuk menyiarkan agama Islam dengan terang-terangan dan adanya jaminan Allah untuk menolong beliau, sebagaimana firman-Nya:\n\nMaka sampaikanlah (Muhammad) secara terang-terangan segala apa yang diperintahkan (kepadamu) dan berpalinglah dari orang yang musyrik. Sesungguhnya Kami memelihara engkau (Muhammad) dari (kejahatan) orang yang memperolok-olokkan (engkau), (yaitu) orang yang menganggap adanya tuhan selain Allah. Mereka kelak akan mengetahui (akibatnya). (al-hijr/15: 94-96)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 94, 3, 'الَّذِيْٓ اَنْقَضَ ظَهْرَكَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 94 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 94 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang memberatkan punggungmu, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah mengungkapkan bahwa Dia berkenan meringankan beban yang dipikulkan kepada Nabi Muhammad dalam menunaikan penyebaran risalah-Nya. Dengan demikian, dengan mudah Nabi dapat menyampaikannya kepada manusia, dan dengan jiwa yang tenteram menghadapi tantangan musuh-musuhnya walaupun kadang-kadang tantangan itu berbahaya.\n\nSetelah Muhammad diangkat menjadi rasul, maka beliau mulai melaksanakan tugas menyampaikan agama Allah kepada orang-orang Quraisy. Karena timbul reaksi yang kuat dari mereka, beliau menyiarkan agama Islam dengan sembunyi-sembunyi. Oleh karena itu, beliau merasakan sangat berat melakukan tugas itu. Dengan masuk Islamnya beberapa orang pembesar Quraisy seperti Umar bin al-Khaththab, Hamzah, dan lain-lain, Rasulullah merasa ringan melaksanakan tugasnya. Hal ini ditambah lagi dengan datangnya perintah Allah untuk menyiarkan agama Islam dengan terang-terangan dan adanya jaminan Allah untuk menolong beliau, sebagaimana firman-Nya:\n\nMaka sampaikanlah (Muhammad) secara terang-terangan segala apa yang diperintahkan (kepadamu) dan berpalinglah dari orang yang musyrik. Sesungguhnya Kami memelihara engkau (Muhammad) dari (kejahatan) orang yang memperolok-olokkan (engkau), (yaitu) orang yang menganggap adanya tuhan selain Allah. Mereka kelak akan mengetahui (akibatnya). (al-hijr/15: 94-96)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 94, 4, 'وَرَفَعْنَا لَكَ ذِكْرَكَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 94 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 94 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan Kami tinggikan sebutan (nama)mu bagimu.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini diterangkan bahwa Allah mengangkat derajat Nabi Muhammad, meninggikan kedudukan dan memperbesar pengaruhnya. Apakah ada kedudukan yang lebih mulia dari kedudukan nubuwwah (kenabian) yang telah dianugerahkan Allah kepadanya? Apakah ada yang lebih utama dari tersebarnya ke seluruh dunia pengikut-pengikut yang setia yang patuh menjalankan segala perintah dan menjauhi segala larangannya.\n\nMereka melakukan yang demikian itu karena yakin bahwa dalam menjalankan perintah-perintahnya itu terdapat keuntungan yang besar, sedang mendurhakainya adalah kerugian besar. Apakah ada sebutan yang lebih mulia dan dapat membanggakan hati daripada menyebut namanya bersama nama Allah Yang Maha Pengasih, sebagai tanda kesempurnaan insani? Sebutan mana lagi yang lebih mulia daripada sebutan yang dijadikan tanda pengakuan kerasulannya dan pengakuan tersebut dijadikan syarat seseorang menjadi penghuni surga.\n\nSelain dari itu, Nabi saw telah membebaskan umat manusia dari perbudakan, kebodohan, dan kerusakan pikiran, serta membawa manusia kembali kepada fitrah yang menjamin kebebasan berpikir dan berkehendak. Dengan demikian, manusia dapat menemukan yang hak dan mengetahui siapakah sebenarnya yang harus disembah. Mereka kemudian bersatu dalam keimanan dan beribadah kepada Allah Yang Maha Esa, sesudah mereka berbeda-beda dalam penyembuhan mereka. Beliaulah yang menyingkirkan awan-awan kegelapan dari mereka, serta menerangi jalan yang harus ditempuh untuk menuju kepada kejayaan dan kebahagiaan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 94, 5, 'فَاِنَّ مَعَ الْعُسْرِ يُسْرًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 94 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 94 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka sesungguhnya beserta kesulitan ada kemudahan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengungkapkan bahwa sesungguhnya di dalam setiap kesempitan, terdapat kelapangan, dan di dalam setiap kekurangan sarana untuk mencapai suatu keinginan, terdapat pula jalan keluar. Namun demikian, dalam usaha untuk meraih sesuatu itu harus tetap berpegang pada kesabaran dan tawakal kepada Allah. Ini adalah sifat Nabi saw, baik sebelum beliau diangkat menjadi rasul maupun sesudahnya, ketika beliau terdesak menghadapi tantangan kaumnya.\n\nWalaupun demikian, beliau tidak pernah gelisah dan tidak pula mengubah tujuan, tetapi beliau bersabar menghadapi kejahatan kaumnya dan terus menjalankan dakwah sambil berserah diri dengan tawakal kepada Allah dan mengharap pahala daripada-Nya. Begitulah keadaan Nabi saw sejak permulaan dakwahnya. Pada akhirnya, Allah memberikan kepadanya pendukung-pendukung yang mencintai beliau sepenuh hati dan bertekad untuk menjaga diri pribadi beliau dan agama yang dibawanya. Mereka yakin bahwa hidup mereka tidak akan sempurna kecuali dengan menghancurleburkan segala sendi kemusyrikan dan kekufuran. Lalu mereka bersedia menebus pahala dan nikmat yang disediakan di sisi Allah bagi orang-orang yang berjihad pada jalan-Nya dengan jiwa, harta, dan semua yang mereka miliki. Dengan demikian, mereka sanggup menghancurkan kubu-kubu pertahanan raja-raja Persi dan Romawi.\n\nAyat tersebut seakan-akan menyatakan bahwa bila keadaan telah terlalu gawat, maka dengan sendirinya kita ingin keluar dengan selamat dari kesusahan tersebut dengan melalui segala jalan yang dapat ditempuh, sambil bertawakal kepada Allah. Dengan demikian, kemenangan bisa tercapai walau bagaimanapun hebatnya rintangan dan cobaan yang dihadapi.\n\nDengan ini pula, Allah memberitahukan kepada Nabi Muhammad bahwa keadaannya akan berubah dari miskin menjadi kaya, dari tidak mempunyai teman sampai mempunyai saudara yang banyak dan dari kebencian kaumnya kepada kecintaan yang tidak ada taranya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 94, 6, 'اِنَّ مَعَ الْعُسْرِ يُسْرًاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 94 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 94 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sesungguhnya beserta kesulitan itu ada kemudahan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini adalah ulangan ayat sebelumnya untuk menguatkan arti yang terkandung dalam ayat yang terdahulu. Bila kesulitan itu dihadapi dengan tekad yang sungguh-sungguh dan berusaha dengan sekuat tenaga dan pikiran untuk melepaskan diri darinya, tekun dan sabar serta tidak mengeluh atas kelambatan datangnya kemudahan, pasti kemudahan itu akan tiba.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 94, 7, 'فَاِذَا فَرَغْتَ فَانْصَبْۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 94 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 94 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka apabila engkau telah selesai (dari sesuatu urusan), tetaplah bekerja keras (untuk urusan yang lain),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sesudah menyatakan nikmat-nikmat-Nya kepada Nabi Muhammad dan janji-Nya akan menyelamatkan beliau dari bahaya-bahaya yang menimpa, Allah memerintahkan kepadanya agar menyukuri nikmat-nikmat tersebut dengan tekun beramal saleh sambil bertawakal kepada-Nya. Bila telah selesai mengerjakan suatu amal perbuatan, maka hendaklah beliau mengerjakan amal perbuatan lainnya. Sebab, dalam keadaan terus beramal, beliau akan menemui ketenangan jiwa dan kelapangan hati. Ayat ini menganjurkan agar Nabi saw tetap rajin dan terus-menerus tekun beramal.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 94, 8, 'وَاِلٰى رَبِّكَ فَارْغَبْ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 94 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 94 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan hanya kepada Tuhanmulah engkau berharap.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menegaskan agar Nabi Muhammad tidak mengharapkan pahala dari hasil amal perbuatannya, akan tetapi hanya menuntut keridaan Allah semata. Karena Dia-lah sebenarnya yang dituju dalam amal ibadah dan pada-Nyalah tempat merendahkan diri.'
    )
    ON CONFLICT DO NOTHING;
END $$;

