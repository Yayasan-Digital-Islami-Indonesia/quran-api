-- Seed Surah 68 (Al-Qalam) with 52 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/68.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (68, 'القلم', 'Al-Qalam', 52, 'Makkiyah', 'Pena')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 1, 'نۤ ۚوَالْقَلَمِ وَمَا يَسْطُرُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Nun. Demi pena dan apa yang mereka tuliskan, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Para mufasir berbeda pendapat tentang arti huruf "nun" yang terdapat dalam ayat ini. (Selanjutnya lihat jilid I dalam keterangan tentang huruf-huruf hijaiah yang terdapat pada permulaan surah dalam Al-Qur''an). Dalam ayat ini Allah bersumpah dengan al-qalam (pena) dan segala macam yang ditulis dengannya.\n\nSuatu sumpah dilakukan adalah untuk meyakinkan pendengar atau orang yang diajak berbicara bahwa ucapan atau perkataan yang disampaikan itu adalah benar, tidak diragukan sedikit pun. Akan tetapi, sumpah itu kadang-kadang mempunyai arti yang lain, yaitu untuk mengingatkan orang yang diajak berbicara atau pendengar bahwa yang dipakai untuk bersumpah itu adalah suatu yang mulia, bernilai, bermanfaat, dan berharga. Oleh karena itu, perlu dipikirkan dan direnungkan agar dapat menjadi iktibar dan pengajaran dalam kehidupan dunia yang fana ini. \n\nSumpah dalam arti kedua ini adalah sumpah-sumpah Allah yang terdapat dalam surah-surah Al-Qur''an, seperti wal-''asr (demi masa), was-sama'' (demi langit), wal-fajr (demi fajar), dan sebagainya. Seakan-akan dengan sumpah itu, Allah mengingatkan kepada manusia agar memperhatikan masa, langit, fajar, dan sebagainya. Segala sesuatu yang berhubungan dengan yang disebutkan itu perlu diperhatikan karena ada kaitannya dengan hidup dan kehidupan manusia dalam mencapai kebahagiaan di dunia dan di akhirat.\n\nDalam ayat ini, Allah bersumpah dengan qalam (pena) dan segala sesuatu yang ditulis dengannya. Hal itu untuk menyatakan bahwa qalam itu termasuk nikmat besar yang dianugerahkan Allah kepada manusia, di samping nikmat pandai berbicara dan menjelaskan sesuatu kepada orang lain. Dengan qalam, orang dapat mencatat ajaran agama Allah yang disampaikan kepada para rasul-Nya, dan mencatat pengetahuan-pengetahuan Allah yang baru ditemukannya. Dengan surat yang ditulis dengan qalam, orang dapat menyampaikan berita gembira dan berita duka kepada keluarga dan teman akrabnya. Dengan qalam, orang dapat mencerdaskan dan mendidik bangsanya, dan banyak lagi nikmat yang diperoleh manusia dengan qalam itu.\n\nPada masa Rasulullah saw, masyarakat Arab telah mengenal qalam dan kegunaannya, yaitu untuk menulis segala sesuatu yang terasa, yang terpikir, dan yang akan disampaikan kepada orang lain. Sekalipun demikian, belum banyak di antara mereka yang mempergunakannya karena masih banyak yang buta huruf dan ilmu pengetahuan belum berkembang. \n\nPada masa itu, kegunaan qalam sebagai sarana menyampaikan agama Allah sangat dirasakan. Dengan qalam, ayat-ayat Al-Qur''an ditulis di pelepah-pelepah kurma dan tulang-tulang binatang atas perintah Rasulullah. Beliau sendiri sangat menghargai orang-orang yang pandai menulis dan membaca. Hal ini tampak pada keputusan Nabi Muhammad saw pada Perang Badar, yaitu seorang kafir yang ditawan kaum Muslimin dapat dibebaskan dengan cara membayar uang tebusan atau mengajar kaum Muslimin menulis dan membaca.\n\nDengan ayat ini, seakan-akan Allah mengisyaratkan kepada kaum Muslimin bahwa ilmu-Nya sangat luas, tiada batas dan tiada terhingga. Oleh karena itu, cari dan tuntutlah ilmu-Nya yang sangat luas itu agar dapat dimanfaatkan untuk kepentingan duniawi. Untuk mencatat dan menyampaikan ilmu kepada orang lain dan agar tidak hilang karena lupa atau orang yang memilikinya meninggal dunia, diperlukan qalam sebagai alat untuk menuliskannya. Oleh karena itu, qalam erat hubungannya dan tidak dapat dipisahkan dengan perkembangan ilmu, kesejahteraan, dan kemaslahatan umat manusia.\n\nMasa turun ayat ini dekat dengan ayat Al-Qur''an yang pertama kali diturunkan Allah kepada Nabi Muhammad saw, yaitu lima ayat pertama Surah al-''Alaq. Setelah Nabi menerima ayat 1-5 Surah al-''Alaq itu, beliau pulang ke rumahnya dalam keadaan gemetar dan ketakutan. Setelah hilang rasa gentar dan takutnya, Nabi saw dibawa Khadijah, istri beliau, ke rumah Waraqah bin Naufal, anak dari saudara ayahnya (saudara sepupu). Semua yang terjadi atas diri Rasulullah di gua Hira itu disampaikan kepada Waraqah, dan menanggapi hal itu, ia berkata, "Yang datang kepada Muhammad saw itu adalah seperti yang pernah datang kepada nabi-nabi sebelumnya. Oleh karena itu, yang disampaikan malaikat Jibril itu adalah agama yang benar-benar berasal dari Allah." Kemudian Waraqah mengatakan bahwa ia akan mengikuti agama yang dibawa Muhammad itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 2, 'مَآ اَنْتَ بِنِعْمَةِ رَبِّكَ بِمَجْنُوْنٍ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dengan karunia Tuhanmu engkau (Muhammad) bukanlah orang gila. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menyatakan dengan tegas kepada Nabi Muhammad saw bahwa beliau tidak memerlukan suatu nikmat pun dari orang lain selain dari nikmat Allah. Mungkinkah Muhammad itu dikatakan seorang gila, karena memperoleh nikmat dan karunia yang sangat besar dari Allah? Pada ayat lain dinyatakan:\n\nDan mereka berkata, "Wahai orang yang kepadanya diturunkan Al-Qur''an, sesungguhnya engkau (Muhammad) benar-benar orang gila." (al-hijr/15: 6)\n\nSetelah orang-orang Quraisy mengetahui pernyataan Waraqah bin Naufal itu dan Rasulullah menyampaikan agama Islam kepada mereka, maka mereka menuduh bahwa Muhammad saw dihinggapi penyakit gila atau seorang tukang tenung yang ingin memalingkan orang-orang Quraisy dari agama nenek moyang mereka. Oleh karena itu, mereka memerintahkan kepada kaumnya agar jangan sekali-kali mendengarkan ucapan Muhammad saw, dan jangan mempercayai bahwa yang diterimanya benar-benar agama Allah. Mungkinkah seorang manusia, seorang gila atau seorang tukang tenung dipercaya Allah menyampaikan agama-Nya?\n\nSehubungan dengan sikap orang-orang Quraisy itu, turunlah ayat ini untuk menguatkan risalah Muhammad saw, menguatkan hati beliau, dan mengingatkan karunia yang telah dilimpahkan kepadanya. Dengan ini, Allah mengisyaratkan bahwa agama yang benar dan berasal dari-Nya ialah agama yang mendorong manusia mencari dan menuntut ilmu-Nya yang luas, kemudian memanfaatkan ilmu itu untuk kepentingan manusia dan kemanusiaan. \n\nSetiap ilmu Allah yang diperoleh itu harus ditulis dengan pena, agar dapat dipelajari dan dibaca oleh orang lain, sehingga ilmu itu berkembang. Dengan ilmu itu juga, manusia akan dapat mencapai kemajuan. Oleh karena itu, belajar membaca dan menulis dengan pena adalah pangkal kemajuan suatu umat. Apabila manusia ingin maju, maka galakkanlah belajar menulis dan membaca. Dengan turunnya ayat ini, hati Rasulullah saw bertambah mantap, tenang, dan kuat untuk melaksanakan tugasnya menyampaikan agama Allah. Beliau mempunyai argumentasi yang kuat pula dalam menghadapi sikap orang-orang Quraisy.\n\nDengan ayat ini, Allah menjawab tuduhan orang-orang Quraisy itu dengan menyuruh mereka mempelajari kembali sejarah hidup Nabi Muhammad yang besar dan tumbuh di hadapan mata kepala mereka sendiri. Bukankah sebelum ia diutus menjadi rasul, orang-orang yang mengatakannya gila itu menghormati dan menjadikannya sebagai orang yang paling mereka percayai? Apakah mereka tidak ingat lagi bahwa di antara mereka pernah terjadi perselisihan tentang siapa yang berhak mengangkat hajar Aswad dan meletakkannya pada tempatnya yang semula. Peristiwa itu hampir menimbulkan pertumpahan darah, dan tidak seorang pun yang dapat mendamaikannya. Lalu mereka minta kepada Muhammad untuk bersedia menjadi juru damai di antara mereka. Mereka menerima keputusan yang ditetapkan Muhammad atas mereka, dan mereka menganggap bahwa keputusan yang diberikannya itu adalah keputusan yang paling adil.\n\nMungkinkah seorang yang semula baik, dianugerahi Allah kejujuran, kehalusan budi pekerti, selalu menolong dan membantu siapa saja yang memerlukannya, dan menjadi contoh dan teladan bagi orang Quraisy, tiba-tiba menjadi gila karena ia melaksanakan perintah Tuhan semesta alam, yaitu menyampaikan agama Allah dan berhijrah ke Medinah.\n\nJika diperhatikan susunan ayat ini, ada suatu teladan yang harus ditiru oleh kaum Muslimin, yaitu walaupun orang-orang Quraisy telah bersikap kasar dan menyakiti hati dan jasmaninya, namun Rasulullah saw membantah tuduhan-tuduhan mereka dengan cara yang baik dan mendidik. Beliau menyuruh mereka menggunakan akal pikiran yang benar dan menggunakan norma-norma yang baik.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 3, 'وَاِنَّ لَكَ لَاَجْرًا غَيْرَ مَمْنُوْنٍۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sesungguhnya engkau pasti mendapat pahala yang besar yang tidak putus-putusnya. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat yang lalu digambarkan tuduhan orang-orang kafir Mekah yang menyatakan bahwa Nabi Muhammad itu gila karena berani melawan ajaran nenek moyang mereka dan terus menerus mendakwahkan ajaran baru yang bertentangan dengan ajaran mereka, yang menyembah patung-patung dan berhala, padahal semua yang dilakukan Nabi adalah atas perintah Allah. Allah yang memberikan nikmat kepada Nabi dengan ketabahan dan semangat yang besar dalam melaksanakan dakwah. Pada ayat ini, Allah menegaskan bahwa Nabi benar-benar memperoleh pahala yang terus menerus tiada terputus. Maka hal ini menegaskan bahwa Nabi Muhammad bukanlah orang yang gila karena beliau seorang yang memperoleh pahala dari Allah\n\nAyat ini juga termasuk yang menerangkan sesuatu yang akan terjadi pada masa yang akan datang, karena mengisyaratkan bahwa Nabi Muhammad dan kaum Muslimin akan memperoleh kemenangan besar. Berkat pertolongan dan perlindungan Allah, usaha dan jerih payahnya membawa hasil dengan tersebarnya agama Islam di Jazirah Arab, yang kemudian memancar ke seluruh penjuru dunia. Orang-orang Quraisy yang semula berkuasa dan menganut agama syirik dalam masa 23 tahun menjadi mukmin dan menjadi pembela-pembela agama Islam. Hal ini merupakan kemenangan yang besar bagi Muhammad saw dan kaum Muslimin, dan di akhirat nanti mereka akan memperoleh balasan kenikmatan yang kekal di dalam surga.\n\nDengan pernyataan Allah yang demikian dan isyarat yang dipahami Nabi saw dari firman-Nya itu, bertambahlah kekuatan hati, kebulatan tekad, dan kesabaran beliau dalam melaksanakan dakwah, dengan tidak menghiraukan ejekan dan tekanan tindakan orang-orang Quraisy.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 4, 'وَاِنَّكَ لَعَلٰى خُلُقٍ عَظِيْمٍ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sesungguhnya engkau benar-benar berbudi pekerti yang luhur. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini memperkuat alasan yang dikemukakan ayat di atas dengan menyatakan bahwa pahala yang tidak terputus itu diperoleh Rasulullah saw sebagai buah dari akhlak beliau yang mulia. Pernyataan bahwa Nabi Muhammad mempunyai akhlak yang agung merupakan pujian Allah kepada beliau, yang jarang diberikan-Nya kepada hamba-hamba-Nya yang lain. Secara tidak langsung, ayat ini juga menyatakan bahwa tuduhan-tuduhan orang musyrik bahwa Nabi Muhammad adalah orang gila merupakan tuduhan yang tidak beralasan sedikit pun, karena semakin baik budi pekerti seseorang semakin jauh ia dari penyakit gila. Sebaliknya semakin buruk budi pekerti seseorang, semakin dekat ia kepada penyakit gila. Nabi Muhammad adalah seorang yang berakhlak agung, sehingga jauh dari perbuatan gila.\n\nAyat ini menggambarkan tugas Rasulullah saw sebagai seorang yang berakhlak mulia. Beliau diberi tugas menyampaikan agama Allah kepada manusia agar dengan menganut agama itu mereka mempunyai akhlak yang mulia pula. Beliau bersabda:\n\nSesungguhnya aku diutus hanya untuk menyempurnakan akhlak mulia (dari manusia). (Riwayat Ahmad dari Abu Hurairah)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 5, 'فَسَتُبْصِرُ وَيُبْصِرُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka kelak engkau akan melihat dan mereka (orang-orang kafir) pun akan melihat, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kedua ayat ini merupakan peringatan kepada kaum musyrikin dan menyatakan dengan pasti bahwa mereka benar-benar dalam keadaan sesat, karena tidak berapa lama lagi akan kelihatan kebenaran ajaran agama yang dibawa Nabi Muhammad saw. Akan kelihatan kekuatan Islam dan kelemahan kaum musyrikin itu. Kaum Muslimin akan mengalahkan mereka, dan agama Islam menjadi ajaran yang tersebar luas.\n\nDengan keterangan ini jelaslah bahwa Nabi Muhammad saw tidak gila, tetapi orang-orang kafir yang menolak kebenaran dan terus menerus mengikuti hawa nafsu itulah yang kehilangan akal sehat. Hal ini justru berbahaya bagi mereka karena sikap dan pendirian yang salah ini akan membawa kehancuran dan kehinaan bagi mereka. Di dunia mereka akan kehilangan pengaruh dan kekuasaan seperti terjadi pada beberapa kali peperangan dengan orang Islam yaitu pada Perang Badar, Perang Uhud, dan Perang Khandaq. Di akhirat mereka pasti akan menyesali kesesatan mereka karena akan mendapat siksa yang pedih karena penolakan mereka pada dakwah Nabi Muhammad saw.\n\nPada hari Kiamat, semua perbuatan manusia dihisab, ditimbang, dan diperlihatkan kepada masing-masing mereka. Di saat itu, kaum musyrikin melihat dengan nyata, siapakah di antara mereka yang benar, apakah Rasul yang mereka tuduh gila ataukah mereka sendiri? Di sini tampak dengan jelas bahwa Nabi Muhammad saw adalah yang benar, sedangkan mereka dilemparkan ke dalam neraka Jahanam. Firman Allah:\n\nKelak mereka akan mengetahui siapa yang sebenarnya sangat pendusta (dan) sombong itu. (al-Qamar/54: 26)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 6, 'بِاَيِّىكُمُ الْمَفْتُوْنُ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'siapa di antara kamu yang gila? ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kedua ayat ini merupakan peringatan kepada kaum musyrikin dan menyatakan dengan pasti bahwa mereka benar-benar dalam keadaan sesat, karena tidak berapa lama lagi akan kelihatan kebenaran ajaran agama yang dibawa Nabi Muhammad saw. Akan kelihatan kekuatan Islam dan kelemahan kaum musyrikin itu. Kaum Muslimin akan mengalahkan mereka, dan agama Islam menjadi ajaran yang tersebar luas.\n\nDengan keterangan ini jelaslah bahwa Nabi Muhammad saw tidak gila, tetapi orang-orang kafir yang menolak kebenaran dan terus menerus mengikuti hawa nafsu itulah yang kehilangan akal sehat. Hal ini justru berbahaya bagi mereka karena sikap dan pendirian yang salah ini akan membawa kehancuran dan kehinaan bagi mereka. Di dunia mereka akan kehilangan pengaruh dan kekuasaan seperti terjadi pada beberapa kali peperangan dengan orang Islam yaitu pada Perang Badar, Perang Uhud, dan Perang Khandaq. Di akhirat mereka pasti akan menyesali kesesatan mereka karena akan mendapat siksa yang pedih karena penolakan mereka pada dakwah Nabi Muhammad saw.\n\nPada hari Kiamat, semua perbuatan manusia dihisab, ditimbang, dan diperlihatkan kepada masing-masing mereka. Di saat itu, kaum musyrikin melihat dengan nyata, siapakah di antara mereka yang benar, apakah Rasul yang mereka tuduh gila ataukah mereka sendiri? Di sini tampak dengan jelas bahwa Nabi Muhammad saw adalah yang benar, sedangkan mereka dilemparkan ke dalam neraka Jahanam. Firman Allah:\n\nKelak mereka akan mengetahui siapa yang sebenarnya sangat pendusta (dan) sombong itu. (al-Qamar/54: 26)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 7, 'اِنَّ رَبَّكَ هُوَ اَعْلَمُ بِمَنْ ضَلَّ عَنْ سَبِيْلِهٖۖ وَهُوَ اَعْلَمُ بِالْمُهْتَدِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, Tuhanmu, Dialah yang paling mengetahui siapa yang sesat dari jalan-Nya; dan Dialah yang paling mengetahui siapa orang yang mendapat petunjuk. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini, Allah menegaskan lagi pernyataan-Nya pada ayat dahulu dengan mengatakan kepada Nabi Muhammad saw bahwa orang-orang musyrik itu pasti mengetahui perbuatan-perbuatan nyata yang telah dilaksanakannya. Allah dan Nabi Muhammad lebih mengetahui siapa yang menyimpang dari jalan yang benar yang telah dibentangkan untuknya sehingga mereka memperoleh kesengsaraan hidup di dunia dan di akhirat. Allah mengetahui pula siapa yang mengikuti jalan yang benar sehingga memperoleh segala yang mereka inginkan yaitu kebahagiaan hidup di dunia dan di akhirat, tindakan orang-orang yang menyimpang dari jalan yang benar, karena itu mereka akan merasakan kesengsaraan di dunia, seperti kekalahan dalam peperangan dan kehancuran kepercayaan mereka dan di akhirat mereka mendapat azab yang pedih.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 8, 'فَلَا تُطِعِ الْمُكَذِّبِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka janganlah engkau patuhi orang-orang yang mendustakan (ayat-ayat Allah).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini memerintahkan Rasulullah saw agar tetap menolak segala macam tawaran, ajakan, dan keinginan orang-orang musyrik Mekah yang tidak mau mendengarkan ayat-ayat Allah, bahkan mereka mendustakannya. Rasulullah dilarang mengikuti mereka, karena mereka berada di jalan yang sesat sedang beliau telah berada di jalan yang lurus.\n\nPada ayat lain, Allah berfirman:\n\nDan jika kamu mengikuti kebanyakan orang di bumi ini, niscaya mereka akan menyesatkanmu dari jalan Allah. Yang mereka ikuti hanya persangkaan belaka dan mereka hanyalah membuat kebohongan. (al-An''am/6: 116)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 9, 'وَدُّوْا لَوْ تُدْهِنُ فَيُدْهِنُوْنَۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mereka menginginkan agar engkau bersikap lunak maka mereka bersikap lunak (pula). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa orang-orang musyrik ingin agar Rasulullah mengikuti dan memenuhi permintaan, dan memperkenankan ajakan mereka agar Rasulullah bersikap lunak terhadap mereka. Jika Rasulullah dan kaum Muslimin mau bersikap lunak terhadap mereka, maka mereka akan bersikap lunak pula terhadap beliau dan kaum Muslimin.\n\nMenurut suatu riwayat, orang-orang Quraisy pernah menawarkan kepada Rasulullah agar bersedia mengurangi kegiatan dakwahnya, dan tidak lagi mencela berhala-berhala mereka. Bahkan mereka bersedia mengikuti ajaran Nabi selama sekali waktu, asalkan setelah itu Nabi dan pengikutnya mengikuti ajaran mereka sekali waktu, begitu secara bergilir. Ajakan ini tentu saja ditolak oleh Nabi karena tidak sesuai dengan dakwah yang dibawanya untuk meninggalkan kemusyrikan dan mengganti dengan ajaran tauhid.\n\nAjakan ini bermula ketika Rasulullah menyampaikan agama Allah kepada orang-orang musyrik Mekah dengan terang-terangan dan penuh keberanian, walaupun pada waktu itu kaum Muslimin dalam keadaan lemah dan musuh dalam keadaan kuat. Seluruh alasan-alasan yang dikemukakan Rasulullah yang berhubungan dengan bukti kebenaran risalahnya tidak dapat dijawab oleh orang-orang musyrik. Bahkan sebaliknya, jawaban mereka itu menunjukkan kelemahan kepercayaan yang mereka anut. Oleh karena itu, mereka meminta Rasulullah agar bersikap lunak terhadap mereka dan menghentikan celaan-celaan beliau kepada berhala-berhala yang mereka sembah. Jika Rasulullah saw bersedia menerima tawaran itu, maka mereka bersedia pula memenuhi keinginan-keinginan beliau, seperti bersikap lunak terhadap Rasulullah saw dan kaum Muslimin. Mereka juga bersedia ikut menyembah Allah di samping tetap dibolehkan menyembah tuhan-tuhan mereka dan melaksanakan kebiasaan nenek moyang mereka. Mereka juga bersedia mencarikan istri yang disenangi Nabi saw atau mengumpulkan harta yang diinginkannya.\n\nDilandasi keinginan untuk meringankan penderitaan yang sedang dialami sahabat-sahabatnya akibat siksaan yang dilakukan orang-orang musyrik, maka terlintas dalam pikiran Nabi Muhammad untuk bersikap lunak terhadap orang-orang musyrik dengan menerima sebahagian tawaran mereka. Maka turunlah ayat ini yang memperingatkan Nabi saw agar jangan sekali-kali bersikap lunak terhadap mereka, tetapi tetap seperti biasa, yaitu mengambil sikap keras dan tegas.\n\nAyat ini senada dengan firman Allah:\n\nDan sekiranya Kami tidak memperteguh (hati)mu, niscaya engkau hampir saja condong sedikit kepada mereka. Jika demikian, tentu akan Kami rasakan kepadamu (siksaan) dua kali lipat di dunia ini dan dua kali lipat setelah mati, dan engkau (Muhammad) tidak akan mendapat seorang penolong pun terhadap Kami. (al-Isra''/17: 74-75)\n\nJika dikaji maksud ayat ini, akan diketahui bahwa ada tujuan tertentu dari orang-orang musyrik, yang tidak boleh diketahui oleh Rasulullah, dalam mengemukakan tawaran mereka kepada beliau. Mereka ingin menipu Rasulullah saw dengan ajakan itu, dimana jika diterima, maka agama Islam yang baru disampaikan itu akan bercampur dengan unsur-unsur syirik. Akan terjadi saling mempengaruhi antara kedua macam kepercayaan itu, sehingga agama Islam tidak lagi mempunyai akidah tauhid yang murni.\n\nTeguran Allah kepada Rasulullah saw ini juga merupakan teguran kepada seluruh kaum Muslimin, agar mereka berhati-hati dalam soal akidah. Jangan sekali-kali memasukkan ke dalam akidah Islam unsur syirik walaupun sedikit.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 10, 'وَلَا تُطِعْ كُلَّ حَلَّافٍ مَّهِيْنٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan janganlah engkau patuhi setiap orang yang suka bersumpah dan suka menghina,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah mengingatkan dan memerintahkan Nabi Muhammad agar:\n\n1.Tidak mengikuti keinginan orang-orang yang mudah mengucapkan sumpah, karena yang suka bersumpah itu hanyalah seorang pendusta. Sedangkan dusta itu pangkal kejahatan dan sumber segala macam perbuatan maksiat. Oleh karena itu pula, agama Islam menyatakan bahwa dusta itu salah satu dari tanda-tanda orang munafik. Nabi Muhammad bersabda, sebagaimana diriwayatkan al-Bukhari:Tanda-tanda orang munafik itu ada tiga: jika berbicara, ia berdusta, jika dipercaya, ia khianat, dan jika berjanji, ia tidak menepati janjinya. (Riwayat al-Bukhari, Muslim, at-Tirmidhi, dan an-Nasa''i dari Abu Hurairah)\n\nOrang yang suka bersumpah adalah orang yang tidak baik. Orang yang tidak baik pikiran dan maksudnya kepada orang lain menyangka bahwa orang lain demikian pula kepadanya. Oleh karena itu, untuk meyakinkan orang lain akan kebenaran dirinya, ia pun bersumpah.\n\n1.Tidak mengikuti orang yang berpikiran hina dan menyesatkan, seperti ajakan mengikuti agama mereka dalam beberapa hal.\n\n1.Tidak mengikuti orang yang selalu mencela orang lain, dan menyebut-nyebut keburukan orang lain baik secara langsung atau tidak.\n\n2.Tidak mengikuti orang-orang yang suka memfitnah seperti mempengaruhi orang agar tidak senang kepada seseorang yang lain, dan berusaha menimbulkan kekacauan. Allah menyatakan bahwa fitnah dengan pengertian kekacauan itu lebih besar akibatnya dari pembunuhan.\n\nDan bunuhlah mereka di mana kamu temui mereka, dan usirlah mereka dari mana mereka telah mengusir kamu. Dan fitnah itu lebih kejam daripada pembunuhan. (al-Baqarah/2: 191)\n\n1.Tidak mengikuti orang-orang yang suka melarang perbuatan baik dan menghalangi orang lain berbuat kebaikan atau dia sendiri tidak suka berbuat baik.\n\n2.Tidak mengikuti orang yang biasa mengerjakan perbuatan yang melampaui batas, seperti orang-orang yang suka melanggar perintah Allah dan tidak menghentikan perbuatan-perbuatan yang dilarang-Nya. Allah berfirman:\n\nDan barang siapa mendurhakai Allah dan Rasul-Nya dan melanggar batas-batas hukum-Nya, niscaya Allah memasukkannya ke dalam api neraka, dia kekal di dalamnya dan dia akan mendapat azab yang menghinakan. (an-Nisa''/4: 14)\n\n1.Tidak mengikuti orang-orang yang biasa mengerjakan perbuatan-perbuatan dosa dan maksiat karena ia adalah orang yang tidak mempunyai harga diri dan akhlak yang baik. Perbuatan dosa itu akan menghilangkan harga diri dan bertentangan dengan akhlak yang mulia. Allah tidak menyukai orang-orang yang suka mengerjakan perbuatan-perbuatan dosa. Dia berfirman:\n\nDan janganlah kamu berdebat untuk (membela) orang-orang yang mengkhianati dirinya. Sungguh, Allah tidak menyukai orang-orang yang selalu berkhianat dan bergelimang dosa. (an-Nisa''/4: 107)\n\n1.Tidak mengikuti orang-orang yang suka berbuat kejam dan tidak mempunyai sifat belas kasihan. Allah Maha Pemurah lagi Maha Penyayang kepada hamba-hamba-Nya. Oleh karena itu, sifat kejam dan tidak mempunyai rasa belas kasihan berlawanan dengan sifat-sifat Allah. Salah satu sebab agama Islam tersiar dengan cepat di Jazirah Arab ialah karena sikap Nabi Muhammad yang lemah-lembut. Seandainya ia bersikap kasar dan kejam, niscaya orang akan menghindarinya. Allah berfirman:\n\nMaka berkat rahmat Allah engkau (Muhammad) berlaku lemah lembut terhadap mereka. Sekiranya engkau bersikap keras dan berhati kasar, tentulah mereka menjauhkan diri dari sekitarmu. Karena itu maafkanlah mereka dan mohonkanlah ampunan untuk mereka, dan bermusyawarahlah dengan mereka dalam urusan itu. (Ali ''Imran/3: 159)\n\n1.Tidak mengikuti orang-orang yang tidak diketahui asal-usulnya, yaitu:\n\n1.Orang-orang yang tidak diketahui keadaannya, dari mana asalnya, apa pekerjaannya, bagaimana budi pekertinya, dan sebagainya.\n\n2.Orang yang tidak diketahui asal usulnya dan tidak jelas maksud dan tujuannya serta apa motif yang ada di balik ajakannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 11, 'هَمَّازٍ مَّشَّاۤءٍۢ بِنَمِيْمٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'suka mencela, yang kian ke mari menyebarkan fitnah, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah mengingatkan dan memerintahkan Nabi Muhammad agar:\n\n1.Tidak mengikuti keinginan orang-orang yang mudah mengucapkan sumpah, karena yang suka bersumpah itu hanyalah seorang pendusta. Sedangkan dusta itu pangkal kejahatan dan sumber segala macam perbuatan maksiat. Oleh karena itu pula, agama Islam menyatakan bahwa dusta itu salah satu dari tanda-tanda orang munafik. Nabi Muhammad bersabda, sebagaimana diriwayatkan al-Bukhari:Tanda-tanda orang munafik itu ada tiga: jika berbicara, ia berdusta, jika dipercaya, ia khianat, dan jika berjanji, ia tidak menepati janjinya. (Riwayat al-Bukhari, Muslim, at-Tirmidhi, dan an-Nasa''i dari Abu Hurairah)\n\nOrang yang suka bersumpah adalah orang yang tidak baik. Orang yang tidak baik pikiran dan maksudnya kepada orang lain menyangka bahwa orang lain demikian pula kepadanya. Oleh karena itu, untuk meyakinkan orang lain akan kebenaran dirinya, ia pun bersumpah.\n\n1.Tidak mengikuti orang yang berpikiran hina dan menyesatkan, seperti ajakan mengikuti agama mereka dalam beberapa hal.\n\n1.Tidak mengikuti orang yang selalu mencela orang lain, dan menyebut-nyebut keburukan orang lain baik secara langsung atau tidak.\n\n2.Tidak mengikuti orang-orang yang suka memfitnah seperti mempengaruhi orang agar tidak senang kepada seseorang yang lain, dan berusaha menimbulkan kekacauan. Allah menyatakan bahwa fitnah dengan pengertian kekacauan itu lebih besar akibatnya dari pembunuhan.\n\nDan bunuhlah mereka di mana kamu temui mereka, dan usirlah mereka dari mana mereka telah mengusir kamu. Dan fitnah itu lebih kejam daripada pembunuhan. (al-Baqarah/2: 191)\n\n1.Tidak mengikuti orang-orang yang suka melarang perbuatan baik dan menghalangi orang lain berbuat kebaikan atau dia sendiri tidak suka berbuat baik.\n\n2.Tidak mengikuti orang yang biasa mengerjakan perbuatan yang melampaui batas, seperti orang-orang yang suka melanggar perintah Allah dan tidak menghentikan perbuatan-perbuatan yang dilarang-Nya. Allah berfirman:\n\nDan barang siapa mendurhakai Allah dan Rasul-Nya dan melanggar batas-batas hukum-Nya, niscaya Allah memasukkannya ke dalam api neraka, dia kekal di dalamnya dan dia akan mendapat azab yang menghinakan. (an-Nisa''/4: 14)\n\n1.Tidak mengikuti orang-orang yang biasa mengerjakan perbuatan-perbuatan dosa dan maksiat karena ia adalah orang yang tidak mempunyai harga diri dan akhlak yang baik. Perbuatan dosa itu akan menghilangkan harga diri dan bertentangan dengan akhlak yang mulia. Allah tidak menyukai orang-orang yang suka mengerjakan perbuatan-perbuatan dosa. Dia berfirman:\n\nDan janganlah kamu berdebat untuk (membela) orang-orang yang mengkhianati dirinya. Sungguh, Allah tidak menyukai orang-orang yang selalu berkhianat dan bergelimang dosa. (an-Nisa''/4: 107)\n\n1.Tidak mengikuti orang-orang yang suka berbuat kejam dan tidak mempunyai sifat belas kasihan. Allah Maha Pemurah lagi Maha Penyayang kepada hamba-hamba-Nya. Oleh karena itu, sifat kejam dan tidak mempunyai rasa belas kasihan berlawanan dengan sifat-sifat Allah. Salah satu sebab agama Islam tersiar dengan cepat di Jazirah Arab ialah karena sikap Nabi Muhammad yang lemah-lembut. Seandainya ia bersikap kasar dan kejam, niscaya orang akan menghindarinya. Allah berfirman:\n\nMaka berkat rahmat Allah engkau (Muhammad) berlaku lemah lembut terhadap mereka. Sekiranya engkau bersikap keras dan berhati kasar, tentulah mereka menjauhkan diri dari sekitarmu. Karena itu maafkanlah mereka dan mohonkanlah ampunan untuk mereka, dan bermusyawarahlah dengan mereka dalam urusan itu. (Ali ''Imran/3: 159)\n\n1.Tidak mengikuti orang-orang yang tidak diketahui asal-usulnya, yaitu:\n\n1.Orang-orang yang tidak diketahui keadaannya, dari mana asalnya, apa pekerjaannya, bagaimana budi pekertinya, dan sebagainya.\n\n2.Orang yang tidak diketahui asal usulnya dan tidak jelas maksud dan tujuannya serta apa motif yang ada di balik ajakannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 12, 'مَّنَّاعٍ لِّلْخَيْرِ مُعْتَدٍ اَثِيْمٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang merintangi segala yang baik, yang melampaui batas dan banyak dosa, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah mengingatkan dan memerintahkan Nabi Muhammad agar:\n\n1.Tidak mengikuti keinginan orang-orang yang mudah mengucapkan sumpah, karena yang suka bersumpah itu hanyalah seorang pendusta. Sedangkan dusta itu pangkal kejahatan dan sumber segala macam perbuatan maksiat. Oleh karena itu pula, agama Islam menyatakan bahwa dusta itu salah satu dari tanda-tanda orang munafik. Nabi Muhammad bersabda, sebagaimana diriwayatkan al-Bukhari:Tanda-tanda orang munafik itu ada tiga: jika berbicara, ia berdusta, jika dipercaya, ia khianat, dan jika berjanji, ia tidak menepati janjinya. (Riwayat al-Bukhari, Muslim, at-Tirmidhi, dan an-Nasa''i dari Abu Hurairah)\n\nOrang yang suka bersumpah adalah orang yang tidak baik. Orang yang tidak baik pikiran dan maksudnya kepada orang lain menyangka bahwa orang lain demikian pula kepadanya. Oleh karena itu, untuk meyakinkan orang lain akan kebenaran dirinya, ia pun bersumpah.\n\n1.Tidak mengikuti orang yang berpikiran hina dan menyesatkan, seperti ajakan mengikuti agama mereka dalam beberapa hal.\n\n1.Tidak mengikuti orang yang selalu mencela orang lain, dan menyebut-nyebut keburukan orang lain baik secara langsung atau tidak.\n\n2.Tidak mengikuti orang-orang yang suka memfitnah seperti mempengaruhi orang agar tidak senang kepada seseorang yang lain, dan berusaha menimbulkan kekacauan. Allah menyatakan bahwa fitnah dengan pengertian kekacauan itu lebih besar akibatnya dari pembunuhan.\n\nDan bunuhlah mereka di mana kamu temui mereka, dan usirlah mereka dari mana mereka telah mengusir kamu. Dan fitnah itu lebih kejam daripada pembunuhan. (al-Baqarah/2: 191)\n\n1.Tidak mengikuti orang-orang yang suka melarang perbuatan baik dan menghalangi orang lain berbuat kebaikan atau dia sendiri tidak suka berbuat baik.\n\n2.Tidak mengikuti orang yang biasa mengerjakan perbuatan yang melampaui batas, seperti orang-orang yang suka melanggar perintah Allah dan tidak menghentikan perbuatan-perbuatan yang dilarang-Nya. Allah berfirman:\n\nDan barang siapa mendurhakai Allah dan Rasul-Nya dan melanggar batas-batas hukum-Nya, niscaya Allah memasukkannya ke dalam api neraka, dia kekal di dalamnya dan dia akan mendapat azab yang menghinakan. (an-Nisa''/4: 14)\n\n1.Tidak mengikuti orang-orang yang biasa mengerjakan perbuatan-perbuatan dosa dan maksiat karena ia adalah orang yang tidak mempunyai harga diri dan akhlak yang baik. Perbuatan dosa itu akan menghilangkan harga diri dan bertentangan dengan akhlak yang mulia. Allah tidak menyukai orang-orang yang suka mengerjakan perbuatan-perbuatan dosa. Dia berfirman:\n\nDan janganlah kamu berdebat untuk (membela) orang-orang yang mengkhianati dirinya. Sungguh, Allah tidak menyukai orang-orang yang selalu berkhianat dan bergelimang dosa. (an-Nisa''/4: 107)\n\n1.Tidak mengikuti orang-orang yang suka berbuat kejam dan tidak mempunyai sifat belas kasihan. Allah Maha Pemurah lagi Maha Penyayang kepada hamba-hamba-Nya. Oleh karena itu, sifat kejam dan tidak mempunyai rasa belas kasihan berlawanan dengan sifat-sifat Allah. Salah satu sebab agama Islam tersiar dengan cepat di Jazirah Arab ialah karena sikap Nabi Muhammad yang lemah-lembut. Seandainya ia bersikap kasar dan kejam, niscaya orang akan menghindarinya. Allah berfirman:\n\nMaka berkat rahmat Allah engkau (Muhammad) berlaku lemah lembut terhadap mereka. Sekiranya engkau bersikap keras dan berhati kasar, tentulah mereka menjauhkan diri dari sekitarmu. Karena itu maafkanlah mereka dan mohonkanlah ampunan untuk mereka, dan bermusyawarahlah dengan mereka dalam urusan itu. (Ali ''Imran/3: 159)\n\n1.Tidak mengikuti orang-orang yang tidak diketahui asal-usulnya, yaitu:\n\n1.Orang-orang yang tidak diketahui keadaannya, dari mana asalnya, apa pekerjaannya, bagaimana budi pekertinya, dan sebagainya.\n\n2.Orang yang tidak diketahui asal usulnya dan tidak jelas maksud dan tujuannya serta apa motif yang ada di balik ajakannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 13, 'عُتُلٍّۢ بَعْدَ ذٰلِكَ زَنِيْمٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang bertabiat kasar, selain itu juga terkenal kejahatannya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah mengingatkan dan memerintahkan Nabi Muhammad agar:\n\n1.Tidak mengikuti keinginan orang-orang yang mudah mengucapkan sumpah, karena yang suka bersumpah itu hanyalah seorang pendusta. Sedangkan dusta itu pangkal kejahatan dan sumber segala macam perbuatan maksiat. Oleh karena itu pula, agama Islam menyatakan bahwa dusta itu salah satu dari tanda-tanda orang munafik. Nabi Muhammad bersabda, sebagaimana diriwayatkan al-Bukhari:Tanda-tanda orang munafik itu ada tiga: jika berbicara, ia berdusta, jika dipercaya, ia khianat, dan jika berjanji, ia tidak menepati janjinya. (Riwayat al-Bukhari, Muslim, at-Tirmidhi, dan an-Nasa''i dari Abu Hurairah)\n\nOrang yang suka bersumpah adalah orang yang tidak baik. Orang yang tidak baik pikiran dan maksudnya kepada orang lain menyangka bahwa orang lain demikian pula kepadanya. Oleh karena itu, untuk meyakinkan orang lain akan kebenaran dirinya, ia pun bersumpah.\n\n1.Tidak mengikuti orang yang berpikiran hina dan menyesatkan, seperti ajakan mengikuti agama mereka dalam beberapa hal.\n\n1.Tidak mengikuti orang yang selalu mencela orang lain, dan menyebut-nyebut keburukan orang lain baik secara langsung atau tidak.\n\n2.Tidak mengikuti orang-orang yang suka memfitnah seperti mempengaruhi orang agar tidak senang kepada seseorang yang lain, dan berusaha menimbulkan kekacauan. Allah menyatakan bahwa fitnah dengan pengertian kekacauan itu lebih besar akibatnya dari pembunuhan.\n\nDan bunuhlah mereka di mana kamu temui mereka, dan usirlah mereka dari mana mereka telah mengusir kamu. Dan fitnah itu lebih kejam daripada pembunuhan. (al-Baqarah/2: 191)\n\n1.Tidak mengikuti orang-orang yang suka melarang perbuatan baik dan menghalangi orang lain berbuat kebaikan atau dia sendiri tidak suka berbuat baik.\n\n2.Tidak mengikuti orang yang biasa mengerjakan perbuatan yang melampaui batas, seperti orang-orang yang suka melanggar perintah Allah dan tidak menghentikan perbuatan-perbuatan yang dilarang-Nya. Allah berfirman:\n\nDan barang siapa mendurhakai Allah dan Rasul-Nya dan melanggar batas-batas hukum-Nya, niscaya Allah memasukkannya ke dalam api neraka, dia kekal di dalamnya dan dia akan mendapat azab yang menghinakan. (an-Nisa''/4: 14)\n\n1.Tidak mengikuti orang-orang yang biasa mengerjakan perbuatan-perbuatan dosa dan maksiat karena ia adalah orang yang tidak mempunyai harga diri dan akhlak yang baik. Perbuatan dosa itu akan menghilangkan harga diri dan bertentangan dengan akhlak yang mulia. Allah tidak menyukai orang-orang yang suka mengerjakan perbuatan-perbuatan dosa. Dia berfirman:\n\nDan janganlah kamu berdebat untuk (membela) orang-orang yang mengkhianati dirinya. Sungguh, Allah tidak menyukai orang-orang yang selalu berkhianat dan bergelimang dosa. (an-Nisa''/4: 107)\n\n1.Tidak mengikuti orang-orang yang suka berbuat kejam dan tidak mempunyai sifat belas kasihan. Allah Maha Pemurah lagi Maha Penyayang kepada hamba-hamba-Nya. Oleh karena itu, sifat kejam dan tidak mempunyai rasa belas kasihan berlawanan dengan sifat-sifat Allah. Salah satu sebab agama Islam tersiar dengan cepat di Jazirah Arab ialah karena sikap Nabi Muhammad yang lemah-lembut. Seandainya ia bersikap kasar dan kejam, niscaya orang akan menghindarinya. Allah berfirman:\n\nMaka berkat rahmat Allah engkau (Muhammad) berlaku lemah lembut terhadap mereka. Sekiranya engkau bersikap keras dan berhati kasar, tentulah mereka menjauhkan diri dari sekitarmu. Karena itu maafkanlah mereka dan mohonkanlah ampunan untuk mereka, dan bermusyawarahlah dengan mereka dalam urusan itu. (Ali ''Imran/3: 159)\n\n1.Tidak mengikuti orang-orang yang tidak diketahui asal-usulnya, yaitu:\n\n1.Orang-orang yang tidak diketahui keadaannya, dari mana asalnya, apa pekerjaannya, bagaimana budi pekertinya, dan sebagainya.\n\n2.Orang yang tidak diketahui asal usulnya dan tidak jelas maksud dan tujuannya serta apa motif yang ada di balik ajakannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 14, 'اَنْ كَانَ ذَا مَالٍ وَّبَنِيْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'karena dia kaya dan banyak anak.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah memperingatkan Nabi Muhammad dan kaum Muslimin agar sekali-kali tidak mengikuti orang-orang yang mempunyai sifat-sifat di atas, sekalipun ia mempunyai harta yang banyak, kedudukan yang tinggi, kekuasaan yang besar, atau ia merasakan suatu kenikmatan dan kesenangan duniawi yang sifatnya sementara saja. Semua itu tidak akan ada manfaatnya di sisi Allah pada hari Kiamat. Allah berfirman:\n\nBiarkanlah Aku (yang bertindak) terhadap orang yang Aku sendiri telah menciptakannya, dan Aku beri kekayaan yang melimpah, dan anak-anak yang selalu bersamanya, dan Aku beri kelapangan (hidup) seluas-luasnya. Kemudian dia ingin sekali agar Aku menambahnya. Tidak bisa! Sesungguhnya dia telah menentang ayat-ayat Kami (Al-Qur''an). Aku akan membebaninya dengan pendakian yang memayahkan. Sesungguhnya dia telah memikirkan dan menetapkan (apa yang ditetapkannya), maka celakalah dia! Bagaimana dia menetapkan?, Sekali lagi, celakalah dia! Bagaimana dia menetapkan? Kemudian dia (merenung) memikirkan, lalu berwajah masam dan cemberut, kemudian berpaling (dari kebenaran) dan menyombongkan diri. (al-Muddatstsir/74: 11-23)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 15, 'اِذَا تُتْلٰى عَلَيْهِ اٰيٰتُنَا قَالَ اَسَاطِيْرُ الْاَوَّلِيْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Apabila ayat-ayat Kami dibacakan kepadanya, dia berkata, “(Ini adalah) dongeng-dongeng orang dahulu.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa bila orang-orang musyrik Mekah mendengarkan bacaan ayat-ayat Al-Qur''an, mereka mengatakan Al-Qur''an itu tidak lain adalah perkataan Muhammad saja dan berisi dongeng-dongeng orang dahulu kala, sama sekali bukan wahyu yang disampaikan Allah kepadanya. Dalam ayat lain, Allah berfirman:\n\nLalu dia berkata, "(Al-Qur''an) ini hanyalah sihir yang dipelajari (dari orang-orang dahulu). Ini hanyalah perkataan manusia." (al-Muddatstsir/74: 24-25)\n\nDi samping, orang-orang musyrik juga mengatakan bahwa Al-Qur''an itu adalah sihir yang dikemukakan seorang tukang sihir dan sebagainya. Akan tetapi, dari semua tuduhan yang mereka lontarkan itu, dapat dipahami bahwa mereka melakukan hal demikian semata-mata karena telah kehilangan akal mencari alasan yang dapat dikemukakan untuk membantah kebenaran Al-Qur''an. Setiap kali mereka merenungkannya, semakin timbul kepercayaan dalam hati mereka kepada Al-Qur''an. Namun demikian, nafsu mereka masih mengalahkan kebenaran yang telah timbul dalam lubuk hati mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 16, 'سَنَسِمُهٗ عَلَى الْخُرْطُوْمِ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kelak dia akan Kami beri tanda pada belalai(nya). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menegaskan bahwa mereka adalah orang-orang yang benar-benar sesat, dan Ia akan menjadikan mereka hina di dunia. Untuk menyatakan kehinaan mereka itu, Allah akan memberi tanda di hidung mereka seperti belalai gajah, sehingga setiap orang mengetahui keadaan mereka yang sebenarnya. Maksud memberi tanda di hidung mereka ialah agar semua orang mengetahui bahwa mereka adalah orang jahat dan banyak dosa, sehingga mudah dikenali.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 17, 'اِنَّا بَلَوْنٰهُمْ كَمَا بَلَوْنَآ اَصْحٰبَ الْجَنَّةِۚ اِذْ اَقْسَمُوْا لَيَصْرِمُنَّهَا مُصْبِحِيْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, Kami telah menguji mereka (orang musyrik Mekah) sebagaimana Kami telah menguji pemilik-pemilik kebun, ketika mereka bersumpah pasti akan memetik (hasil)nya pada pagi hari,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa Allah telah memberi orang-orang musyrik Mekah nikmat yang banyak berupa kesenangan hidup di dunia dan kemewahan. Semua itu bertujuan untuk mengetahui apakah mereka mau mensyukuri nikmat lebih yang diberikan itu dengan mengeluarkan hak-hak orang miskin, memperkenankan seruan Nabi saw untuk mengikuti jalan yang benar serta tunduk dan taat kepada Allah, atau dengan nikmat ini, mereka ingin menumpuk harta, menantang seruan Nabi, dan menyimpang dari jalan yang benar? Allah akan menimpakan azab yang pedih kepada mereka dan melenyapkan nikmat-nikmat itu seandainya mereka tetap ingkar, sebagaimana yang menimpa beberapa pemilik kebun.\n\nPemilik kebun itu semula adalah seorang laki-laki saleh, taat, dan patuh melaksanakan perintah Allah dan menjauhi segala larangan-Nya. Ia mempunyai sebidang kebun sebagai sumber penghidupannya. Jika akan memetik hasil kebunnya, ia memberitahu orang-orang fakir dan miskin agar datang ke kebunnya, dan langsung memberikan hak-hak mereka yang terdapat dari hasil kebun itu. Setelah ia meninggal dunia, kebun itu diwarisi oleh anak-anak mereka. Pada waktu akan memetik hasilnya, mereka pun bermusyawarah apakah tetap melakukan seperti yang telah dilakukan ayah mereka atau membuat rencana baru. Salah seorang di antaranya mengusulkan agar tetap melakukan apa yang biasa dilakukan bapak mereka, yaitu memberitahu orang-orang fakir miskin agar datang pada waktu hari memetik.\n\nAkan tetapi, usulan ini ditolak oleh saudara-saudaranya yang lain. Mereka tidak mau memberikan hasil kebun itu sedikit pun kepada fakir-miskin sebagaimana yang telah dilakukan bapaknya. Sekalipun telah diingatkan oleh saudara yang seorang itu akan bahaya yang mungkin menimpa, tetapi mereka tetap dengan keputusan untuk memetik hasil kebun itu tanpa memberitahu lebih dahulu kepada fakir-miskin, dan seluruh hasil kebun itu akan mereka miliki sendiri tanpa mengeluarkan hak-hak orang lain yang ada di dalamnya. \n\nPara ahli waris pemilik kebun itu mengingkari ketentuan-ketentuan yang biasa dilakukan bapaknya ketika hidup, setelah melihat kesuburan tanamannya dan kelebatan buah yang akan dipetik. Mereka pun yakin bahwa semua itu pasti akan menjadi milik mereka. Oleh karena itu, mereka bersumpah akan memetiknya pagi-pagi benar agar tidak diketahui oleh seorang pun. Mereka juga sepakat untuk tidak akan memberikan hasil kebun itu kepada orang lain walaupun sedikit.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 18, 'وَلَا يَسْتَثْنُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'tetapi mereka tidak menyisihkan (dengan mengucapkan, “Insya Allah”).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa Allah telah memberi orang-orang musyrik Mekah nikmat yang banyak berupa kesenangan hidup di dunia dan kemewahan. Semua itu bertujuan untuk mengetahui apakah mereka mau mensyukuri nikmat lebih yang diberikan itu dengan mengeluarkan hak-hak orang miskin, memperkenankan seruan Nabi saw untuk mengikuti jalan yang benar serta tunduk dan taat kepada Allah, atau dengan nikmat ini, mereka ingin menumpuk harta, menantang seruan Nabi, dan menyimpang dari jalan yang benar? Allah akan menimpakan azab yang pedih kepada mereka dan melenyapkan nikmat-nikmat itu seandainya mereka tetap ingkar, sebagaimana yang menimpa beberapa pemilik kebun.\n\nPemilik kebun itu semula adalah seorang laki-laki saleh, taat, dan patuh melaksanakan perintah Allah dan menjauhi segala larangan-Nya. Ia mempunyai sebidang kebun sebagai sumber penghidupannya. Jika akan memetik hasil kebunnya, ia memberitahu orang-orang fakir dan miskin agar datang ke kebunnya, dan langsung memberikan hak-hak mereka yang terdapat dari hasil kebun itu. Setelah ia meninggal dunia, kebun itu diwarisi oleh anak-anak mereka. Pada waktu akan memetik hasilnya, mereka pun bermusyawarah apakah tetap melakukan seperti yang telah dilakukan ayah mereka atau membuat rencana baru. Salah seorang di antaranya mengusulkan agar tetap melakukan apa yang biasa dilakukan bapak mereka, yaitu memberitahu orang-orang fakir miskin agar datang pada waktu hari memetik.\n\nAkan tetapi, usulan ini ditolak oleh saudara-saudaranya yang lain. Mereka tidak mau memberikan hasil kebun itu sedikit pun kepada fakir-miskin sebagaimana yang telah dilakukan bapaknya. Sekalipun telah diingatkan oleh saudara yang seorang itu akan bahaya yang mungkin menimpa, tetapi mereka tetap dengan keputusan untuk memetik hasil kebun itu tanpa memberitahu lebih dahulu kepada fakir-miskin, dan seluruh hasil kebun itu akan mereka miliki sendiri tanpa mengeluarkan hak-hak orang lain yang ada di dalamnya. \n\nPara ahli waris pemilik kebun itu mengingkari ketentuan-ketentuan yang biasa dilakukan bapaknya ketika hidup, setelah melihat kesuburan tanamannya dan kelebatan buah yang akan dipetik. Mereka pun yakin bahwa semua itu pasti akan menjadi milik mereka. Oleh karena itu, mereka bersumpah akan memetiknya pagi-pagi benar agar tidak diketahui oleh seorang pun. Mereka juga sepakat untuk tidak akan memberikan hasil kebun itu kepada orang lain walaupun sedikit.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 19, 'فَطَافَ عَلَيْهَا طَاۤىِٕفٌ مِّنْ رَّبِّكَ وَهُمْ نَاۤىِٕمُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Lalu kebun itu ditimpa bencana (yang datang) dari Tuhanmu ketika mereka sedang tidur.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ketentuan dan kehendak Allah pasti berlaku tanpa seorang pun yang dapat menghalanginya. Maka pada malam hari, dengan ketetapan dan kehendak Allah, datanglah petir yang membakar seluruh kebun mereka. Tidak ada satu pun yang tinggal, semua hangus terbakar. Kejadian tersebut terjadi ketika para pemilik kebun itu sedang tidur nyenyak, sehingga tidak seorang pun yang tahu bahwa kebunnya telah habis terbakar. Mereka lalai dan tidak ingat kepada Allah, Tuhan yang memberi rezeki kepada mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 20 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 20, 'فَاَصْبَحَتْ كَالصَّرِيْمِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 20);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 20;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka jadilah kebun itu hitam seperti malam yang gelap gulita,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ketentuan dan kehendak Allah pasti berlaku tanpa seorang pun yang dapat menghalanginya. Maka pada malam hari, dengan ketetapan dan kehendak Allah, datanglah petir yang membakar seluruh kebun mereka. Tidak ada satu pun yang tinggal, semua hangus terbakar. Kejadian tersebut terjadi ketika para pemilik kebun itu sedang tidur nyenyak, sehingga tidak seorang pun yang tahu bahwa kebunnya telah habis terbakar. Mereka lalai dan tidak ingat kepada Allah, Tuhan yang memberi rezeki kepada mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 21 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 21, 'فَتَنَادَوْا مُصْبِحِيْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 21);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 21;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'lalu pada pagi hari mereka saling memanggil.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah bangun pada pagi harinya, mereka saling memanggil dan mengajak untuk pergi ke kebun guna memetik hasilnya. Setelah berkumpul, mereka pun berangkat dan berjalan dengan sembunyi-sembunyi sambil berbisik-bisik di antara mereka, "Jangan biarkan seorang pun di antara orang-orang miskin itu datang ke kebun kita seperti dulu ketika ayah masih hidup. Hendaknya seluruh panen kebun ini dapat kita manfaatkan untuk keperluan kita sendiri." Mereka pergi ke kebun pagi-pagi sekali dengan maksud agar orang-orang miskin tidak masuk ke kebun mereka dan mereka sangat yakin akan dapat memetik seluruh hasil kebun itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 22 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 22, 'اَنِ اغْدُوْا عَلٰى حَرْثِكُمْ اِنْ كُنْتُمْ صَارِمِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 22);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 22;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '”Pergilah pagi-pagi ke kebunmu jika kamu hendak memetik hasil.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah bangun pada pagi harinya, mereka saling memanggil dan mengajak untuk pergi ke kebun guna memetik hasilnya. Setelah berkumpul, mereka pun berangkat dan berjalan dengan sembunyi-sembunyi sambil berbisik-bisik di antara mereka, "Jangan biarkan seorang pun di antara orang-orang miskin itu datang ke kebun kita seperti dulu ketika ayah masih hidup. Hendaknya seluruh panen kebun ini dapat kita manfaatkan untuk keperluan kita sendiri." Mereka pergi ke kebun pagi-pagi sekali dengan maksud agar orang-orang miskin tidak masuk ke kebun mereka dan mereka sangat yakin akan dapat memetik seluruh hasil kebun itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 23 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 23, 'فَانْطَلَقُوْا وَهُمْ يَتَخَافَتُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 23);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 23;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka mereka pun berangkat sambil berbisik-bisik. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah bangun pada pagi harinya, mereka saling memanggil dan mengajak untuk pergi ke kebun guna memetik hasilnya. Setelah berkumpul, mereka pun berangkat dan berjalan dengan sembunyi-sembunyi sambil berbisik-bisik di antara mereka, "Jangan biarkan seorang pun di antara orang-orang miskin itu datang ke kebun kita seperti dulu ketika ayah masih hidup. Hendaknya seluruh panen kebun ini dapat kita manfaatkan untuk keperluan kita sendiri." Mereka pergi ke kebun pagi-pagi sekali dengan maksud agar orang-orang miskin tidak masuk ke kebun mereka dan mereka sangat yakin akan dapat memetik seluruh hasil kebun itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 24 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 24, 'اَنْ لَّا يَدْخُلَنَّهَا الْيَوْمَ عَلَيْكُمْ مِّسْكِيْنٌۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 24);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 24;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '”Pada hari ini jangan sampai ada orang miskin masuk ke dalam kebunmu.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah bangun pada pagi harinya, mereka saling memanggil dan mengajak untuk pergi ke kebun guna memetik hasilnya. Setelah berkumpul, mereka pun berangkat dan berjalan dengan sembunyi-sembunyi sambil berbisik-bisik di antara mereka, "Jangan biarkan seorang pun di antara orang-orang miskin itu datang ke kebun kita seperti dulu ketika ayah masih hidup. Hendaknya seluruh panen kebun ini dapat kita manfaatkan untuk keperluan kita sendiri." Mereka pergi ke kebun pagi-pagi sekali dengan maksud agar orang-orang miskin tidak masuk ke kebun mereka dan mereka sangat yakin akan dapat memetik seluruh hasil kebun itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 25 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 25, 'وَّغَدَوْا عَلٰى حَرْدٍ قَادِرِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 25);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 25;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan berangkatlah mereka pada pagi hari dengan niat menghalangi (orang-orang miskin) padahal mereka mampu (menolongnya). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah bangun pada pagi harinya, mereka saling memanggil dan mengajak untuk pergi ke kebun guna memetik hasilnya. Setelah berkumpul, mereka pun berangkat dan berjalan dengan sembunyi-sembunyi sambil berbisik-bisik di antara mereka, "Jangan biarkan seorang pun di antara orang-orang miskin itu datang ke kebun kita seperti dulu ketika ayah masih hidup. Hendaknya seluruh panen kebun ini dapat kita manfaatkan untuk keperluan kita sendiri." Mereka pergi ke kebun pagi-pagi sekali dengan maksud agar orang-orang miskin tidak masuk ke kebun mereka dan mereka sangat yakin akan dapat memetik seluruh hasil kebun itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 26 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 26, 'فَلَمَّا رَاَوْهَا قَالُوْٓا اِنَّا لَضَاۤلُّوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 26);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 26;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka ketika mereka melihat kebun itu, mereka berkata, “Sungguh, kita ini benar-benar orang-orang yang sesat,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah sampai di kebun, mereka pun tercengang karena kebun itu telah musnah dan habis terbakar. Mereka mengira bahwa yang terbakar itu bukan kebun mereka, karena kebun mereka yang dipenuhi tanaman-tanaman yang subur dan buahnya lebat, telah waktunya untuk dipetik.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 27 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 27, 'بَلْ نَحْنُ مَحْرُوْمُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 27);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 27;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'bahkan kita tidak memperoleh apa pun,”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Akhirnya mereka sadar dan yakin bahwa yang terbakar itu memang kebun mereka, dan berkata, "Kita tidak tersesat ke kebun yang lain, ini memang kepunyaan kita. Karena kita telah berdosa dengan tidak mengikuti apa yang telah digariskan oleh bapak kita pada setiap memetik hasil kebun, maka Allah memusnahkan kebun ini."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 28 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 28, 'قَالَ اَوْسَطُهُمْ اَلَمْ اَقُلْ لَّكُمْ لَوْلَا تُسَبِّحُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 28);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 28;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'berkatalah seorang yang paling bijak di antara mereka, “Bukankah aku telah mengatakan kepadamu, mengapa kamu tidak bertasbih (kepada Tuhanmu).”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Salah seorang di antara mereka yang pernah memperingatkan mereka sebelumnya berkata, "Bukankah telah aku anjurkan sebelum ini agar kita semua melakukan yang biasa dilakukan bapak kita dahulu, yaitu selalu bertasbih kepada Tuhan dan mensucikan-Nya, selalu mensyukuri setiap nikmat yang telah dilimpahkan-Nya kepada kita dengan memberikan sebagian dari hasilnya kepada yang berhak menerima, dan selalu berdoa kepada-Nya agar kita selalu dilimpahi berkah dan karunia-Nya. Akan tetapi, kamu sekalian tidak mengacuhkan sedikit pun anjuranku itu."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 29 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 29, 'قَالُوْا سُبْحٰنَ رَبِّنَآ اِنَّا كُنَّا ظٰلِمِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 29);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 29;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mereka mengucapkan, “Mahasuci Tuhan kami, sungguh, kami adalah orang-orang yang zalim.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Mereka mengakui kesalahan dan kekhilafan mereka dengan menyatakan bahwa Allah membinasakan kebun itu bukan karena kezaliman-Nya terhadap mereka, tetapi karena mereka sendiri yang telah menganiaya diri sendiri dengan tidak memberikan hak fakir dan miskin.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 30 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 30, 'فَاَقْبَلَ بَعْضُهُمْ عَلٰى بَعْضٍ يَّتَلَاوَمُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 30);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 30;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Lalu mereka saling berhadapan dan saling menyalahkan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Mereka kemudian saling menyalahkan dengan mengatakan, "Kamulah yang menganjurkan agar kita semua tidak lagi memberikan hak-hak orang kafir dan miskin yang biasa diberikan ayah kita dahulu."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 31 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 31, 'قَالُوْا يٰوَيْلَنَآ اِنَّا كُنَّا طٰغِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 31);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 31;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mereka berkata, “Celaka kita! Sesungguhnya kita orang-orang yang melampaui batas. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah saling menyalahkan, akhirnya mereka menyesali diri masing-masing. Mereka lalu menyadari bahwa tindakan dan sikap merekalah yang mengundang nasib yang demikian. Mereka berkata, "Sesungguhnya kamilah yang bersalah. Kami telah melanggar garis-garis yang telah ditetapkan Allah dengan tidak memberikan hak-hak fakir-miskin, yang ada pada harta kami. Mudah-mudahan Allah menganugerahkan kepada kami kebun yang lebih baik dari yang telah musnah ini. Kami benar-benar akan bertobat, tunduk, dan patuh menjalankan perintah-Nya serta menjauhi segala larangan-Nya. Semoga Allah menganugerahkan yang baik dan bermanfaat bagi kehidupan dunia dan kehidupan akhirat."\n\nMenurut riwayat dari Mujahid, setelah mereka bertobat, maka Allah menganugerahkan kebun yang lebih baik dari kebun mereka yang musnah dan mengabulkan doa-doa mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 32 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 32, 'عَسٰى رَبُّنَآ اَنْ يُّبْدِلَنَا خَيْرًا مِّنْهَآ اِنَّآ اِلٰى رَبِّنَا رَاغِبُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 32);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 32;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mudah-mudahan Tuhan memberikan ganti kepada kita dengan (kebun) yang lebih baik daripada yang ini, sungguh, kita mengharapkan ampunan dari Tuhan kita.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah saling menyalahkan, akhirnya mereka menyesali diri masing-masing. Mereka lalu menyadari bahwa tindakan dan sikap merekalah yang mengundang nasib yang demikian. Mereka berkata, "Sesungguhnya kamilah yang bersalah. Kami telah melanggar garis-garis yang telah ditetapkan Allah dengan tidak memberikan hak-hak fakir-miskin, yang ada pada harta kami. Mudah-mudahan Allah menganugerahkan kepada kami kebun yang lebih baik dari yang telah musnah ini. Kami benar-benar akan bertobat, tunduk, dan patuh menjalankan perintah-Nya serta menjauhi segala larangan-Nya. Semoga Allah menganugerahkan yang baik dan bermanfaat bagi kehidupan dunia dan kehidupan akhirat."\n\nMenurut riwayat dari Mujahid, setelah mereka bertobat, maka Allah menganugerahkan kebun yang lebih baik dari kebun mereka yang musnah dan mengabulkan doa-doa mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 33 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 33, 'كَذٰلِكَ الْعَذَابُۗ وَلَعَذَابُ الْاٰخِرَةِ اَكْبَرُۘ لَوْ كَانُوْا يَعْلَمُوْنَ ࣖ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 33);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 33;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Seperti itulah azab (di dunia). Dan sungguh, azab akhirat lebih besar se-kiranya mereka mengetahui.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Demikianlah malapetaka yang ditimpakan Allah kepada para pemilik kebun itu sebagai cobaan bagi mereka. Cobaan itu sangat bermanfaat, sehingga mereka bertobat dan menyesali perbuatan-perbuatan yang dilarang Allah. Mereka juga berjanji tidak akan mengulangi perbuatan itu lagi, dan tetap taat kepada Allah serta tidak akan mengerjakan perbuatan-perbuatan terlarang lainnya. Karena mereka benar-benar bertobat, Allah mengabulkan doa-doa mereka dan memberikan kebahagiaan hidup di dunia dan akhirat.\n\nBagaimanakah halnya dengan orang-orang musyrik Mekah, apakah mereka akan tetap bersikap dan bertindak seperti yang telah mereka lakukan terhadap Nabi Muhammad dan kaum Muslimin? Jika mereka memperkenankan seruan Nabi Muhammad, niscaya Allah akan memberikan kepada mereka sebagaimana yang telah diberikan kepada para pemilik kebun itu. Sebaliknya jika mereka tetap pada pendirian mereka, mereka tidak saja akan memperoleh azab di dunia, tetapi juga akan menerima azab akhirat.\n\nSesungguhnya azab akhirat itu lebih keras dan lebih berat dari azab di dunia. Jika azab dunia hanya berupa kehilangan harta dan kesenangan saja, maka azab akhirat lebih dahsyat lagi dari itu, yaitu azab yang menimbulkan kesengsaraan dan malapetaka bagi jasmani dan rohani orang yang mengalaminya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 34 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 34, 'اِنَّ لِلْمُتَّقِيْنَ عِنْدَ رَبِّهِمْ جَنّٰتِ النَّعِيْمِ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 34);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 34;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, bagi orang-orang yang bertakwa (disediakan) surga yang penuh kenikmatan di sisi Tuhannya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menegaskan bahwa orang-orang mukmin yang melaksanakan perintah-perintah Allah, menjauhi larangan-larangan-Nya, serta tunduk dan patuh kepada-Nya, akan ditempatkan di dalam surga yang penuh kenikmatan di akhirat. Hal ini sebagai balasan atas keimanan mereka kepada Allah dan amal saleh mereka ketika hidup di dunia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 35 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 35, 'اَفَنَجْعَلُ الْمُسْلِمِيْنَ كَالْمُجْرِمِيْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 35);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 35;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Apakah patut Kami memperlakukan orang-orang Islam itu seperti orang-orang yang berdosa (orang kafir)?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Menurut Muqatil, tatkala turun ayat ke-34 di atas, orang-orang kafir Mekah berkata kepada kaum Muslimin, "Sesungguhnya Allah telah melebihkan kami dari kamu dalam kehidupan dunia ini. Oleh karena itu, tidak boleh tidak, kami akan dilebihkan-Nya atas kamu di akhirat nanti, atau paling tidak, sama dengan kamu sekalian." Maka Allah membantah pernyataan orang-orang kafir itu dengan ayat ini dengan mengatakan, "Apakah Kami akan menyalahi janji-janji Kami dengan menyamakan orang-orang yang berserah diri, tunduk, dan taat kepada Kami dengan orang-orang yang mengerjakan perbuatan dosa dan selalu ingkar kepada Kami?"\n\nFirman Allah:\n\nTidak sama para penghuni neraka dengan para penghuni-penghuni surga; penghuni-penghuni surga itulah orang-orang yang memperoleh kemenangan. (al-hasyr/59: 20)\n\nDari perkataan orang-orang kafir ini dapat dipahami bahwa menurut mereka kehidupan di dunia ini sebagai gambaran kehidupan di akhirat nanti. Jika kepada seseorang dalam kehidupan dunia ini dianugerahi harta yang banyak, kekuasaan, pangkat, kesenangan, dan kemewahan, tentu di akhirat nanti mereka akan demikian pula. Sebaliknya jika kehidupan dunia seseorang mengalami kesengsaraan dan penderitaan, tentu di akhirat mereka juga akan sengsara dan menderita.\n\nAnggapan orang-orang kafir yang demikian adalah anggapan yang keliru. Kehidupan di dunia adalah persiapan kehidupan di akhirat. Jika seseorang baik ibadah dan amalnya, sekalipun tidak dianugerahi harta yang banyak, kekuasaan, pangkat, dan sebagainya, maka ia tetap mendapat pahala yang berlipat ganda dari Allah. Sebaliknya, jika mereka ingkar dan mengerjakan perbuatan-perbuatan dosa, sekalipun ia memperoleh harta yang banyak, pangkat, dan kekuasaan, maka di akhirat akan disediakan tempat yang penuh kesengsaraan dan kehinaan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 36 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 36, 'مَا لَكُمْۗ  كَيْفَ تَحْكُمُوْنَۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 36);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 36;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mengapa kamu (berbuat demikian)? Bagaimana kamu mengambil keputusan?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini, Allah menyatakan keanehan jalan berpikir orang-orang kafir sehingga menetapkan yang demikian. Seakan-akan mereka tidak menggunakan pertimbangan yang benar, akal yang sehat, dan keputusan yang adil. Mungkinkah orang yang sesat sama dengan orang yang benar, orang yang takwa dengan orang yang berdosa, orang yang bertakwa kepada Allah dengan orang yang ingkar kepada-Nya, dan sebagainya. Cara berpikir seperti yang digunakan orang-orang kafir itu adalah cara berpikir yang salah dan dipengaruhi oleh setan yang selalu menyesatkan manusia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 37 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 37, 'اَمْ لَكُمْ كِتٰبٌ فِيْهِ تَدْرُسُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 37);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 37;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Atau apakah kamu mempunyai kitab (yang diturunkan Allah) yang kamu pelajari?  ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, dinyatakan bahwa pendapat atau jalan pikiran orang-orang kafir itu tidak berdasarkan wahyu dari Allah. Tidak ada satu pun dari kitab Allah yang menerangkan hal yang demikian itu. Ungkapan itu dilontarkan kepada mereka dalam bentuk pertanyaan, "Apakah kamu, hai orang-orang kafir, mempunyai suatu kitab yang diturunkan dari langit, yang kamu terima dari nenek moyangmu kemudian kamu pelajari secara turun-temurun, yang mengandung suatu ketentuan seperti yang kamu katakan itu. Apakah kamu memiliki kitab yang semacam itu yang membolehkan kamu memilih apa yang kamu inginkan sesuai dengan kehendakmu."\n\nAyat ini dikemukakan dalam bentuk kalimat tanya. Biasanya kalimat tanya bermaksud untuk menanyakan sesuatu yang tidak diketahui, tetapi kalimat tanya di sini untuk mengingkari dan menyatakan kejelekan suatu perbuatan. Seakan-akan Allah menyatakan kepada orang-orang kafir bahwa tidak ada suatu pun wahyu-Nya yang menyatakan demikian. Ucapan mereka itu adalah ucapan yang mereka ada-adakan dan cara mengada-adakan yang demikian itu adalah cara yang tidak terpuji.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 38 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 38, 'اِنَّ لَكُمْ فِيْهِ لَمَا تَخَيَّرُوْنَۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 38);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 38;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sesungguhnya kamu dapat memilih apa saja yang ada di dalamnya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, dinyatakan bahwa pendapat atau jalan pikiran orang-orang kafir itu tidak berdasarkan wahyu dari Allah. Tidak ada satu pun dari kitab Allah yang menerangkan hal yang demikian itu. Ungkapan itu dilontarkan kepada mereka dalam bentuk pertanyaan, "Apakah kamu, hai orang-orang kafir, mempunyai suatu kitab yang diturunkan dari langit, yang kamu terima dari nenek moyangmu kemudian kamu pelajari secara turun-temurun, yang mengandung suatu ketentuan seperti yang kamu katakan itu. Apakah kamu memiliki kitab yang semacam itu yang membolehkan kamu memilih apa yang kamu inginkan sesuai dengan kehendakmu."\n\nAyat ini dikemukakan dalam bentuk kalimat tanya. Biasanya kalimat tanya bermaksud untuk menanyakan sesuatu yang tidak diketahui, tetapi kalimat tanya di sini untuk mengingkari dan menyatakan kejelekan suatu perbuatan. Seakan-akan Allah menyatakan kepada orang-orang kafir bahwa tidak ada suatu pun wahyu-Nya yang menyatakan demikian. Ucapan mereka itu adalah ucapan yang mereka ada-adakan dan cara mengada-adakan yang demikian itu adalah cara yang tidak terpuji.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 39 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 39, 'اَمْ لَكُمْ اَيْمَانٌ عَلَيْنَا بَالِغَةٌ اِلٰى يَوْمِ الْقِيٰمَةِۙ اِنَّ لَكُمْ لَمَا تَحْكُمُوْنَۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 39);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 39;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Atau apakah kamu memperoleh (janji-janji yang diperkuat dengan) sumpah dari Kami, yang tetap berlaku sampai hari Kiamat; bahwa kamu dapat mengambil keputusan (sekehendakmu)? ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini, sekali lagi Allah mengejek orang-orang kafir dengan mengemukakan kalimat tanya, "Hai orang-orang kafir, apakah kamu sekalian pernah menerima janji-janji dari Kami yang harus Kami tepati seperti yang kamu katakan itu, yaitu kamu akan memperoleh segala yang kamu ingini, padahal kamu mengingkari Kami?" Dari pertanyaan ini dapat dipahami bahwa Allah sekali-kali tidak pernah menetapkan atau menjanjikan kepada hamba-hamba-Nya seperti yang mereka katakan itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 40 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 40, 'سَلْهُمْ اَيُّهُمْ بِذٰلِكَ زَعِيْمٌۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 40);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 40;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Tanyakanlah kepada mereka, “Siapakah di antara mereka yang bertanggung jawab terhadap (keputusan yang diambil itu)?”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian Allah memerintahkan kepada Rasul-Nya agar menanyakan kepada orang-orang kafir dengan maksud mencela cara-cara yang mereka lakukan, "Hai Orang-orang kafir, jika kamu mempunyai kitab yang menerangkan apa yang kamu katakan itu, perlihatkanlah kepada kami. Jika benar bahwa Allah telah berjanji kepadamu yang ditetapkan dengan sumpah bahwa kamu akan memperoleh semua yang kamu inginkan, cobalah buktikan sumpah itu. Jika kamu mempunyai seseorang yang dapat menjamin kebenaran perkataanmu itu cobalah tunjukkan kepada kami orangnya."\n\nPertanyaan dan permintaan Nabi kepada orang-orang kafir itu menyebabkan mereka bungkam seribu bahasa, karena mereka tidak akan sanggup menjawab dan memenuhi permintaan itu. Kenyataannya mereka menyembah berhala atau patung. Patung dan berhala itu mereka buat sendiri, dan mereka tahu bahwa patung dan berhala itu tidak akan dapat menjamin yang mereka katakan, seakan-akan mereka tidak berdaya lagi mempertahankan pendapat mereka.\n\nKata za''im (sesuatu yang bertanggung jawab) yang terdapat dalam akhir ayat ini maksudnya adalah orang yang menjamin bahwa sesuatu pasti terlaksana dan penuh kebenaran. Bila seorang mengatakan sesuatu atau menjanjikan sesuatu, maka seorang za''im menjamin bahwa perkataan orang itu adalah perkataan yang benar, atau janji yang telah dijanjikannya itu pasti ditepati. Orang-orang kafir Mekah diminta untuk mengemukakan siapa yang menjamin kebenaran perkataan mereka yang mengatakan bahwa Allah menyamakan balasan yang diterima orang-orang beriman dengan balasan yang mereka terima, padahal Allah tidak pernah mengatakan yang demikian itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 41 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 41, 'اَمْ لَهُمْ شُرَكَاۤءُۚ فَلْيَأْتُوْا بِشُرَكَاۤىِٕهِمْ اِنْ كَانُوْا صٰدِقِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 41);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 41;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Atau apakah mereka mempunyai sekutu-sekutu? Kalau begitu hendaklah mereka mendatangkan sekutu-sekutunya jika mereka orang-orang yang benar.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, kembali Nabi Muhammad diperintahkan untuk menanyakan kepada orang-orang kafir itu apakah mereka mempunyai sekutu-sekutu yang dapat menjamin kebenaran perkataan yang mereka ucapkan. Jika ada, cobalah kemukakan atau mendatangkannya untuk membuktikan jaminan mereka.\n\nYang dimaksud dengan "sekutu-sekutu" mereka dalam ayat ini ialah semua yang mereka sembah selain Allah, seperti patung Lata, ''Uzza, Manah, dan sebagainya. Juga termasuk di dalamnya orang-orang yang mereka hormati, dan pemuka-pemuka agama mereka.\n\nDengan pertanyaan terakhir ini, orang-orang kafir Mekah bertambah diam dan bungkam karena ternyata tuhan-tuhan yang mereka sembah selain Allah, para ahli sastra mereka yang terkenal, seperti al-Walid bin al-Mugirah, dan lain-lain tidak sanggup mengemukakan atau mendatangkannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 42 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 42, 'يَوْمَ يُكْشَفُ عَنْ سَاقٍ وَّيُدْعَوْنَ اِلَى السُّجُوْدِ فَلَا يَسْتَطِيْعُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 42);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 42;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Ingatlah) pada hari ketika betis disingkapkan dan mereka diseru untuk bersujud; maka mereka tidak mampu,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menyatakan kepada orang-orang kafir Mekah bahwa jika mereka mempunyai penjamin kebenaran perkataan mereka bahwa mereka pasti akan masuk surga seperti orang-orang mukmin masuk surga, maka cobalah datangkan saksi atau penjamin itu nanti pada hari Kiamat. Pada hari itu, semua orang dalam keadaan ketakutan dan sedang berusaha lari dari ketakutan itu. Pada hari itu mereka diminta sujud untuk menguji keimanan mereka padahal mereka tidak sanggup lagi sujud, karena persendian tulang-tulang mereka telah lemah, karena azab telah meliputi mereka dari atas dan bawah, serta dari samping kanan dan kiri. Hari yang seperti itu pasti datang dan huru-hara seperti yang dimaksudkan itu pasti terjadi. Pada saat itu, tiada satu pun tempat berlindung kecuali Allah, Tuhan Yang Mahakuasa.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 43 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 43, 'خَاشِعَةً اَبْصَارُهُمْ تَرْهَقُهُمْ ذِلَّةٌ  ۗوَقَدْ كَانُوْا يُدْعَوْنَ اِلَى السُّجُوْدِ وَهُمْ سَالِمُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 43);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 43;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'pandangan mereka tertunduk ke bawah, diliputi kehinaan. Dan sungguh, dahulu (di dunia) mereka telah diseru untuk bersujud pada waktu mereka sehat (tetapi mereka tidak melakukan). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini diterangkan bahwa orang-orang kafir pada hari Kiamat berada dalam keadaan tidak berdaya sedikit pun. Tidak ada yang memberi mereka pertolongan dan mereka dalam keadaan hina-dina. Mereka hanya dalam keadaan penuh penyesalan, tetapi semua itu tidak berguna lagi.\n\nKetika hidup di dunia dahulu, mereka dalam keadaan sehat, berkecukupan, berkuasa, dan berpangkat, tetapi mereka tidak mau salat, sujud dan menyembah Allah, serta menyerahkan diri kepada-Nya. Setelah di akhirat, di waktu penyesalan itu tiba, mereka memanggil Tuhan, ingin mengerjakannya untuk menghambakan diri kepada-Nya, akan tetapi mereka tidak sanggup mengerjakannya lagi. Hal itu karena di samping tulang-tulang mereka telah lemah, pintu tobat juga telah ditutup. Hanya orang-orang beriman sajalah yang dapat bersujud di akhirat ketika Allah menampakkan diri-Nya kepada mereka'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 44 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 44, 'فَذَرْنِيْ وَمَنْ يُّكَذِّبُ بِهٰذَا الْحَدِيْثِۗ سَنَسْتَدْرِجُهُمْ مِّنْ حَيْثُ لَا يَعْلَمُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 44);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 44;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka serahkanlah kepada-Ku (urusannya) dan orang-orang yang mendustakan perkataan ini (Al-Qur''an). Kelak akan Kami hukum mereka berangsur-angsur dari arah yang tidak mereka ketahui, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini merupakan penawar hati dan hiburan kepada Nabi Muhammad dan ancaman keras bagi orang-orang kafir. Sangat banyak sikap dan tindakan orang-orang kafir terhadap Nabi Muhammad dan kaum Muslimin dalam melaksanakan tugas yang dibebankan Allah kepada mereka. Di antaranya ada yang menghalang-halangi orang untuk masuk Islam, menyiksa para sahabat Nabi yang telah masuk Islam, menyakiti, mengejek, memboikot, dan mengucilkan (mengisolir) Nabi, dan sebagainya. Oleh karena itu, kadang-kadang timbul dalam hati Nabi untuk berdoa agar Allah mengazab dan menyiksa mereka yang ingkar itu seperti yang pernah ditimpakan kepada umat-umat yang lalu. Dengan ayat ini, Allah menyatakan bahwa Dia mengetahui segala macam bentuk sikap dan tindakan orang-orang kafir itu, dan akan mengazab mereka sesuai dengan apa yang mereka lakukan. \n\nSelanjutnya Allah menyatakan bahwa karena mendustakan Al-Qur''an dan mengingkari Allah, maka orang-orang kafir itu mendapat kesempatan untuk melakukan perbuatan-perbuatan dosa dan melakukan penganiayaan sehingga perbuatan dosa yang mereka lakukan itu bertambah banyak. Dengan demikian, balasan azabnya pun bertambah berat, sehingga tidak tertanggungkan oleh mereka. Mereka menyangka bahwa dengan pangkat, harta, dan kekuasaan yang ada pada mereka, Allah telah melimpahkan karunia yang tiada taranya kepada mereka, padahal tidak demikian halnya. Bahkan, dengan pangkat, kekayaan, dan kekuasaan yang ada pada mereka itu, dosa mereka semakin bertambah besar. Dalam ayat yang lain, Allah berfirman:\n\nMaka biarkanlah mereka dalam kesesatannya sampai waktu yang ditentukan. Apakah mereka mengira bahwa Kami memberikan harta dan anak-anak kepada mereka itu (berarti bahwa) Kami segera memberikan kebaikan-kebaikan kepada mereka? (Tidak), tetapi mereka tidak menyadarinya. (al-Mu''minun/23: 54-56)\n\nFirman Allah lainnya:\n\nMaka ketika mereka melupakan peringatan yang telah diberikan kepada mereka, Kami pun membukakan semua pintu (kesenangan) untuk mereka. Sehingga ketika mereka bergembira dengan apa yang telah diberikan kepada mereka, Kami siksa mereka secara tiba-tiba, maka ketika itu mereka terdiam putus asa. (al-An''am/6: 44)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 45 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 45, 'وَاُمْلِيْ لَهُمْۗ اِنَّ كَيْدِيْ مَتِيْنٌ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 45);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 45;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan Aku memberi tenggang waktu kepada mereka. Sungguh, rencana-Ku sangat teguh. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menyatakan bahwa Dia memberi tempo kepada orang-orang kafir itu sampai pada waktu yang ditentukan dengan membiarkan mereka bertambah-tambah kekafiran dan kezalimannya. Allah juga menyatakan bahwa rencana-Nya tidak dapat digagalkan oleh siapa pun, dan pasti terlaksana, tidak seorang pun yang dapat menghalang-halangi-Nya.\n\nSebenarnya jika orang-orang kafir mau menyadari tentu mereka akan sampai kepada suatu pendirian dan pandangan bahwa yang mereka gunakan untuk menghalang-halangi Rasulullah saw dan orang-orang beriman menegakkan agama Allah, adalah nikmat-nikmat yang dianugerahkan Allah kepada mereka, seperti kekayaan, pangkat, jabatan, dan sebagainya. Seharusnya nikmat-nikmat itu mereka gunakan untuk mencari keridaan-Nya. Sangat besar dosa mereka karena mengingkari dan menyalahgunakan nikmat Allah itu.\n\nMengenai azab yang ditimpakan kepada orang-orang kafir ini diterangkan dalam hadis Rasulullah saw yang diriwayatkan al-Bukhari dan Muslim:\n\nSesungguhnya Allah Ta''ala akan menangguhkan azab bagi orang-orang yang zalim, hingga apabila Dia mengazabnya, tidak ada yang luput dari azab itu. Kemudian Nabi saw membaca (Surah Hud/11: 102): "Dan begitulah siksa Tuhanmu apabila Dia menyiksa (penduduk) negeri-negeri yang berbuat zalim. Sungguh, siksa-Nya sangat pedih, sangat berat." (Riwayat al-Bukhari, Muslim, Abu Ya''la, al-Baihaqi dan an-Nasa''i dari Abu Musa al-Asy''ari)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 46 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 46, 'اَمْ تَسْـَٔلُهُمْ اَجْرًا فَهُمْ مِّنْ مَّغْرَمٍ مُّثْقَلُوْنَۚ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 46);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 46;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Ataukah engkau (Muhammad) meminta imbalan kepada mereka, sehingga mereka dibebani dengan utang?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengajukan kepada Rasul saw suatu pertanyaan dengan maksud untuk menerka jalan pikiran orang-orang kafir bahwa seseorang melakukan sesuatu pekerjaan untuk mengharapkan suatu upah, keuntungan, atau kesenangan duniawi. Menurut mereka, tidak ada orang yang mau bekerja dan berusaha semata-mata karena Allah. Pertanyaan Allah itu ialah: Wahai Muhammad, apakah engkau meminta upah kepada orang-orang yang mempersekutukan-Ku dengan sesuatu yang lain, karena engkau memberinya nasihat, menyeru mereka kepada kebenaran dan mengikuti agama-Ku, sehingga mereka harus dibebani oleh hutang karena upah yang kau minta itu?'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 47 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 47, 'اَمْ عِنْدَهُمُ الْغَيْبُ فَهُمْ يَكْتُبُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 47);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 47;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Ataukah mereka mengetahui yang gaib, lalu mereka menuliskannya?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini pertanyaan tersebut masih dilanjutkan: Apakah mereka mempunyai pengetahuan tentang yang gaib, atau mempunyai seperti Lauh Mahfudh yang mencatat segala sesuatu dengan yang mereka kehendaki yaitu bukti kebenaran pendapat mereka?\n\nOrang-orang kafir Mekah beranggapan bahwa patung-patung yang mereka sembah dapat memberitahukan kepada mereka segala sesuatu yang akan terjadi dan segala sesuatu yang gaib. Akan tetapi, anggapan mereka itu tidak ada buktinya sama sekali.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 48 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 48, 'فَاصْبِرْ لِحُكْمِ رَبِّكَ وَلَا تَكُنْ كَصَاحِبِ الْحُوْتِۘ اِذْ نَادٰى وَهُوَ مَكْظُوْمٌۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 48);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 48;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka bersabarlah engkau (Muhammad) terhadap ketetapan Tuhanmu, dan janganlah engkau seperti (Yunus) orang yang berada dalam (perut) ikan ketika dia berdoa dengan hati sedih.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah memerintahkan kepada Nabi Muhammad agar bersabar dalam menerima ketetapan-Nya, tetap melaksanakan tugas kerasulan yang telah dibebankan kepadanya, dan menghindari segala sesuatu yang dapat menghalangi atau mengganggu usaha-usaha dalam melaksanakan tugas itu. Kemudian Allah memperingatkan beliau agar tidak bersikap dan bertindak seperti seorang yang berada dalam perut ikan, yaitu Nabi Yunus. Karena marah kepada kaumnya, Nabi Yunus lalu meninggalkan mereka dan berdoa kepada Allah agar mereka ditimpa azab yang membinasakan.\n\nKisah ini bermula ketika Nabi Yunus diutus Allah kepada penduduk kota Niniveh. Ia menyeru kaumnya agar menyembah Allah, Tuhan Yang Maha Esa, tidak ada tuhan selain Dia. Tetapi penduduk kota Niniveh menolak ajakan itu, bahkan mereka mengingkari dan mengancamnya. Karena sikap dan tindakan kaumnya yang demikian itu, beliau pun marah serta memperingatkan mereka bahwa Allah akan menimpakan malapetaka yang sangat dahsyat sebagai balasan terhadap sikap dan keingkaran mereka. Beliau pun lalu meninggalkan kaumnya. \n\nSepeninggal Nabi Yunus, kaumnya sadar dan takut kepada ancaman Allah itu, maka mereka pun keluar dari rumah-rumah mereka menuju tanah lapang bersama istri, anak, dan binatang ternak mereka. Di tanah lapang itu, mereka bersama-sama menyatakan bertobat kepada Allah, dan merendahkan diri dengan penuh keimanan. Mereka berjanji kepada Allah akan mengikuti seruan Yunus, melaksanakan perintah dan menghentikan larangan-Nya. Karena kaum Yunus itu bertobat dengan sebenar-benarnya, tunduk, dan menyerahkan diri kepada-Nya, maka Allah mengabulkan doa mereka dengan mengurungkan datangnya malapetaka itu kepada mereka, sebagaimana diterangkan dalam firman Allah:\n\nMaka mengapa tidak ada (penduduk) suatu negeri pun yang beriman, lalu imannya itu bermanfaat kepadanya selain kaum Yunus? Ketika mereka (kaum Yunus itu) beriman, Kami hilangkan dari mereka azab yang menghinakan dalam kehidupan dunia, dan Kami beri kesenangan kepada mereka sampai waktu tertentu. (Yunus/10: 98)\n\nAdapun Nabi Yunus, setelah memberi peringatan itu, pergi dari kaumnya dengan meninggalkan tugas yang dipercayakan Allah kepadanya sebagai rasul-Nya. Tanpa mendapat izin dari Allah, beliau pergi dengan menumpang sebuah kapal yang sarat dengan muatan. Setelah kapal itu berlayar dan berada di tengah lautan timbullah kekhawatiran nakhodanya bahwa kapal itu bakal tenggelam, seandainya muatannya itu tidak dikurangi.\n\nUntuk mengurangi muatan kapal itu, mereka mengadakan undian di antara penumpang. Barang siapa yang kalah dalam undian itu, akan dilemparkan ke dalam laut. Dengan demikian, kapal itu akan terhindar dari bahaya tenggelam. Dalam undian itu, Nabi Yunus kalah, namun para penumpang kapal itu merasa berat melakukan keputusan tersebut. Hal itu diulangi hingga tiga kali dan hasilnya sama, Nabi Yunus tetap kalah. Namun sebagaimana yang pertama, para penumpang juga merasa berat melaksanakan keputusan itu. Akhirnya Nabi Yunus mengambil keputusan sendiri, dan ia pun terjun ke dalam laut. Setelah Yunus terjun ke dalam laut, Allah memerintahkan seekor ikan hiu yang besar menelannya. Kepada ikan itu diwahyukan agar jangan memakan daging dan tulang Yunus, tetapi cukup menjadikan perutnya sebagai penjara bagi Yunus, karena Yunus bukan makanannya.\n\nNabi Yunus merasa menderita dan sengsara dalam perut ikan yang gelap itu. Ia bertobat, berdoa, dan menyerahkan dirinya kepada Allah, semoga Allah mengampuni dosa-dosanya dan menyelamatkannya, sebagaimana diterangkan pada firman Allah yang lain:\n\nDan (ingatlah kisah) dzun Nun (Yunus), ketika dia pergi dalam keadaan marah, lalu dia menyangka bahwa Kami tidak akan menyulitkannya, maka dia berdoa dalam keadaan yang sangat gelap, "Tidak ada tuhan selain Engkau, Mahasuci Engkau. Sungguh, aku termasuk orang-orang yang zalim." Maka Kami kabulkan (doa)nya dan Kami selamatkan dia dari kedukaan. Dan demikianlah Kami menyelamatkan orang-orang yang beriman. (al-Anbiya''/21: 87-88)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 49 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 49, 'لَوْلَآ اَنْ تَدَارَكَهٗ نِعْمَةٌ مِّنْ رَّبِّهٖ لَنُبِذَ بِالْعَرَاۤءِ وَهُوَ مَذْمُوْمٌ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 49);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 49;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sekiranya dia tidak segera mendapat nikmat dari Tuhannya, pastilah dia dicampakkan ke tanah tandus dalam keadaan tercela. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah beberapa hari berada dalam perut ikan, Nabi Yunus dilimpahi rahmat oleh Allah dengan mewahyukan kepada ikan itu agar melontarkan Yunus ke daratan. Maka ikan itu pun melontarkan Yunus ke daratan. Ia jatuh di daratan yang tandus, sepi tidak ada air, tumbuh-tumbuhan, dan kayu-kayuan di sekitarnya. Badannya pun dalam keadaan sangat lemah dan sakit, karena penderitaan yang dialaminya selama berada dalam perut ikan, dan karena kesedihannya akibat sikap kaumnya yang menantang dakwahnya. Untuk melindunginya dari terik panas matahari dan kedinginan malam, Allah menumbuhkan di sampingnya semacam pohon labu (yaqthin). Dengan demikian, Nabi Yunus terlindungi dan juga dapat memakan buahnya sebagai penguat tubuhnya yang lemah, sebagaimana firman Allah:\n\nKemudian Kami lemparkan dia ke daratan yang tandus, sedang dia dalam keadaan sakit. Kemudian untuk dia Kami tumbuhkan sebatang pohon dari jenis labu. (as-saffat/37: 145-146)\n\nSeandainya Allah tidak melimpahkan rahmat-Nya kepada Yunus, tentu ia akan tenggelam di lautan, atau hancur lumat di dalam perut ikan, atau mati kelaparan dan kekeringan di tengah-tengah padang yang tandus. Akan tetapi, Allah Maha Pengasih kepada hamba-hamba-Nya yang mau bertobat dengan sebenar-benarnya, seperti yang dilakukan Nabi Yunus. Oleh karena itu, Allah melimpahkan rahmat kepadanya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 50 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 50, 'فَاجْتَبٰىهُ رَبُّهٗ فَجَعَلَهٗ مِنَ الصّٰلِحِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 50);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 50;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Lalu Tuhannya memilihnya dan menjadikannya termasuk orang yang saleh. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah kesehatan Yunus pulih kembali, demikian pula kekuatan badannya, maka Allah mengutusnya kembali kepada kaumnya yang pada waktu itu berjumlah seratus ribu orang lebih, sebagaimana firman Allah:\n\nDan Kami utus dia kepada seratus ribu (orang) atau lebih, sehingga mereka beriman, karena itu Kami anugerahkan kenikmatan hidup kepada mereka hingga waktu tertentu. (as saffat/37: 147-148)\n\nKedatangan Yunus disambut kaumnya dengan gembira dan menyatakan keimanan kepadanya, sehingga mereka termasuk orang-orang yang saleh.\n\nDengan ayat-ayat di atas, Allah memperingatkan Nabi Muhammad agar jangan sekali-kali bersikap dan bertindak seperti yang dilakukan Nabi Yunus yang mudah marah dan mudah berputus asa, sehingga ia meninggalkan kaumnya dan tugas suci yang telah dibebankan kepadanya, yaitu tugas kerasulan. Nabi Muhammad diperintahkan untuk selalu tabah dan sabar dalam keadaan bagaimana pun karena Allah menyukai orang-orang yang sabar.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 51 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 51, 'وَاِنْ يَّكَادُ الَّذِيْنَ كَفَرُوْا لَيُزْلِقُوْنَكَ بِاَبْصَارِهِمْ لَمَّا سَمِعُوا الذِّكْرَ وَيَقُوْلُوْنَ اِنَّهٗ لَمَجْنُوْنٌ ۘ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 51);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 51;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sungguh, orang-orang kafir itu hampir-hampir menggelincirkanmu dengan pandangan mata mereka, ketika mereka mendengar Al-Qur''an dan mereka berkata, “Dia (Muhammad) itu benar-benar orang gila.”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menyatakan kepada Nabi Muhammad saw bahwa karena orang-orang musyrik sangat marah dan benci kepada beliau, mereka memandang Nabi dari sudut matanya dengan pandangan yang penuh kemarahan dan kebencian. Hal ini terutama setiap kali mereka mendengar bacaan ayat-ayat Al-Qur''an.\n\nMenurut sebagian ahli tafsir, yang dimaksudkan dengan "orang-orang yang hampir-hampir menggelincirkan Nabi dengan pandangan matanya" ialah Bani Asad, salah satu kabilah di negeri Arab waktu itu. Diriwayatkan bahwa orang-orang dari Bani Asad mempunyai semacam ilmu yang dapat mempengaruhi orang lain dengan menggunakan ketajaman sorotan matanya. Maka sebahagian mereka bermaksud mencobakan ilmunya itu kepada Nabi Muhammad, karena menurut mereka seandainya Muhammad itu benar-benar seorang rasul yang diutus Allah, tentu ia tidak akan terpengaruh oleh ilmu mereka itu. Kenyataannya bahwa ilmu itu memang tidak mempan terhadap Rasulullah saw.\n\nDari riwayat di atas ayat ini dipahami bahwa segala macam ilmu gaib apa pun tidak akan dapat mengenai atau mempengaruhi seseorang jika ia beriman kepada Allah, kecuali ilmu-ilmu yang sesuai dengan sunatullah, seperti menyakiti seseorang dengan cara mempengaruhi jiwanya sesuai dengan dalil dan ketetapan ilmu jiwa, menganiaya seseorang dengan aliran listrik, dan sebagainya. Ilmu-ilmu yang demikian itu dapat mempengaruhi seseorang.\n\nKarena orang-orang musyrik itu tidak dapat mempengaruhi Rasulullah dengan ilmu-ilmu yang ada pada mereka, seperti sorotan ketajaman mata, dan karena tidak dapat menandingi ayat-ayat Al-Qur''an, maka mereka mengatakan bahwa sesungguhnya ia (Muhammad) itu benar-benar orang yang gila.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 52 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 68, 52, 'وَمَا هُوَ اِلَّا ذِكْرٌ لِّلْعٰلَمِيْنَ ࣖ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 68 AND ayah_number = 52);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 68 AND ayah_number = 52;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Padahal (Al-Qur''an) itu tidak lain adalah peringatan bagi seluruh alam.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengatakan dengan tegas bahwa Al-Qur''an itu berisi petunjuk dan pelajaran untuk kebahagiaan hidup manusia di dunia dan akhirat. Ia diperuntukkan bagi seluruh manusia di mana pun mereka berada, baik bagi penduduk negeri-negeri yang telah maju ataupun bagi penduduk negeri yang sedang berkembang atau terbelakang, baik untuk orang yang pintar maupun untuk orang yang bodoh, baik penduduk kota maupun penduduk desa, baik bagi orang yang kaya maupun bagi orang-orang yang miskin, dan sebagainya. Oleh karena itu, setiap orang dapat belajar memahami dan mempelajari Al-Qur''an, asal ia mempunyai sikap akan menerima setiap kebenaran yang disampaikan kepadanya. Jika seseorang belum mempunyai sikap yang demikian, walaupun hati dan pikirannya telah menerima kebenaran Al-Qur''an, namun hawa nafsunya memerintahkan agar ia menentang Al-Qur''an itu dan mengatakannya sebagai buatan manusia atau tuduhan lainnya.\n\nBerapa banyak orang yang terus-menerus melawan kebenaran dan keadilan karena memperturutkan hawa nafsunya, seperti hawa nafsu ingin pangkat, kedudukan, harta yang banyak, takut dipencilkan oleh golongannya, takut meninggalkan kepercayaan nenek moyangnya, dan sebagainya. Betapa banyak orang yang bersedia membunuh teman, saudara kandung, bahkan ayah dan ibunya karena mengiuti hawa nafsunya.\n\nMuhammad saw adalah seorang nabi dan rasul Allah yang telah terbukti kejujurannya, seorang yang dihormati dan dipercayai oleh kaumnya, adil sempurna akal pikirannya, tidak seorang pun yang mengingkarinya. Setelah beliau diangkat Allah sebagai nabi dan rasul, timbullah rasa benci itu, karena mengikuti Muhammad saw berarti meninggalkan pangkat, harta, kesenangan, dan kesewenang-wenangan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

