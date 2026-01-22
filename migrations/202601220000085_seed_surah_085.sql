-- Seed Surah 85 (Al-Buruj) with 22 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/85.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (85, 'البروج', 'Al-Buruj', 22, 'Makkiyah', 'Gugusan Bintang')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 1, 'وَالسَّمَاۤءِ ذَاتِ الْبُرُوْجِۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demi langit yang mempunyai gugusan bintang,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah bersumpah dengan langit yang mempunyai gugusan bintang-bintang yang luar biasa besarnya dan tak terhitung jumlah bintang di dalamnya. Sebagian sangat jauh jaraknya dari bumi sehingga cahayanya dalam perhitungan biasa baru sampai kepada kita setelah ribuan tahun lamanya, bahkan ada pula yang setelah miliaran tahun.\n\nAllah bersumpah dengan gugusan bintang karena mempunyai keajaiban yang luar biasa dan mengandung hikmah yang besar dan banyak serta sangat berguna bagi manusia dalam kehidupannya.\n\nBerbagai keajaiban dan hikmah itu menunjukkan kepada kita tentang kebesaran penciptanya yang Mahakuasa dan Mahatinggi ilmu-Nya serta Mahabijaksana.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 2, 'وَالْيَوْمِ الْمَوْعُوْدِۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan demi hari yang dijanjikan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat kedua, Allah bersumpah dengan hari yang dijanjikan-Nya, yaitu hari Kiamat, serta hari kepastian dan pembalasan. Ketika itu, hanya kekuasaan dan hukum Allah-lah yang berlaku.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 3, 'وَشَاهِدٍ وَّمَشْهُوْدٍۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demi yang menyaksikan dan yang disaksikan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat yang ketiga, Allah bersumpah dengan alam semesta ini yang dapat memalingkan perhatian. Ringkasnya, Allah bersumpah dengan alam semesta agar dapat memalingkan manusia memikirkan kebesaran dan keagungan-Nya, agar mereka dapat mengambil manfaat dari apa yang dapat mereka lihat itu dan agar mereka mencurahkan perhatiannya untuk dapat memperoleh hakikat dan rahasia alam yang masih tersembunyi.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 4, 'قُتِلَ اَصْحٰبُ الْاُخْدُوْدِۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Binasalah orang-orang yang membuat parit (yaitu para pembesar Najran di Yaman),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini diterangkan bahwa Allah telah membinasakan Najran, sebuah kota di Yaman, karena penduduknya telah menyiksa dan membunuh para pengikut Nabi Isa (orang-orang Nasrani) yang meninggalkan agama pembesar-pembesar negeri itu, yaitu agama Yahudi dan memeluk agama yang dibawa oleh Nabi Isa dengan memasukkan mereka ke dalam parit-parit yang telah mereka gali dan diberi api yang menyala-nyala. Orang-orang kafir negeri itu duduk di sekitar parit-parit itu menyaksikan siksaan yang tidak berperikemanusia-an itu.\n\nSiksaan itu sebenarnya tidak patut mereka lakukan sebab orang-orang itu tidak mempunyai kesalahan yang besar. Mereka menyiksa hanya karena orang-orang mukmin itu beriman kepada Allah Yang Mahaperkasa lagi Maha Terpuji, yang mempunyai kerajaan langit dan bumi serta berkuasa atas semua yang ada pada keduanya. Sungguh tidak ada jalan bagi orang yang zalim itu untuk lari dari kekuasaan-Nya.\n\nBagi orang-orang mukmin siksaan dan pembunuhan ini hanyalah merupakan cobaan dan ujian yang akan membawa mereka kepada kebahagiaan abadi apabila mereka tetap sabar dengan tetap beriman kepada Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 5, 'النَّارِ ذَاتِ الْوَقُوْدِۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang berapi (yang mempunyai) kayu bakar,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini diterangkan bahwa Allah telah membinasakan Najran, sebuah kota di Yaman, karena penduduknya telah menyiksa dan membunuh para pengikut Nabi Isa (orang-orang Nasrani) yang meninggalkan agama pembesar-pembesar negeri itu, yaitu agama Yahudi dan memeluk agama yang dibawa oleh Nabi Isa dengan memasukkan mereka ke dalam parit-parit yang telah mereka gali dan diberi api yang menyala-nyala. Orang-orang kafir negeri itu duduk di sekitar parit-parit itu menyaksikan siksaan yang tidak berperikemanusia-an itu.\n\nSiksaan itu sebenarnya tidak patut mereka lakukan sebab orang-orang itu tidak mempunyai kesalahan yang besar. Mereka menyiksa hanya karena orang-orang mukmin itu beriman kepada Allah Yang Mahaperkasa lagi Maha Terpuji, yang mempunyai kerajaan langit dan bumi serta berkuasa atas semua yang ada pada keduanya. Sungguh tidak ada jalan bagi orang yang zalim itu untuk lari dari kekuasaan-Nya.\n\nBagi orang-orang mukmin siksaan dan pembunuhan ini hanyalah merupakan cobaan dan ujian yang akan membawa mereka kepada kebahagiaan abadi apabila mereka tetap sabar dengan tetap beriman kepada Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 6, 'اِذْ هُمْ عَلَيْهَا قُعُوْدٌۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'ketika mereka duduk di sekitarnya, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini diterangkan bahwa Allah telah membinasakan Najran, sebuah kota di Yaman, karena penduduknya telah menyiksa dan membunuh para pengikut Nabi Isa (orang-orang Nasrani) yang meninggalkan agama pembesar-pembesar negeri itu, yaitu agama Yahudi dan memeluk agama yang dibawa oleh Nabi Isa dengan memasukkan mereka ke dalam parit-parit yang telah mereka gali dan diberi api yang menyala-nyala. Orang-orang kafir negeri itu duduk di sekitar parit-parit itu menyaksikan siksaan yang tidak berperikemanusia-an itu.\n\nSiksaan itu sebenarnya tidak patut mereka lakukan sebab orang-orang itu tidak mempunyai kesalahan yang besar. Mereka menyiksa hanya karena orang-orang mukmin itu beriman kepada Allah Yang Mahaperkasa lagi Maha Terpuji, yang mempunyai kerajaan langit dan bumi serta berkuasa atas semua yang ada pada keduanya. Sungguh tidak ada jalan bagi orang yang zalim itu untuk lari dari kekuasaan-Nya.\n\nBagi orang-orang mukmin siksaan dan pembunuhan ini hanyalah merupakan cobaan dan ujian yang akan membawa mereka kepada kebahagiaan abadi apabila mereka tetap sabar dengan tetap beriman kepada Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 7, 'وَّهُمْ عَلٰى مَا يَفْعَلُوْنَ بِالْمُؤْمِنِيْنَ شُهُوْدٌ  ۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sedang mereka menyaksikan apa yang mereka perbuat terhadap orang-orang mukmin.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini diterangkan bahwa Allah telah membinasakan Najran, sebuah kota di Yaman, karena penduduknya telah menyiksa dan membunuh para pengikut Nabi Isa (orang-orang Nasrani) yang meninggalkan agama pembesar-pembesar negeri itu, yaitu agama Yahudi dan memeluk agama yang dibawa oleh Nabi Isa dengan memasukkan mereka ke dalam parit-parit yang telah mereka gali dan diberi api yang menyala-nyala. Orang-orang kafir negeri itu duduk di sekitar parit-parit itu menyaksikan siksaan yang tidak berperikemanusia-an itu.\n\nSiksaan itu sebenarnya tidak patut mereka lakukan sebab orang-orang itu tidak mempunyai kesalahan yang besar. Mereka menyiksa hanya karena orang-orang mukmin itu beriman kepada Allah Yang Mahaperkasa lagi Maha Terpuji, yang mempunyai kerajaan langit dan bumi serta berkuasa atas semua yang ada pada keduanya. Sungguh tidak ada jalan bagi orang yang zalim itu untuk lari dari kekuasaan-Nya.\n\nBagi orang-orang mukmin siksaan dan pembunuhan ini hanyalah merupakan cobaan dan ujian yang akan membawa mereka kepada kebahagiaan abadi apabila mereka tetap sabar dengan tetap beriman kepada Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 8, 'وَمَا نَقَمُوْا مِنْهُمْ اِلَّآ اَنْ يُّؤْمِنُوْا بِاللّٰهِ الْعَزِيْزِ الْحَمِيْدِۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan mereka menyiksa orang-orang mukmin itu hanya karena (orang-orang mukmin itu) beriman kepada Allah Yang Mahaperkasa, Maha Terpuji,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini diterangkan bahwa Allah telah membinasakan Najran, sebuah kota di Yaman, karena penduduknya telah menyiksa dan membunuh para pengikut Nabi Isa (orang-orang Nasrani) yang meninggalkan agama pembesar-pembesar negeri itu, yaitu agama Yahudi dan memeluk agama yang dibawa oleh Nabi Isa dengan memasukkan mereka ke dalam parit-parit yang telah mereka gali dan diberi api yang menyala-nyala. Orang-orang kafir negeri itu duduk di sekitar parit-parit itu menyaksikan siksaan yang tidak berperikemanusia-an itu.\n\nSiksaan itu sebenarnya tidak patut mereka lakukan sebab orang-orang itu tidak mempunyai kesalahan yang besar. Mereka menyiksa hanya karena orang-orang mukmin itu beriman kepada Allah Yang Mahaperkasa lagi Maha Terpuji, yang mempunyai kerajaan langit dan bumi serta berkuasa atas semua yang ada pada keduanya. Sungguh tidak ada jalan bagi orang yang zalim itu untuk lari dari kekuasaan-Nya.\n\nBagi orang-orang mukmin siksaan dan pembunuhan ini hanyalah merupakan cobaan dan ujian yang akan membawa mereka kepada kebahagiaan abadi apabila mereka tetap sabar dengan tetap beriman kepada Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 9, 'الَّذِيْ لَهٗ مُلْكُ السَّمٰوٰتِ وَالْاَرْضِ ۗوَاللّٰهُ عَلٰى كُلِّ شَيْءٍ شَهِيْدٌ  ۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang memiliki kerajaan langit dan bumi. Dan Allah Maha Menyaksikan segala sesuatu.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada akhir ayat ini, Allah menerangkan bahwa Ia telah menyaksikan segala sesuatunya dan dengan demikian akan memberikan balasan yang setimpal atas kekejaman yang telah dilakukan oleh orang-orang kafir itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 10, 'اِنَّ الَّذِيْنَ فَتَنُوا الْمُؤْمِنِيْنَ وَالْمُؤْمِنٰتِ ثُمَّ لَمْ يَتُوْبُوْا فَلَهُمْ عَذَابُ جَهَنَّمَ وَلَهُمْ عَذَابُ الْحَرِيْقِۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, orang-orang yang mendatangkan cobaan (bencana, membunuh, menyiksa) kepada orang-orang mukmin laki-laki dan perempuan lalu mereka tidak bertobat, maka mereka akan mendapat azab Jahanam dan mereka akan mendapat azab (neraka) yang membakar.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa bagi orang-orang kafir yang menganiaya dan menyiksa orang-orang mukmin dan mereka tidak mau meninggalkan agamanya, tetap dalam kekufuran, tidak bertobat sebelum mereka meninggal, telah disediakan api neraka untuk mengazab mereka di akhirat nanti.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 11, 'اِنَّ الَّذِيْنَ اٰمَنُوْا وَعَمِلُوا الصّٰلِحٰتِ لَهُمْ جَنّٰتٌ تَجْرِيْ مِنْ تَحْتِهَا الْاَنْهٰرُ ەۗ ذٰلِكَ الْفَوْزُ الْكَبِيْرُۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, orang-orang yang beriman dan mengerjakan kebajikan, mereka akan mendapat surga yang mengalir di bawahnya sungai-sungai, itulah kemenangan yang agung.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa orang-orang yang beriman mengakui bahwa Tuhan Maha Esa. Oleh karena itu, mereka mengerjakan pekerjaan yang sesuai dengan perintah Allah dan menjauhkan diri dari semua larangan-Nya. Semua itu mereka lakukan untuk mengharapkan keridaan-Nya. Di akhirat Allah akan memberi mereka kebun-kebun yang mengalir di bawahnya anak sungai, sehingga mereka hidup bahagia abadi di dalam surga, sebagai ganjaran atas keimanan dan kepatuhan mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 12, 'اِنَّ بَطْشَ رَبِّكَ لَشَدِيْدٌ ۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, azab Tuhanmu sangat keras.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini dijelaskan bahwa siksa yang akan ditimpakan kepada orang-orang kafir yang menganiaya, menyiksa, dan membunuh orang-orang mukmin karena tidak mau meninggalkan agama mereka, sangatlah keras. Perlu diingat bahwa Allah-lah yang telah menciptakan mereka, dan Dia pula yang menghidupkan mereka kembali.\n\nMereka akhirnya akan kembali kepada Allah. Apabila Ia belum menyiksa mereka di dunia ini, bukanlah berarti mereka tidak akan mendapat siksaan sama sekali. Akan tetapi, siksaan itu diundurkan waktunya sampai mereka kembali kepada-Nya, yaitu pada hari Kiamat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 13, 'اِنَّهٗ هُوَ يُبْدِئُ وَيُعِيْدُۚ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, Dialah yang memulai pen-ciptaan (makhluk) dan yang menghidupkannya (kembali).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini dijelaskan bahwa siksa yang akan ditimpakan kepada orang-orang kafir yang menganiaya, menyiksa, dan membunuh orang-orang mukmin karena tidak mau meninggalkan agama mereka, sangatlah keras. Perlu diingat bahwa Allah-lah yang telah menciptakan mereka, dan Dia pula yang menghidupkan mereka kembali.\n\nMereka akhirnya akan kembali kepada Allah. Apabila Ia belum menyiksa mereka di dunia ini, bukanlah berarti mereka tidak akan mendapat siksaan sama sekali. Akan tetapi, siksaan itu diundurkan waktunya sampai mereka kembali kepada-Nya, yaitu pada hari Kiamat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 14, 'وَهُوَ الْغَفُوْرُ الْوَدُوْدُۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan Dialah Yang Maha Pengampun, Maha Pengasih,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini diterangkan bahwa Allah Maha Pengampun bagi orang-orang yang kembali kepada-Nya dengan bertobat, Maha Pengasih bagi mereka yang sungguh-sungguh dan dengan ikhlas mencintai-Nya. Allah juga mempunyai kekuasaan yang mesti berlaku, perintah-Nya tidak dapat dibantah, dan Ia berbuat apa yang Ia kehendaki. Apabila Allah menghendaki kebinasaan bagi mereka yang ingkar dan durhaka, tidak ada suatu kekuasaan pun yang dapat menghalangi-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 15, 'ذُو الْعَرْشِ الْمَجِيْدُۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang memiliki ‘Arsy, lagi Mahamulia, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini diterangkan bahwa Allah Maha Pengampun bagi orang-orang yang kembali kepada-Nya dengan bertobat, Maha Pengasih bagi mereka yang sungguh-sungguh dan dengan ikhlas mencintai-Nya. Allah juga mempunyai kekuasaan yang mesti berlaku, perintah-Nya tidak dapat dibantah, dan Ia berbuat apa yang Ia kehendaki. Apabila Allah menghendaki kebinasaan bagi mereka yang ingkar dan durhaka, tidak ada suatu kekuasaan pun yang dapat menghalangi-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 16, 'فَعَّالٌ لِّمَا يُرِيْدُۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mahakuasa berbuat apa yang Dia kehendaki. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini diterangkan bahwa Allah Maha Pengampun bagi orang-orang yang kembali kepada-Nya dengan bertobat, Maha Pengasih bagi mereka yang sungguh-sungguh dan dengan ikhlas mencintai-Nya. Allah juga mempunyai kekuasaan yang mesti berlaku, perintah-Nya tidak dapat dibantah, dan Ia berbuat apa yang Ia kehendaki. Apabila Allah menghendaki kebinasaan bagi mereka yang ingkar dan durhaka, tidak ada suatu kekuasaan pun yang dapat menghalangi-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 17, 'هَلْ اَتٰىكَ حَدِيْثُ الْجُنُوْدِۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sudahkah sampai kepadamu berita tentang bala tentara (penentang),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan dalam bentuk pertanyaan kepada Nabi Muhammad bahwa apakah telah sampai kepadanya tentang kisah Fir''aun dan kaumnya yang telah mendustakan kenabian Nabi Musa, kisah tentang kesombongan Fir''aun, dan kekufuran kaumnya, serta akibat dari perbuatan mereka, yaitu ditenggelamkan ke dalam laut.\n\nDemikian pula dengan kaum Samud yang telah mendustakan Nabi Saleh sebagai utusan Allah. Mereka telah menyembelih unta yang menjadi tanda kenabiannya. Sebagai akibatnya, Allah menurunkan siksaan-Nya kepada mereka dengan menghancurkan negeri mereka serta memusnahkan semua yang ada.\n\nRingkasnya, orang-orang kafir itu sejak dahulu tidak berubah. Mereka selalu mengingkari kebenaran agama yang dibawa oleh para nabi utusan Allah. Mereka tentu akan menerima balasannya sebagaimana kaum-kaum sebelum mereka, bila mereka tidak bertobat dan kembali kepada jalan yang diridai Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 18, 'فِرْعَوْنَ وَثَمُوْدَۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(yaitu) Fir‘aun dan Samud?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan dalam bentuk pertanyaan kepada Nabi Muhammad bahwa apakah telah sampai kepadanya tentang kisah Fir''aun dan kaumnya yang telah mendustakan kenabian Nabi Musa, kisah tentang kesombongan Fir''aun, dan kekufuran kaumnya, serta akibat dari perbuatan mereka, yaitu ditenggelamkan ke dalam laut.\n\nDemikian pula dengan kaum Samud yang telah mendustakan Nabi Saleh sebagai utusan Allah. Mereka telah menyembelih unta yang menjadi tanda kenabiannya. Sebagai akibatnya, Allah menurunkan siksaan-Nya kepada mereka dengan menghancurkan negeri mereka serta memusnahkan semua yang ada.\n\nRingkasnya, orang-orang kafir itu sejak dahulu tidak berubah. Mereka selalu mengingkari kebenaran agama yang dibawa oleh para nabi utusan Allah. Mereka tentu akan menerima balasannya sebagaimana kaum-kaum sebelum mereka, bila mereka tidak bertobat dan kembali kepada jalan yang diridai Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 19, 'بَلِ الَّذِيْنَ كَفَرُوْا فِيْ تَكْذِيْبٍۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Memang orang-orang kafir (selalu) mendustakan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan dalam bentuk pertanyaan kepada Nabi Muhammad bahwa apakah telah sampai kepadanya tentang kisah Fir''aun dan kaumnya yang telah mendustakan kenabian Nabi Musa, kisah tentang kesombongan Fir''aun, dan kekufuran kaumnya, serta akibat dari perbuatan mereka, yaitu ditenggelamkan ke dalam laut.\n\nDemikian pula dengan kaum Samud yang telah mendustakan Nabi Saleh sebagai utusan Allah. Mereka telah menyembelih unta yang menjadi tanda kenabiannya. Sebagai akibatnya, Allah menurunkan siksaan-Nya kepada mereka dengan menghancurkan negeri mereka serta memusnahkan semua yang ada.\n\nRingkasnya, orang-orang kafir itu sejak dahulu tidak berubah. Mereka selalu mengingkari kebenaran agama yang dibawa oleh para nabi utusan Allah. Mereka tentu akan menerima balasannya sebagaimana kaum-kaum sebelum mereka, bila mereka tidak bertobat dan kembali kepada jalan yang diridai Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 20 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 20, 'وَّاللّٰهُ مِنْ وَّرَاۤىِٕهِمْ مُّحِيْطٌۚ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 20);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 20;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'padahal Allah mengepung dari belakang mereka (sehingga tidak dapat lolos).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menjelaskan bahwa mereka tidak akan lepas dari kekuasaan-Nya, dan tidak akan dapat lari dari jangkauan-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 21 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 21, 'بَلْ هُوَ قُرْاٰنٌ مَّجِيْدٌۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 21);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 21;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bahkan (yang didustakan itu) ialah Al-Qur''an yang mulia,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa Al-Qur''an itu adalah kitab Allah yang mulia, tersimpan dalam Lauh Mahfudh. Tidak ada yang dapat menandingi isi dan susunan kata-katanya, terpelihara dari pemalsuan dan perubahan. Ini sebagai jawaban kepada orang-orang kafir yang mendustakan Al-Qur''an dengan mengatakan bahwa ia adalah cerita-cerita orang dahulu kala.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 22 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 85, 22, 'فِيْ لَوْحٍ مَّحْفُوْظٍ ࣖ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 85 AND ayah_number = 22);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 85 AND ayah_number = 22;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang (tersimpan) dalam (tempat) yang terjaga (Lauh Mahfuzh).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa Al-Qur''an itu adalah kitab Allah yang mulia, tersimpan dalam Lauh Mahfudh. Tidak ada yang dapat menandingi isi dan susunan kata-katanya, terpelihara dari pemalsuan dan perubahan. Ini sebagai jawaban kepada orang-orang kafir yang mendustakan Al-Qur''an dengan mengatakan bahwa ia adalah cerita-cerita orang dahulu kala.'
    )
    ON CONFLICT DO NOTHING;
END $$;

