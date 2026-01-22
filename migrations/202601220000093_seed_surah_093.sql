-- Seed Surah 93 (Ad-Duha) with 11 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/93.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (93, 'الضحى', 'Ad-Duha', 11, 'Makkiyah', 'Duha')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 93, 1, 'وَالضُّحٰىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 93 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 93 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demi waktu duha (ketika matahari naik sepenggalah),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah bersumpah dengan dua macam tanda-tanda kebesaran-Nya, yaitu dhuha (waktu matahari naik sepenggalah) bersama cahayanya dan malam beserta kegelapan dan kesunyiannya, bahwa Dia tidak meninggalkan Rasul-Nya, Muhammad, dan tidak pula memarahinya, sebagaimana orang-orang mengatakannya atau perasaan Rasulullah sendiri.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 93, 2, 'وَالَّيْلِ اِذَا سَجٰىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 93 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 93 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan demi malam apabila telah sunyi,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah bersumpah dengan dua macam tanda-tanda kebesaran-Nya, yaitu dhuha (waktu matahari naik sepenggalah) bersama cahayanya dan malam beserta kegelapan dan kesunyiannya, bahwa Dia tidak meninggalkan Rasul-Nya, Muhammad, dan tidak pula memarahinya, sebagaimana orang-orang mengatakannya atau perasaan Rasulullah sendiri.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 93, 3, 'مَا وَدَّعَكَ رَبُّكَ وَمَا قَلٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 93 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 93 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Tuhanmu tidak meninggalkan engkau (Muhammad) dan tidak (pula) membencimu,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah bersumpah dengan dua macam tanda-tanda kebesaran-Nya, yaitu dhuha (waktu matahari naik sepenggalah) bersama cahayanya dan malam beserta kegelapan dan kesunyiannya, bahwa Dia tidak meninggalkan Rasul-Nya, Muhammad, dan tidak pula memarahinya, sebagaimana orang-orang mengatakannya atau perasaan Rasulullah sendiri.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 93, 4, 'وَلَلْاٰخِرَةُ خَيْرٌ لَّكَ مِنَ الْاُوْلٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 93 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 93 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan sungguh, yang kemudian itu lebih baik bagimu dari yang permulaan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengungkapkan sesuatu yang melapangkan dada Nabi saw dan menenteramkan jiwanya, bahwa keadaan Nabi dalam kehidupannya di hari-hari mendatang akan lebih baik dibandingkan dengan hari-hari yang telah lalu. Kebesarannya akan bertambah dan namanya akan lebih dikenal. Allah akan selalu membimbingnya untuk mencapai kemuliaan dan untuk menuju kepada kebesaran.\n\nSeakan-akan Allah mengatakan kepada Rasul-Nya, "Apakah engkau kira bahwa Aku akan meninggalkanmu? Bahkan kedudukanmu di sisi-Ku sekarang lebih kukuh dan lebih dekat dari masa yang sudah-sudah."\n\nJanji Allah kepada Nabi Muhammad terus terbukti karena sejak itu nama Nabi saw semakin terkenal, kedudukannya semakin bertambah kuat, sehingga mencapai tingkat yang tidak pernah dicapai oleh para rasul sebelumnya. Allah telah menjadikan Nabi Muhammad sebagai rahmat, petunjuk, dan cahaya untuk seluruh alam dan seluruh hamba-Nya. Allah menjadikan cinta kepada Nabi Muhammad termasuk cinta kepada-Nya juga; mengikuti Nabi dan mematuhinya adalah jalan untuk memperoleh nikmat-nikmat-Nya, serta menjadikan umat Nabi sebagai saksi-saksi untuk manusia seluruhnya. Nabi saw sendiri telah menyiarkan agama Allah sesuai dengan kehendak-Nya sehingga sampai ke pelosok-pelosok dunia.\n\nIni adalah suatu kebesaran yang tiada bandingnya, suatu keunggulan yang tiada taranya, dan suatu kemuliaan yang tidak ada yang dapat mengimbanginya. Semua itu adalah anugerah Allah yang diberikan kepada orang yang dikehendaki-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 93, 5, 'وَلَسَوْفَ يُعْطِيْكَ رَبُّكَ فَتَرْضٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 93 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 93 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sungguh, kelak Tuhanmu pasti memberikan karunia-Nya kepadamu, sehingga engkau menjadi puas.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menyampaikan berita gembira kepada Nabi Muhammad, bahwa Dia akan terus-menerus melimpahkan anugerah-Nya kepada beliau, sehingga beliau menjadi senang dan bahagia. Di antara pemberian-Nya itu ialah turunnya wahyu terus-menerus setelah itu sebagai petunjuk bagi Nabi saw dan umatnya untuk mendapat kebahagiaan hidup di dunia dan hari akhirat. Dia akan memenangkan agama yang dibawa Nabi Muhammad atas seluruh agama lainnya dan Dia akan mengangkat kedudukannya di atas kedudukan manusia seluruhnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 93, 6, 'اَلَمْ يَجِدْكَ يَتِيْمًا فَاٰوٰىۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 93 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 93 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bukankah Dia mendapatimu sebagai seorang yatim, lalu Dia melindungi(mu),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengingatkan nikmat yang pernah diterima Nabi Muhammad dengan mengatakan, "Bukankah engkau hai Muhammad seorang anak yatim, tidak mempunyai ayah yang bertanggung jawab atas pendidikanmu, menanggulangi kepentingan serta membimbingmu, tetapi Aku telah menjaga, melindungi, dan membimbingmu serta menjauhkanmu dari dosa-dosa perilaku orang-orang Jahiliah dan keburukan mereka, sehingga engkau memperoleh julukan Manusia sempurna."\n\nNabi saw hidup dalam keadaan yatim karena ayahnya meninggal dunia sedangkan ia masih dalam kandungan ibunya. Ketika lahir, Allah memelihara Muhammad saw dengan cara menjadikan kakeknya, Abdul Muththalib, mengasihi dan menyayanginya. Nabi Muhammad berada dalam asuhan dan bimbingannya sampai Abdul Muththalib wafat, sedang umur Nabi ketika itu delapan tahun. Dengan meninggalnya Abdul Muththalib, Nabi Muhammad menjadi tanggungan paman beliau, Abu thalib, berdasarkan wasiat dari Abdul Muththalib. Abu thalib telah mengerahkan semua perhatiannya untuk mengasuh Nabi saw, sehingga beliau meningkat dewasa dan diangkat menjadi rasul. Setelah Muhammad diangkat menjadi rasul, orang-orang Quraisy memusuhi dan menyakitinya, tetapi Abu thalib terus membelanya dari semua ancaman orang musyrik hingga Abu thalib wafat.\n\nDengan wafatnya Abu thalib, bangsa Quraisy mendapat peluang untuk menyakiti Nabi dengan perantaraan orang-orang jahat di kalangan mereka yang menyebabkan beliau terpaksa hijrah.\n\nBetapa hebatnya penggemblengan Allah dan asuhan-Nya terhadap Nabi Muhammad. Biasanya keyatiman seorang anak menjadi sebab kehancuran akhlaknya karena tidak ada pengasuh dan pembimbing yang bertanggung jawab. Apalagi suasana dan sikap penduduk Mekah lebih dari cukup untuk menyesatkan Nabi saw. akan tetapi, perlindungan Allah yang sangat rapi dapat mencegah beliau menemani mereka. Dengan demikian, jadilah beliau seorang pemuda yang sangat jujur, terpercaya, tidak pernah berdusta, dan tidak pernah berlumur dengan dosa orang-orang Jahiliah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 93, 7, 'وَوَجَدَكَ ضَاۤلًّا فَهَدٰىۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 93 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 93 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan Dia mendapatimu sebagai seorang yang bingung, lalu Dia memberikan petunjuk,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengungkapkan, bahwa Dia mendapatkan Nabi Muhammad dalam keadaan tidak mengerti tentang syariat dan tidak mengetahui tentang Al-Qur''an. Kemudian Allah memberikan petunjuk kepadanya.\n\nHal yang sangat membingungkan Nabi Muhammad adalah apa yang dilihatnya di kalangan bangsa Arab sendiri tentang kerendahan akidah, kelemahan pertimbangan disebabkan pengaruh dugaan-dugaan yang salah, kejelekan amal perbuatan, dan keadaan mereka yang terpecah-belah dan suka bermusuhan. Mereka menuju kepada kehancuran karena memakai orang-orang asing yang leluasa bertindak di kalangan mereka yang terdiri dari bangsa Persi, Habsyi, dan Romawi.\n\nJalan apakah yang harus ditempuh untuk membetulkan akidah-akidah mereka, membebaskan mereka dari pengaruh adat istiadat yang buruk itu, dan cara bagaimana yang harus dijalankan untuk membangunkan mereka dari tidur yang nyenyak itu?\n\nUmat-umat nabi lain pun tidak lebih baik keadaannya daripada umatnya. Tetapi walaupun begitu, Allah tidak membiarkan Nabi Muhammad menjalankan dakwah tanpa bantuan-Nya. Allah bahkan memberikan wahyu yang menjelaskan kepadanya jalan yang harus ditempuh dalam usaha memperbaiki keadaan kaumnya. Allah berfirman:\n\nDan demikianlah Kami wahyukan kepadamu (Muhammad) ruh (Al-Qur''an) dengan perintah Kami. Sebelumnya engkau tidaklah mengetahui apakah Kitab (Al-Qur''an) dan apakah iman itu, tetapi Kami jadikan Al-Qur''an itu cahaya, dengan itu Kami memberi petunjuk siapa yang Kami kehendaki di antara hamba-hamba Kami. (asy-Syura/42: 52)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 93, 8, 'وَوَجَدَكَ عَاۤىِٕلًا فَاَغْنٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 93 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 93 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan Dia mendapatimu sebagai seorang yang kekurangan, lalu Dia memberikan kecukupan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menyatakan bahwa Nabi Muhammad adalah seorang yang miskin. Ayahnya tidak meninggalkan pusaka baginya kecuali seekor unta betina dan seorang hamba sahaya perempuan. Kemudian Allah memberinya harta benda berupa keuntungan yang amat besar dari memperdagangkan harta Khadijah dan ditambah pula dengan harta yang dihibahkan Khadijah kepadanya dalam perjuangan menegakkan agama Allah.\n\nDari keterangan-keterangan tersebut di atas, sesungguhnya Allah mengatakan kepada Nabi Muhammad bahwa Dialah yang memeliharanya dalam keadaan yatim, menghindarkannya dari kebingungan, dan menjadikannya berkecukupan. Allah tidak akan meninggalkan Nabi Muhammad selama hidupnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 93, 9, 'فَاَمَّا الْيَتِيْمَ فَلَا تَقْهَرْۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 93 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 93 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka terhadap anak yatim janganlah engkau berlaku sewenang-wenang.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sesudah menyatakan dalam ayat-ayat terdahulu tentang bermacam-macam nikmat yang diberikan kepada Nabi Muhammad, maka pada ayat ini, Allah meminta kepada Nabi-Nya agar mensyukuri nikmat-nikmat tersebut, serta tidak menghina anak-anak yatim dan memperkosa haknya.\n\nSebaliknya, Nabi Muhammad diminta mendidik mereka dengan adab dan sopan-santun, serta menanamkan akhlak yang mulia dalam jiwa mereka, sehingga mereka menjadi anggota masyarakat yang berguna, tidak menjadi bibit kejahatan yang merusak orang-orang yang bergaul dengannya. Nabi Muhammad bersabda:\n\nAku (kedudukanku) dan orang yang mengasuh anak yatim di surga (sangat dekat), seperti dua ini (dua jari, yaitu telunjuk dan jari tengah).(Riwayat at-Tirmidhi dari Sahl bin Sa''ad)\n\nBarang siapa yang telah merasa kepahitan hidup dalam serba kekurangan maka selayaknya ia dapat merasakan kepahitan itu pada orang lain. Allah telah menghindarkan Nabi Muhammad dari kesengsaraan dan kehinaan, maka selayaknya Nabi memuliakan semua anak yatim sebagai tanda mensyukuri nikmat-nikmat yang dilimpahkan Allah kepadanya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 93, 10, 'وَاَمَّا السَّاۤىِٕلَ فَلَا تَنْهَرْ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 93 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 93 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan terhadap orang yang meminta-minta janganlah engkau menghardik(nya).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah memerintahkan kepada Nabi Muhammad agar orang-orang yang meminta sesuatu kepadanya jangan ditolak dengan kasar dan dibentak, malah sebaliknya diberi sesuatu atau ditolak secara halus. Ada pendapat bahwa yang dimaksud dengan kata as-sa''il adalah orang yang memohon petunjuk, maka hendaknya pemohon ini dilayani dengan lemah lembut sambil memenuhi permohonannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 93, 11, 'وَاَمَّا بِنِعْمَةِ رَبِّكَ فَحَدِّثْ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 93 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 93 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan terhadap nikmat Tuhanmu hendaklah engkau nyatakan (dengan bersyukur).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menegaskan lagi kepada Nabi Muhammad agar memperbanyak pemberiannya kepada orang-orang fakir dan miskin serta mensyukuri, menyebut, dan mengingat nikmat Allah yang telah dilimpahkan kepadanya. Menyebut-nyebut nikmat Allah yang telah dilimpahkan kepada kita bukanlah untuk membangga-banggakan diri, tetapi untuk mensyukuri dan mengharapkan orang lain mensyukuri pula nikmat yang telah diperolehnya. Dalam sebuah hadis, Nabi saw mengatakan:\n\nOrang yang tidak berterima kasih kepada manusia tidak mensyukuri Allah. (Riwayat Abu Dawud dan at-Tirmizi dari Abu Hurairah).\n\nKebiasaan orang-orang kikir sering menyembunyikan harta kekayaannya untuk menjadi alasan tidak bersedekah, dan mereka selalu memperdengarkan kekurangan. Sebaliknya, orang-orang dermawan senantiasa menampakkan pemberian dan pengorbanan mereka dari harta kekayaan yang dianugerahkan kepada mereka dengan menyatakan syukur dan terima kasih kepada Allah atas limpahan karunia-Nya itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

