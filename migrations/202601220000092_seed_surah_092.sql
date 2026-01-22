-- Seed Surah 92 (Al-Lail) with 21 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/92.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (92, 'الّيل', 'Al-Lail', 21, 'Makkiyah', 'Malam')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 1, 'وَالَّيْلِ اِذَا يَغْشٰىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demi malam apabila menutupi (cahaya siang),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bersumpah dengan malam apabila menutupi, yaitu ketika malam sudah merata menutupi alam ini. Ini adalah waktu isya yaitu ketika cahaya merah sudah hilang di ufuk barat. Waktu itu manusia pada umumnya sudah mengakhiri aktivitasnya, dan ingin istirahat dan pergi tidur. Kemudian Allah bersumpah dengan aktivitas alam sebaliknya, yaitu siang ketika terang benderang. Waktu itu adalah waktu duha ketika cahaya matahari sudah merata menyinari alam ini, yang kontras dengan malam yang baru saja berakhir, dan manusia mulai bekerja.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 2, 'وَالنَّهَارِ اِذَا تَجَلّٰىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'demi siang apabila terang benderang,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bersumpah dengan malam apabila menutupi, yaitu ketika malam sudah merata menutupi alam ini. Ini adalah waktu isya yaitu ketika cahaya merah sudah hilang di ufuk barat. Waktu itu manusia pada umumnya sudah mengakhiri aktivitasnya, dan ingin istirahat dan pergi tidur. Kemudian Allah bersumpah dengan aktivitas alam sebaliknya, yaitu siang ketika terang benderang. Waktu itu adalah waktu duha ketika cahaya matahari sudah merata menyinari alam ini, yang kontras dengan malam yang baru saja berakhir, dan manusia mulai bekerja.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 3, 'وَمَا خَلَقَ الذَّكَرَ وَالْاُنْثٰىٓ ۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'demi penciptaan laki-laki dan perempuan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya, Allah bersumpah dengan laki-laki dan perempuan yang telah diciptakan-Nya. Ini adalah juga dua makhluk yang berlawanan jenis dan kodratnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 4, 'اِنَّ سَعْيَكُمْ لَشَتّٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sungguh, usahamu memang beraneka macam.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah bersumpah dengan dua-dua makhluk-Nya yang berlawanan jenis dan sifatnya, Allah menegaskan bahwa perbuatan atau tingkah laku manusia itu memang bermacam-macam. Perbedaan itu terjadi karena perbedaan kemauannya, apakah mengikuti potensi positifnya ataukah mengikuti potensi negatifnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 5, 'فَاَمَّا مَنْ اَعْطٰى وَاتَّقٰىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka barangsiapa memberikan (hartanya di jalan Allah) dan bertakwa,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan adanya tiga tingkah laku manusia. Pertama, suka memberi, yaitu menolong antara sesama manusia. Ia tidak hanya mengeluarkan zakat kekayaannya, yang merupakan kewajiban, tetapi juga berinfak, bersedekah, dan sebagainya yang bukan wajib. Kedua, bertakwa, yaitu takut mengabaikan perintah-Nya atau melanggar larangan-Nya. \n\nKetiga, membenarkan kebaikan Allah, yaitu mengakui nikmat-nikmat yang telah diberikan kepadanya lalu mensyukurinya. Nikmat terbesar Allah yang ia akui adalah surga. Oleh karena itu, ia tidak segan-segan beramal di dunia untuk memperolehnya, di antaranya membantu antara sesama manusia.\n\nKepada mereka yang melakukan tiga aspek perbuatan baik di atas, Allah akan memberikan kemudahan bagi mereka, yaitu kemudahan untuk memperoleh keberuntungan di dunia maupun di akhirat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 6, 'وَصَدَّقَ بِالْحُسْنٰىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan membenarkan (adanya pahala) yang terbaik (surga),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan adanya tiga tingkah laku manusia. Pertama, suka memberi, yaitu menolong antara sesama manusia. Ia tidak hanya mengeluarkan zakat kekayaannya, yang merupakan kewajiban, tetapi juga berinfak, bersedekah, dan sebagainya yang bukan wajib. Kedua, bertakwa, yaitu takut mengabaikan perintah-Nya atau melanggar larangan-Nya. \n\nKetiga, membenarkan kebaikan Allah, yaitu mengakui nikmat-nikmat yang telah diberikan kepadanya lalu mensyukurinya. Nikmat terbesar Allah yang ia akui adalah surga. Oleh karena itu, ia tidak segan-segan beramal di dunia untuk memperolehnya, di antaranya membantu antara sesama manusia.\n\nKepada mereka yang melakukan tiga aspek perbuatan baik di atas, Allah akan memberikan kemudahan bagi mereka, yaitu kemudahan untuk memperoleh keberuntungan di dunia maupun di akhirat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 7, 'فَسَنُيَسِّرُهٗ لِلْيُسْرٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'maka akan Kami mudahkan baginya jalan menuju kemudahan (kebahagiaan),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan adanya tiga tingkah laku manusia. Pertama, suka memberi, yaitu menolong antara sesama manusia. Ia tidak hanya mengeluarkan zakat kekayaannya, yang merupakan kewajiban, tetapi juga berinfak, bersedekah, dan sebagainya yang bukan wajib. Kedua, bertakwa, yaitu takut mengabaikan perintah-Nya atau melanggar larangan-Nya. \n\nKetiga, membenarkan kebaikan Allah, yaitu mengakui nikmat-nikmat yang telah diberikan kepadanya lalu mensyukurinya. Nikmat terbesar Allah yang ia akui adalah surga. Oleh karena itu, ia tidak segan-segan beramal di dunia untuk memperolehnya, di antaranya membantu antara sesama manusia.\n\nKepada mereka yang melakukan tiga aspek perbuatan baik di atas, Allah akan memberikan kemudahan bagi mereka, yaitu kemudahan untuk memperoleh keberuntungan di dunia maupun di akhirat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 8, 'وَاَمَّا مَنْۢ بَخِلَ وَاسْتَغْنٰىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan adapun orang yang kikir dan merasa dirinya cukup (tidak perlu pertolongan Allah),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebaliknya, ada manusia yang bertingkah laku sebaliknya. Ia bakhil, pelit, tidak mau menolong antar sesama, apalagi mengeluarkan kewajibannya yaitu zakat. Di samping itu, ia sudah merasa cukup segala-galanya. Oleh karena itu, ia merasa tidak memerlukan orang lain bahkan Allah. Akibatnya, ia sombong dan tidak mengakui nikmat-nikmat Allah yang telah ia terima dan tidak mengharapkan nikmat-nikmat itu. Akibatnya ia tidak mengindahkan aturan-aturan Allah. Orang itu akan dimudahkan Allah menuju kesulitan, baik kesulitan di dunia maupun di akhirat. Kesulitan di dunia misalnya kejatuhan, penyakit, kecelakaan, musibah, dan sebagainya. Kesulitan di akhirat adalah ketersiksaan yang puncaknya adalah neraka.\n\nManusia, bila sudah mati tanpa memiliki amal dan kemudian masuk neraka di akhirat, maka harta benda dan kekayaan mereka tidak berguna apa pun. Hal itu karena harta itu tidak akan bisa digunakan untuk menebus dosa-dosa mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 9, 'وَكَذَّبَ بِالْحُسْنٰىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'serta mendustakan (pahala) yang terbaik,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebaliknya, ada manusia yang bertingkah laku sebaliknya. Ia bakhil, pelit, tidak mau menolong antar sesama, apalagi mengeluarkan kewajibannya yaitu zakat. Di samping itu, ia sudah merasa cukup segala-galanya. Oleh karena itu, ia merasa tidak memerlukan orang lain bahkan Allah. Akibatnya, ia sombong dan tidak mengakui nikmat-nikmat Allah yang telah ia terima dan tidak mengharapkan nikmat-nikmat itu. Akibatnya ia tidak mengindahkan aturan-aturan Allah. Orang itu akan dimudahkan Allah menuju kesulitan, baik kesulitan di dunia maupun di akhirat. Kesulitan di dunia misalnya kejatuhan, penyakit, kecelakaan, musibah, dan sebagainya. Kesulitan di akhirat adalah ketersiksaan yang puncaknya adalah neraka.\n\nManusia, bila sudah mati tanpa memiliki amal dan kemudian masuk neraka di akhirat, maka harta benda dan kekayaan mereka tidak berguna apa pun. Hal itu karena harta itu tidak akan bisa digunakan untuk menebus dosa-dosa mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 10, 'فَسَنُيَسِّرُهٗ لِلْعُسْرٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'maka akan Kami mudahkan baginya jalan menuju kesukaran (kesengsaraan),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebaliknya, ada manusia yang bertingkah laku sebaliknya. Ia bakhil, pelit, tidak mau menolong antar sesama, apalagi mengeluarkan kewajibannya yaitu zakat. Di samping itu, ia sudah merasa cukup segala-galanya. Oleh karena itu, ia merasa tidak memerlukan orang lain bahkan Allah. Akibatnya, ia sombong dan tidak mengakui nikmat-nikmat Allah yang telah ia terima dan tidak mengharapkan nikmat-nikmat itu. Akibatnya ia tidak mengindahkan aturan-aturan Allah. Orang itu akan dimudahkan Allah menuju kesulitan, baik kesulitan di dunia maupun di akhirat. Kesulitan di dunia misalnya kejatuhan, penyakit, kecelakaan, musibah, dan sebagainya. Kesulitan di akhirat adalah ketersiksaan yang puncaknya adalah neraka.\n\nManusia, bila sudah mati tanpa memiliki amal dan kemudian masuk neraka di akhirat, maka harta benda dan kekayaan mereka tidak berguna apa pun. Hal itu karena harta itu tidak akan bisa digunakan untuk menebus dosa-dosa mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 11, 'وَمَا يُغْنِيْ عَنْهُ مَالُهٗٓ اِذَا تَرَدّٰىٓۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan hartanya tidak bermanfaat baginya apabila dia telah binasa.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebaliknya, ada manusia yang bertingkah laku sebaliknya. Ia bakhil, pelit, tidak mau menolong antar sesama, apalagi mengeluarkan kewajibannya yaitu zakat. Di samping itu, ia sudah merasa cukup segala-galanya. Oleh karena itu, ia merasa tidak memerlukan orang lain bahkan Allah. Akibatnya, ia sombong dan tidak mengakui nikmat-nikmat Allah yang telah ia terima dan tidak mengharapkan nikmat-nikmat itu. Akibatnya ia tidak mengindahkan aturan-aturan Allah. Orang itu akan dimudahkan Allah menuju kesulitan, baik kesulitan di dunia maupun di akhirat. Kesulitan di dunia misalnya kejatuhan, penyakit, kecelakaan, musibah, dan sebagainya. Kesulitan di akhirat adalah ketersiksaan yang puncaknya adalah neraka.\n\nManusia, bila sudah mati tanpa memiliki amal dan kemudian masuk neraka di akhirat, maka harta benda dan kekayaan mereka tidak berguna apa pun. Hal itu karena harta itu tidak akan bisa digunakan untuk menebus dosa-dosa mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 12, 'اِنَّ عَلَيْنَا لَلْهُدٰىۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sesungguhnya Kamilah yang memberi petunjuk,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menegaskan bahwa Ia berkewajiban menunjuki manusia mana jalan yang benar dan mana jalan yang salah, mana yang baik dan mana yang buruk, sebagaimana dinyatakan-Nya dalam ayat lain:\n\nDan apabila orang-orang yang beriman kepada ayat-ayat Kami datang kepadamu, maka katakanlah, "Salamun ''alaikum (selamat sejahtera untuk kamu)." Tuhanmu telah menetapkan sifat kasih sayang pada diri-Nya, (yaitu) barang siapa berbuat kejahatan di antara kamu karena kebodohan, kemudian dia bertobat setelah itu dan memperbaiki diri, maka Dia Maha Pengampun, Maha Penyayang. (al-An''am/6: 54)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 13, 'وَاِنَّ لَنَا لَلْاٰخِرَةَ وَالْاُوْلٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan sesungguhnya milik Kamilah akhirat dan dunia itu.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah juga pemilik alam ini, baik alam akhirat maupun alam dunia. Bila Allah pemilik segala-galanya, maka tiada jalan bagi manusia selain meminta semuanya itu kepada-Nya dengan jalan mengimani dan bertakwa kepada-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 14, 'فَاَنْذَرْتُكُمْ نَارًا تَلَظّٰىۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka Aku memperingatkan kamu dengan neraka yang menyala-nyala,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Di samping Allah telah menunjuki manusia jalan yang benar, Ia juga memperingatkan manusia tentang adanya neraka yang senantiasa menyala-nyala. Penghuni neraka itu adalah mereka yang paling durhaka, yaitu orang-orang yang senantiasa memandang dusta wahyu-wahyu yang disampaikan kepadanya, dan karena itu tidak mau mengimaninya dan menjalankannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 15, 'لَا يَصْلٰىهَآ اِلَّا الْاَشْقَىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang hanya dimasuki oleh orang yang paling celaka,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Di samping Allah telah menunjuki manusia jalan yang benar, Ia juga memperingatkan manusia tentang adanya neraka yang senantiasa menyala-nyala. Penghuni neraka itu adalah mereka yang paling durhaka, yaitu orang-orang yang senantiasa memandang dusta wahyu-wahyu yang disampaikan kepadanya, dan karena itu tidak mau mengimaninya dan menjalankannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 16, 'الَّذِيْ كَذَّبَ وَتَوَلّٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang mendustakan (kebenaran) dan berpaling (dari iman).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Di samping Allah telah menunjuki manusia jalan yang benar, Ia juga memperingatkan manusia tentang adanya neraka yang senantiasa menyala-nyala. Penghuni neraka itu adalah mereka yang paling durhaka, yaitu orang-orang yang senantiasa memandang dusta wahyu-wahyu yang disampaikan kepadanya, dan karena itu tidak mau mengimaninya dan menjalankannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 17, 'وَسَيُجَنَّبُهَا الْاَتْقَىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan akan dijauhkan darinya (neraka) orang yang paling bertakwa, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebaliknya adalah orang yang takwa, yaitu orang yang memberikan kekayaannya untuk membantu orang lain untuk menyucikan dirinya. Orang yang takwa itu akan terjauh dari neraka. Contoh orang yang paling takwa adalah Abu Bakar as-siddiq yang telah menggunakan seluruh kekayaannya untuk memerdekakan orang-orang lemah dan perempuan-perempuan yang masuk Islam dan membantu mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 18, 'الَّذِيْ يُؤْتِيْ مَالَهٗ يَتَزَكّٰىۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang menginfakkan hartanya (di jalan Allah) untuk membersihkan (dirinya),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebaliknya adalah orang yang takwa, yaitu orang yang memberikan kekayaannya untuk membantu orang lain untuk menyucikan dirinya. Orang yang takwa itu akan terjauh dari neraka. Contoh orang yang paling takwa adalah Abu Bakar as-siddiq yang telah menggunakan seluruh kekayaannya untuk memerdekakan orang-orang lemah dan perempuan-perempuan yang masuk Islam dan membantu mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 19, 'وَمَا لِاَحَدٍ عِنْدَهٗ مِنْ نِّعْمَةٍ تُجْزٰىٓۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan tidak ada seorang pun memberikan suatu nikmat padanya yang harus dibalasnya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Orang-orang yang bertakwa membantu orang lain bukan karena orang itu berjasa kepadanya yang karena itu ia perlu membalasnya. Ia membantu orang itu semata-mata karena mengharapkan rida dan surga Allah di akhirat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 20 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 20, 'اِلَّا ابْتِغَاۤءَ وَجْهِ رَبِّهِ الْاَعْلٰىۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 20);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 20;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'tetapi (dia memberikan itu semata-mata) karena mencari keridaan Tuhannya Yang Mahatinggi.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Orang-orang yang bertakwa membantu orang lain bukan karena orang itu berjasa kepadanya yang karena itu ia perlu membalasnya. Ia membantu orang itu semata-mata karena mengharapkan rida dan surga Allah di akhirat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 21 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 92, 21, 'وَلَسَوْفَ يَرْضٰى ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 92 AND ayah_number = 21);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 92 AND ayah_number = 21;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan niscaya kelak dia akan mendapat kesenangan (yang sempurna).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Orang takwa yang membantu orang lain untuk mencari rida Allah itu akhirnya akan memperolehnya. Orang itu terjauh dari neraka, dan pasti masuk surga.'
    )
    ON CONFLICT DO NOTHING;
END $$;

