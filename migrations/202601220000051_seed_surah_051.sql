-- Seed Surah 51 (Az-Zariyat) with 60 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/51.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (51, 'الذّٰريٰت', 'Az-Zariyat', 60, 'Makkiyah', 'Angin yang Menerbangkan')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 1, ' وَالذّٰرِيٰتِ ذَرْوًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demi (angin) yang menerbangkan debu, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Surah adh-dzariyat ini dimulai dengan sumpah dari Allah swt bahwa semua yang diancamkan itu pasti akan berlaku dan bahwa balasan terhadap segala amal pasti akan terbukti. Dalam surah yang sebelumnya, dikisahkan kebinasaan beberapa umat yang terdahulu secara umum dan dalam Surah adh-dzariyat ini diberikan perinciannya. Surah-surah yang pada permulaannya ada sumpah dengan hurufhuruf hijaiah (fawatihus-suwar) biasanya dimaksudkan untuk memperkuat salah satu dari tiga unsur yaitu ketauhidan, kerasulan dan kebangkitan. Dalam surah-surah yang dimaksudkan untuk memperkuat ketauhidan, biasanya digunakan sumpah dengan benda-benda yang tidak bergerak, dan untuk memperkuat keimanan tentang hari kebangkitan digunakan sumpah dengan benda-benda yang bergerak karena kebangkitan itu mengandung pengumpulan dan pemisahan yang lebih pantas dikaitkan dengan benda-benda yang bergerak. Orang Arab sangat takut akan sumpah palsu karena akibat yang sangat buruk dan terkutuk. Oleh karena itu, setiap sumpah yang serius oleh mereka sangat diperhatikan, terlebih jika yang bersumpah itu adalah Allah swt. Dalam ayat-ayat ini Allah bersumpah, "Demi angin kencang yang menerbangkan debu dengan tiupannya yang sangat kuat dan dahsyat. Dan dengan awan yang gumpalannya mengandung banyak air hujan. Dan kapal-kapal yang berlayar hilir-mudik di lautan dengan mudah. Dan dengan para malaikat yang membagi-bagi segala urusan yang dipikulkan kepada mereka seperti mengatur perjalanan planet dan bintang-bintang, soal menurunkan air hujan, membagi rezeki, dan sebagainya." Ayat di atas mengajak kita untuk berpikir tentang angin. Angin adalah massa udara yang bergerak dari tempat yang bertekanan tinggi ke arah yang bertekanan lebih rendah. Penyebab adanya perbedaan tekanan ini adalah perbedaan suhu. Pada keadaan volume yang tetap, kenaikan suhu udara akan menaikkan tekanannya. Tetapi pada kenyataannya di alam kenaikan suhu udara pada suatu tempat akan menyebabkan pemuaian volume udara dan pengaliran udara ke atas, sehingga kerapatan udara di tempat itu akan berkurang dan akan diisi oleh massa udara dari tempat lain yang lebih dingin. Jadi pada dasarnya pergerakan udara ini dikendalikan oleh energi yang ditimbulkan oleh perbedaan suhu di tempat-tempat berlainan di permukaan bumi. Dengan pergerakannya, angin juga berperan sebagai radiator penyeimbang suhu udara. Tanpa adanya angin suhu di daerah gurun akan jauh lebih panas daripada yang didapati sekarang, demikian pula di daerah dingin akan sangat membekukan. Energi pergerakan angin yang memadai dapat memberikan banyak manfaat kepada manusia, seperti untuk pelayaran, memutar kincir untuk pembangkit energi. Di luar kendali manusia angin berperan penting dalam penyerbukan bunga-bunga menjadi buah dan menerbangkan biji-bijian serta spora untuk penyebaran tumbuhan. Fenomena lain yang terjadi adalah terciptanya gelombang di lautan. Pergerakan udara dapat pula terjadi dengan energi yang demikian besar sehingga menimbulkan bencana dan kerugian misalnya dalam bentuk badai dan topan. Dengan angin Allah bersumpah pada ayat berikutnya (adh-dzariyat/51 ayat 4): Dan yang membagi-bagi urusan. Dengan adanya angin, demikian banyak peristiwa-peristiwa yang terjadi yang diakibatkan hembusannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 2, 'فَالْحٰمِلٰتِ وِقْرًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan awan yang mengandung (hujan),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Surah adh-dzariyat ini dimulai dengan sumpah dari Allah swt bahwa semua yang diancamkan itu pasti akan berlaku dan bahwa balasan terhadap segala amal pasti akan terbukti. Dalam surah yang sebelumnya, dikisahkan kebinasaan beberapa umat yang terdahulu secara umum dan dalam Surah adh-dzariyat ini diberikan perinciannya. Surah-surah yang pada permulaannya ada sumpah dengan hurufhuruf hijaiah (fawatihus-suwar) biasanya dimaksudkan untuk memperkuat salah satu dari tiga unsur yaitu ketauhidan, kerasulan dan kebangkitan. Dalam surah-surah yang dimaksudkan untuk memperkuat ketauhidan, biasanya digunakan sumpah dengan benda-benda yang tidak bergerak, dan untuk memperkuat keimanan tentang hari kebangkitan digunakan sumpah dengan benda-benda yang bergerak karena kebangkitan itu mengandung pengumpulan dan pemisahan yang lebih pantas dikaitkan dengan benda-benda yang bergerak. Orang Arab sangat takut akan sumpah palsu karena akibat yang sangat buruk dan terkutuk. Oleh karena itu, setiap sumpah yang serius oleh mereka sangat diperhatikan, terlebih jika yang bersumpah itu adalah Allah swt. Dalam ayat-ayat ini Allah bersumpah, "Demi angin kencang yang menerbangkan debu dengan tiupannya yang sangat kuat dan dahsyat. Dan dengan awan yang gumpalannya mengandung banyak air hujan. Dan kapal-kapal yang berlayar hilir-mudik di lautan dengan mudah. Dan dengan para malaikat yang membagi-bagi segala urusan yang dipikulkan kepada mereka seperti mengatur perjalanan planet dan bintang-bintang, soal menurunkan air hujan, membagi rezeki, dan sebagainya." Ayat di atas mengajak kita untuk berpikir tentang angin. Angin adalah massa udara yang bergerak dari tempat yang bertekanan tinggi ke arah yang bertekanan lebih rendah. Penyebab adanya perbedaan tekanan ini adalah perbedaan suhu. Pada keadaan volume yang tetap, kenaikan suhu udara akan menaikkan tekanannya. Tetapi pada kenyataannya di alam kenaikan suhu udara pada suatu tempat akan menyebabkan pemuaian volume udara dan pengaliran udara ke atas, sehingga kerapatan udara di tempat itu akan berkurang dan akan diisi oleh massa udara dari tempat lain yang lebih dingin. Jadi pada dasarnya pergerakan udara ini dikendalikan oleh energi yang ditimbulkan oleh perbedaan suhu di tempat-tempat berlainan di permukaan bumi. Dengan pergerakannya, angin juga berperan sebagai radiator penyeimbang suhu udara. Tanpa adanya angin suhu di daerah gurun akan jauh lebih panas daripada yang didapati sekarang, demikian pula di daerah dingin akan sangat membekukan. Energi pergerakan angin yang memadai dapat memberikan banyak manfaat kepada manusia, seperti untuk pelayaran, memutar kincir untuk pembangkit energi. Di luar kendali manusia angin berperan penting dalam penyerbukan bunga-bunga menjadi buah dan menerbangkan biji-bijian serta spora untuk penyebaran tumbuhan. Fenomena lain yang terjadi adalah terciptanya gelombang di lautan. Pergerakan udara dapat pula terjadi dengan energi yang demikian besar sehingga menimbulkan bencana dan kerugian misalnya dalam bentuk badai dan topan. Dengan angin Allah bersumpah pada ayat berikutnya (adh-dzariyat/51 ayat 4): Dan yang membagi-bagi urusan. Dengan adanya angin, demikian banyak peristiwa-peristiwa yang terjadi yang diakibatkan hembusannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 3, 'فَالْجٰرِيٰتِ يُسْرًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan (kapal-kapal) yang berlayar dengan mudah, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Surah adh-dzariyat ini dimulai dengan sumpah dari Allah swt bahwa semua yang diancamkan itu pasti akan berlaku dan bahwa balasan terhadap segala amal pasti akan terbukti. Dalam surah yang sebelumnya, dikisahkan kebinasaan beberapa umat yang terdahulu secara umum dan dalam Surah adh-dzariyat ini diberikan perinciannya. Surah-surah yang pada permulaannya ada sumpah dengan hurufhuruf hijaiah (fawatihus-suwar) biasanya dimaksudkan untuk memperkuat salah satu dari tiga unsur yaitu ketauhidan, kerasulan dan kebangkitan. Dalam surah-surah yang dimaksudkan untuk memperkuat ketauhidan, biasanya digunakan sumpah dengan benda-benda yang tidak bergerak, dan untuk memperkuat keimanan tentang hari kebangkitan digunakan sumpah dengan benda-benda yang bergerak karena kebangkitan itu mengandung pengumpulan dan pemisahan yang lebih pantas dikaitkan dengan benda-benda yang bergerak. Orang Arab sangat takut akan sumpah palsu karena akibat yang sangat buruk dan terkutuk. Oleh karena itu, setiap sumpah yang serius oleh mereka sangat diperhatikan, terlebih jika yang bersumpah itu adalah Allah swt. Dalam ayat-ayat ini Allah bersumpah, "Demi angin kencang yang menerbangkan debu dengan tiupannya yang sangat kuat dan dahsyat. Dan dengan awan yang gumpalannya mengandung banyak air hujan. Dan kapal-kapal yang berlayar hilir-mudik di lautan dengan mudah. Dan dengan para malaikat yang membagi-bagi segala urusan yang dipikulkan kepada mereka seperti mengatur perjalanan planet dan bintang-bintang, soal menurunkan air hujan, membagi rezeki, dan sebagainya." Ayat di atas mengajak kita untuk berpikir tentang angin. Angin adalah massa udara yang bergerak dari tempat yang bertekanan tinggi ke arah yang bertekanan lebih rendah. Penyebab adanya perbedaan tekanan ini adalah perbedaan suhu. Pada keadaan volume yang tetap, kenaikan suhu udara akan menaikkan tekanannya. Tetapi pada kenyataannya di alam kenaikan suhu udara pada suatu tempat akan menyebabkan pemuaian volume udara dan pengaliran udara ke atas, sehingga kerapatan udara di tempat itu akan berkurang dan akan diisi oleh massa udara dari tempat lain yang lebih dingin. Jadi pada dasarnya pergerakan udara ini dikendalikan oleh energi yang ditimbulkan oleh perbedaan suhu di tempat-tempat berlainan di permukaan bumi. Dengan pergerakannya, angin juga berperan sebagai radiator penyeimbang suhu udara. Tanpa adanya angin suhu di daerah gurun akan jauh lebih panas daripada yang didapati sekarang, demikian pula di daerah dingin akan sangat membekukan. Energi pergerakan angin yang memadai dapat memberikan banyak manfaat kepada manusia, seperti untuk pelayaran, memutar kincir untuk pembangkit energi. Di luar kendali manusia angin berperan penting dalam penyerbukan bunga-bunga menjadi buah dan menerbangkan biji-bijian serta spora untuk penyebaran tumbuhan. Fenomena lain yang terjadi adalah terciptanya gelombang di lautan. Pergerakan udara dapat pula terjadi dengan energi yang demikian besar sehingga menimbulkan bencana dan kerugian misalnya dalam bentuk badai dan topan. Dengan angin Allah bersumpah pada ayat berikutnya (adh-dzariyat/51 ayat 4): Dan yang membagi-bagi urusan. Dengan adanya angin, demikian banyak peristiwa-peristiwa yang terjadi yang diakibatkan hembusannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 4, 'فَالْمُقَسِّمٰتِ اَمْرًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan (malaikat-malaikat) yang membagi-bagi urusan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Surah adh-dzariyat ini dimulai dengan sumpah dari Allah swt bahwa semua yang diancamkan itu pasti akan berlaku dan bahwa balasan terhadap segala amal pasti akan terbukti. Dalam surah yang sebelumnya, dikisahkan kebinasaan beberapa umat yang terdahulu secara umum dan dalam Surah adh-dzariyat ini diberikan perinciannya. Surah-surah yang pada permulaannya ada sumpah dengan hurufhuruf hijaiah (fawatihus-suwar) biasanya dimaksudkan untuk memperkuat salah satu dari tiga unsur yaitu ketauhidan, kerasulan dan kebangkitan. Dalam surah-surah yang dimaksudkan untuk memperkuat ketauhidan, biasanya digunakan sumpah dengan benda-benda yang tidak bergerak, dan untuk memperkuat keimanan tentang hari kebangkitan digunakan sumpah dengan benda-benda yang bergerak karena kebangkitan itu mengandung pengumpulan dan pemisahan yang lebih pantas dikaitkan dengan benda-benda yang bergerak. Orang Arab sangat takut akan sumpah palsu karena akibat yang sangat buruk dan terkutuk. Oleh karena itu, setiap sumpah yang serius oleh mereka sangat diperhatikan, terlebih jika yang bersumpah itu adalah Allah swt. Dalam ayat-ayat ini Allah bersumpah, "Demi angin kencang yang menerbangkan debu dengan tiupannya yang sangat kuat dan dahsyat. Dan dengan awan yang gumpalannya mengandung banyak air hujan. Dan kapal-kapal yang berlayar hilir-mudik di lautan dengan mudah. Dan dengan para malaikat yang membagi-bagi segala urusan yang dipikulkan kepada mereka seperti mengatur perjalanan planet dan bintang-bintang, soal menurunkan air hujan, membagi rezeki, dan sebagainya." Ayat di atas mengajak kita untuk berpikir tentang angin. Angin adalah massa udara yang bergerak dari tempat yang bertekanan tinggi ke arah yang bertekanan lebih rendah. Penyebab adanya perbedaan tekanan ini adalah perbedaan suhu. Pada keadaan volume yang tetap, kenaikan suhu udara akan menaikkan tekanannya. Tetapi pada kenyataannya di alam kenaikan suhu udara pada suatu tempat akan menyebabkan pemuaian volume udara dan pengaliran udara ke atas, sehingga kerapatan udara di tempat itu akan berkurang dan akan diisi oleh massa udara dari tempat lain yang lebih dingin. Jadi pada dasarnya pergerakan udara ini dikendalikan oleh energi yang ditimbulkan oleh perbedaan suhu di tempat-tempat berlainan di permukaan bumi. Dengan pergerakannya, angin juga berperan sebagai radiator penyeimbang suhu udara. Tanpa adanya angin suhu di daerah gurun akan jauh lebih panas daripada yang didapati sekarang, demikian pula di daerah dingin akan sangat membekukan. Energi pergerakan angin yang memadai dapat memberikan banyak manfaat kepada manusia, seperti untuk pelayaran, memutar kincir untuk pembangkit energi. Di luar kendali manusia angin berperan penting dalam penyerbukan bunga-bunga menjadi buah dan menerbangkan biji-bijian serta spora untuk penyebaran tumbuhan. Fenomena lain yang terjadi adalah terciptanya gelombang di lautan. Pergerakan udara dapat pula terjadi dengan energi yang demikian besar sehingga menimbulkan bencana dan kerugian misalnya dalam bentuk badai dan topan. Dengan angin Allah bersumpah pada ayat berikutnya (adh-dzariyat/51 ayat 4): Dan yang membagi-bagi urusan. Dengan adanya angin, demikian banyak peristiwa-peristiwa yang terjadi yang diakibatkan hembusannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 5, 'اِنَّمَا تُوْعَدُوْنَ لَصَادِقٌۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sungguh, apa yang dijanjikan kepadamu pasti benar, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menegaskan tentang isi sumpah tersebut: Sesungguhnya apa yang dijanjikan kepadamu seperti hari kebangkitan, pembalasan, hisab pada hari Kiamat semuanya itu pasti akan terjadi. Dan bahwa sesungguhnya hari pembalasan bagi setiap amal pasti terjadi.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 6, 'وَّاِنَّ الدِّيْنَ لَوَاقِعٌۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan sungguh, (hari) pembalasan pasti terjadi.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menegaskan tentang isi sumpah tersebut: Sesungguhnya apa yang dijanjikan kepadamu seperti hari kebangkitan, pembalasan, hisab pada hari Kiamat semuanya itu pasti akan terjadi. Dan bahwa sesungguhnya hari pembalasan bagi setiap amal pasti terjadi.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 7, 'وَالسَّمَاۤءِ ذَاتِ الْحُبُكِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demi langit yang mempunyai jalan-jalan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini Allah bersumpah: Demi langit yang mempunyai garis edar (orbit) tempat beredarnya bintang-bintang dan planetplanet. Menurut Quraish Shihab, kata al-hubuk dapat berarti yang indah dan baik atau yang teratur. Dapat pula dipahami sebagai bentuk jamak dari habikah atau hibak, yakni jalan, seperti jalan-jalan yang terlihat di atas air apabila ditimpa hembusan angin. Dalam teori fisika relativitas umum, dikenal mengenai mekanisme pemendekan jarak yang sangat jauh menjadi hanya beberapa meter saja. Einstein menyebutnya sebagai jembatan (bridge) dan saat ini para ilmuwan menyebutnya sebagai wormhole (lubang cacing). Wormhole ini merupakan jalan pintas yang menghubungkan dua tempat di jagad raya ini. Sebagai gambaran, kita ingin bepergian ke suatu galaksi yang letaknya 100 juta tahun cahaya dari bumi (jika 1 tahun cahaya = 9,46 x 1012 km, maka galaksi tersebut jaraknya dari bumi sekitar 9,46x1018 km, atau 9,46 juta-juta-juta km!). Tidak terbayangkan kapan kita sampai ke galaksi tersebut. Andaikata ada pesawat ulang-alik yang memiliki kecepatan mendekati kecepatan cahaya saja kita memerlukan waktu 100 juta tahun! Namun apabila kita menggunakan jalan pintas ''wormhole, kita akan sampai di galaksi hari ini. Perlu dicatat bahwa ini merupakan konsekuensi dari pemendekan jarak yang terjadi dalam wormhole. Dengan demikian bisa jadi, al-hubuk berupa sebuah jalan seperti yang digambarkan oleh para ahli fisika, wormhole, sebuah jalan ''khusus yang diberikan Allah kepada para Malaikat dan hambahambaNya yang terpilih. Perjalanan Rasulullah dalam peristiwa Isra'' Mi''raj, boleh jadi melewati mekanisme pemendekan jarak sehingga jarak yang demikian jauhnya ditempuh Rasulullah hanya dalam bilangan jam.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 8, 'اِنَّكُمْ لَفِيْ قَوْلٍ مُّخْتَلِفٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sungguh, kamu benar-benar dalam keadaan berbeda-beda pendapat,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menegaskan tentang isi sumpah tersebut, bahwa sesungguhnya orang-orang musyrik benar-benar dalam keadaan berbeda-beda pendapat tentang Muhammad saw dan Al-Qur''an. Di antara mereka ada yang menganggap Muhammad saw sebagai tukang syair, ada pula yang menuduhnya sebagai seorang tukang sihir atau gila, dan terhadap Al-Qur''an ada yang menuduh sebagai kitab dongengan purbakala, kitab sihir atau pantun. Perbedaan pendapat yang sangat mencolok itu menjadi bukti yang nyata tentang rusaknya alam pikiran mereka yang penuh dengan syirik. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 9, 'يُّؤْفَكُ عَنْهُ مَنْ اُفِكَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dipalingkan darinya (Al-Qur''an dan Rasul) orang yang dipalingkan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menegaskan bahwa dalam keadaan berbeda pendapat, orang musyrik tersebut semakin dijauhkan dan dipalingkan dari rasul dan Al-Qur''an sehingga mereka menjadi tambah sesat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 10, 'قُتِلَ الْخَرَّاصُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Terkutuklah orang-orang yang banyak berdusta,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menegaskan bahwa orang-orang yang banyak berdusta dikutuk oleh Allah. Mereka termasuk golongan orang-orang yang sangat jahil, yang berkecimpung dalam kegelapan dan kesesatan, juga terbenam dalam kebodohan dan kelalaian yang sangat menyedihkan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 11, 'الَّذِيْنَ هُمْ فِيْ غَمْرَةٍ سَاهُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(yaitu) orang-orang yang terbenam dalam kebodohan dan kelalaian, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menegaskan bahwa orang-orang yang banyak berdusta dikutuk oleh Allah. Mereka termasuk golongan orang-orang yang sangat jahil, yang berkecimpung dalam kegelapan dan kesesatan, juga terbenam dalam kebodohan dan kelalaian yang sangat menyedihkan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 12, 'يَسْـَٔلُوْنَ اَيَّانَ يَوْمُ الدِّيْنِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'mereka bertanya, “Kapankah hari pembalasan itu?”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini mengungkapkan ketika orang musyrik itu mencemoohkan bertanya kepada Nabi saw, "Kapankah datangnya hari pembalasan itu?"'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 13, 'يَوْمَ هُمْ عَلَى النَّارِ يُفْتَنُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Hari pembalasan itu ialah) pada hari (ketika) mereka diazab di dalam api neraka. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini mengungkapkan bahwa hari pembalasan itu ialah hari ketika orang-orang kafir di azab dengan azab yang sangat pedih di atas api neraka. Sesungguhnya orang-orang musyrik itu jika mempunyai hamba sahaya yang bekerja sebagai buruh harian tentu akan memeriksa pekerjaan mereka sebelum mereka diberi upah. Mereka memeriksa, bertanya dan meneliti hasil pekerjaan buruhburuh mereka. Apakah tidak dipikirkan oleh mereka tentang pengabdian sekalian manusia kepada Allah yang telah melimpahkan segala macam kenikmatan kepadanya, mulai dari penciptaan langit dan bumi dan segala isinya sampai kepada pemenuhan segala hajat kebutuhan manusia seperti sandang, pangan, perumahan, jaminan hari tua, dan sebagainya. Apakah patut Allah membiarkan mereka hidup berfoya-foya saja, padahal Allah tidak menciptakan manusia secara sia-sia, bahkan pasti akan mengadakan hari kebangkitan dan hari pembalasan? Oleh karena mereka tenggelam dalam arus kebodohan dan kelalaian, maka hal-hal yang sangat masuk akal dan nyata itu dibiarkan lewat begitu saja tanpa kesungguhan dan perhatian, dan barulah mereka sadar ketika mereka diazab di dalam api neraka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 14, 'ذُوْقُوْا فِتْنَتَكُمْۗ هٰذَا الَّذِيْ كُنْتُمْ بِهٖ تَسْتَعْجِلُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Dikatakan kepada mereka), “Rasakanlah azabmu ini. Inilah azab yang dahulu kamu minta agar disegerakan.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Di samping azab yang amat pedih, mereka juga menderita azab rohani ketika para malaikat berkata, "Rasakanlah azabmu ini yang dahulu kamu waktu di dunia selalu kamu minta supaya disegerakan."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 15, 'اِنَّ الْمُتَّقِيْنَ فِيْ جَنّٰتٍ وَّعُيُوْنٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sesungguhnya orang-orang yang bertakwa berada di dalam taman-taman (surga) dan mata air,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menjelaskan bahwa sesungguhnya orang-orang yang bertakwa, yang menjalankan segala perintah Allah dan menjauhi segala larangan-Nya berada di dalam taman-taman surga yang mengalir di bawahnya air yang jernih dan murni, sangat menyenangkan, sangat nyaman, di luar perkiraan dan bayangan yang tergores dalam hati dan terpandang oleh mata; terlebih-lebih karena mereka tetap abadi di dalamnya, tidak akan keluar lagi, tetap berada dalam keridaan Allah Yang Maha Penyayang lagi Maha Pengasih. Pahala yang demikian itu ada kaitannya dengan amal perbuatan mereka ketika di dunia yaitu mereka mengambil segala pemberian yang dianugerahkan oleh Tuhan kepada mereka itu, karena sesungguhnya mereka ketika berada di dunia selalu mengerjakan amal kebajikan, baik terhadap Allah maupun terhadap sesama manusia dengan tujuan semata-mata untuk mencapai keridaan-Nya. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 16, 'اٰخِذِيْنَ مَآ اٰتٰىهُمْ رَبُّهُمْ ۗ اِنَّهُمْ كَانُوْا قَبْلَ ذٰلِكَ مُحْسِنِيْنَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'mereka mengambil apa yang diberikan Tuhan kepada mereka. Sesungguhnya mereka sebelum itu (di dunia) adalah orang-orang yang berbuat baik;', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menjelaskan bahwa sesungguhnya orang-orang yang bertakwa, yang menjalankan segala perintah Allah dan menjauhi segala larangan-Nya berada di dalam taman-taman surga yang mengalir di bawahnya air yang jernih dan murni, sangat menyenangkan, sangat nyaman, di luar perkiraan dan bayangan yang tergores dalam hati dan terpandang oleh mata; terlebih-lebih karena mereka tetap abadi di dalamnya, tidak akan keluar lagi, tetap berada dalam keridaan Allah Yang Maha Penyayang lagi Maha Pengasih. Pahala yang demikian itu ada kaitannya dengan amal perbuatan mereka ketika di dunia yaitu mereka mengambil segala pemberian yang dianugerahkan oleh Tuhan kepada mereka itu, karena sesungguhnya mereka ketika berada di dunia selalu mengerjakan amal kebajikan, baik terhadap Allah maupun terhadap sesama manusia dengan tujuan semata-mata untuk mencapai keridaan-Nya. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 17, 'كَانُوْا قَلِيْلًا مِّنَ الَّيْلِ مَا يَهْجَعُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'mereka sedikit sekali tidur pada waktu malam;', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan tentang sifat-sifat orang yang takwa, yaitu sedikit sekali tidur di waktu malam karena mengisi waktu dengan salat Tahajud. Mereka dalam melakukan ibadah tahajudnya merasa tenang dan penuh dengan kerinduan dan dalam munajatnya kepada Allah sengaja memilih waktu yang sunyi dari gangguan makhluk lain seperti dua orang pengantin baru dalam menumpahkan isi hati kepada kesayangannya, tentu memilih tempat dan waktu yang nyaman dan aman bebas dari gangguan siapa pun. Mereka ingat bahwa hidup berkumpul dengan keluarga dan yang lainnya tidak dapat berlangsung selama-lamanya. Bila telah tiba ajal, pasti berpisah, masuk ke dalam kubur, masing-masing sendirian saja. Oleh karena itu, sebelum tiba waktu perpisahan, mereka merasa sangat perlu mengadakan hubungan khidmat dan mahabbah dengan Tuhan Yang Mahakuasa, satu-satunya penguasa yang dapat memenuhi segala harapan. Di akhir-akhir malam (pada waktu sahur) mereka memohon ampun kepada Allah. Sengaja dipilihnya waktu sahur itu oleh karena kebanyakan orang sedang tidur nyenyak, keadaan sunyi dari segala kesibukan sehingga mudah menjalin hubungan dengan Tuhannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 18, 'وَبِالْاَسْحَارِ هُمْ يَسْتَغْفِرُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan pada akhir malam mereka memohon ampunan (kepada Allah).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan tentang sifat-sifat orang yang takwa, yaitu sedikit sekali tidur di waktu malam karena mengisi waktu dengan salat Tahajud. Mereka dalam melakukan ibadah tahajudnya merasa tenang dan penuh dengan kerinduan dan dalam munajatnya kepada Allah sengaja memilih waktu yang sunyi dari gangguan makhluk lain seperti dua orang pengantin baru dalam menumpahkan isi hati kepada kesayangannya, tentu memilih tempat dan waktu yang nyaman dan aman bebas dari gangguan siapa pun. Mereka ingat bahwa hidup berkumpul dengan keluarga dan yang lainnya tidak dapat berlangsung selama-lamanya. Bila telah tiba ajal, pasti berpisah, masuk ke dalam kubur, masing-masing sendirian saja. Oleh karena itu, sebelum tiba waktu perpisahan, mereka merasa sangat perlu mengadakan hubungan khidmat dan mahabbah dengan Tuhan Yang Mahakuasa, satu-satunya penguasa yang dapat memenuhi segala harapan. Di akhir-akhir malam (pada waktu sahur) mereka memohon ampun kepada Allah. Sengaja dipilihnya waktu sahur itu oleh karena kebanyakan orang sedang tidur nyenyak, keadaan sunyi dari segala kesibukan sehingga mudah menjalin hubungan dengan Tuhannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 19, 'وَفِيْٓ اَمْوَالِهِمْ حَقٌّ لِّلسَّاۤىِٕلِ وَالْمَحْرُوْمِ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan pada harta benda mereka ada hak untuk orang miskin yang meminta dan orang miskin yang tidak meminta. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menjelaskan bahwa di samping mereka melaksanakan salat wajib dan sunah, mereka juga selalu mengeluarkan infaq fi sabilillah dengan mengeluarkan zakat wajib atau sumbangan derma atau sokongan sukarela karena mereka memandang bahwa pada harta-harta mereka itu ada hak fakir miskin yang meminta dan orang miskin yang tidak meminta bagian karena merasa malu untuk meminta. Ibnu Jarir meriwayatkan sebuah hadis dari Abu Hurairah bahwa Nabi Muhammad saw pernah menerangkan siapa saja yang tergolong orang miskin, dengan sabdanya: Bukanlah orang miskin itu yang tidak diberi sebiji dan dua biji kurma atau sesuap dan dua suap makanan. Beliau ditanya, "(Jika demikian) siapakah yang dinamakan miskin itu?" Beliau menjawab, "Orang yang tidak mempunyai apa yang diperlukan dan tidak dikenal tempatnya sehingga tidak diberikan sedekah kepadanya. Itulah orang yang mahrum tidak dapat bagian." (Riwayat Ibnu Jarir dari Abu Hurairah) Di dalam Al-Qur''an terdapat tiga kelompok ayat yang selalu ber dampingan, tidak dapat dipisahkan yaitu perintah untuk salat danmengeluarkan zakat, perintah supaya taat kepada Allah dan rasulNya, dan perintah untuk bersyukur kepada Allah dan kedua ibubapak. Setelah Allah menerangkan sifat-sifat orang yang bertakwa, maka Allah menjelaskan bahwa mereka itu melihat dengan hati nurani tanda-tanda kekuasaan Allah pada alam kosmos, pada alam semesta yang melintang di sekelilingnya, di bumi dan di langit sehingga memiliki ketenangan jiwa, sebagai tanda seorang yang sudah makrifah kepada Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 20 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 20, 'وَفِى الْاَرْضِ اٰيٰتٌ لِّلْمُوْقِنِيْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 20);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 20;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan di bumi terdapat tanda-tanda (kebesaran Allah) bagi orang-orang yang yakin,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa di bumi ini terdapat tandatanda yang menunjukkan kekuasaan Allah bila dilihat dengan mata hati yaitu benda-benda yang besar, cantik dan indah seperti matahari, bulan, gunung-gunung, hutan yang lebat, perkebunan yang subur, samudera yang biru luas sepanjang penglihatan mata yang diisi dengan bermacam-macam ikan seperti yang nampak dalam akuarium, dan lain-lain. Itu semuanya menunjukkan betapa agung dan sempurna Penciptanya yaitu Allah Rabbul ''alamin. Tafakur tentang keindahan alam ini benar-benar menambah cinta dan keyakinan orang yang yakin akan kekuasaan Allah. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 21 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 21, 'وَفِيْٓ اَنْفُسِكُمْ ۗ اَفَلَا تُبْصِرُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 21);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 21;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan (juga) pada dirimu sendiri. Maka apakah kamu tidak memperhatikan?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini mengisyaratkan kepada manusia bahwa pada diri manusia terdapat bukti-bukti kekuasaan dan kebesaran Allah seperti perbedaan kemampuan, perbedaan bahasa, kecerdasan dan banyak macamnya anggota tubuh yang masing-masing mempunyai fungsi sendiri-sendiri.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 22 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 22, 'وَفِى السَّمَاۤءِ رِزْقُكُمْ وَمَا تُوْعَدُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 22);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 22;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan di langit terdapat (sebab-sebab) rezekimu dan apa yang dijanjikan kepadamu.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menjelaskan bahwa di langit terdapat sebab-sebab rezeki bagi manusia seperti turunnya hujan yang menyebabkan datangnya kesuburan tanah pertanian dan perkebunan yang menghasilkan berbagai hasil bumi dan buah-buahan sebagai rezeki bagi manusia dan ternak piaraannya, dan terdapat pula apa yang dijanjikan Allah untuk manusia yaitu takdir penetapan Allah terhadap manusia itu masing-masing yang semuanya ditulis di Lauh Mahfudz. Sebab-sebab rezeki di langit yang berlaku bagi semua makhluk hidup dan telah umum diketahui paling tidak ada tiga yaitu, air dalam bentuk hujan, angin dan cahaya matahari. Air menjadi sebab rezeki. Melalui air hujan yang jatuh ke atas tanah dan memberikan kelembaban tanah sehingga memungkinkan ditumbuhi tanaman yang bermanfaat bagi manusia dalam bentuk bahan pangan, sandang dan perumahan Angin oleh manusia bisa dimanfaatkan energinya bagi pelayaran dan menggerakkan kincir sumber energi, atau karena menyebabkan terjadinya penyerbukan tanaman sehingga hasil pembuahannya bisa dimakan manusia (lihat adh-dzariyat/51 ayat 1s/d 3). Sedangkan cahaya matahari merupakan sumber utama energi di permukaan bumi yang bisa diperoleh langsung melalui kehangatannya atau secara tidak langsung melalui pertumbuhan tanaman (fotosintesa) pergerakan angin dan siklus hidrologi (lihat: adh-dzariyat/51 ayat 1s/d 3). Bahkan energi minyak bumi yang saat ini merupakan sumber energi yang paling banyak dipakai, berasal dari energi cahaya matahari yang ditangkap oleh organisma laut (plankton), untuk kemudian terakumulasi sebagai endapan yang kemudian berubah menjadi minyak bumi.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 23 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 23, 'فَوَرَبِّ السَّمَاۤءِ وَالْاَرْضِ اِنَّهٗ لَحَقٌّ مِّثْلَ مَآ اَنَّكُمْ تَنْطِقُوْنَ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 23);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 23;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka demi Tuhan langit dan bumi, sungguh, apa yang dijanjikan itu pasti terjadi seperti apa yang kamu ucapkan. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa Allah bersumpah untuk menetapkan keyakinan pada hati manusia tentang adanya hari kebangkitan. Allah bersumpah demi Tuhan langit dan bumi, sesungguhnya hari Kiamat, hari kebangkitan, hari pembalasan dan pembagian rezeki itu yakin benarnya, seperti yakinnya seseorang terhadap perkataan yang diucapkannya. Maka demikian pula, manusia harus yakin akan menjumpai segala yang dijanjikan Allah itu seperti yakinnya dia mendengarkan ucapan-ucapan sendiri, terlebih-lebih jika ucapannya itu dapat direkam dalam sebuah kaset.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 24 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 24, 'هَلْ اَتٰىكَ حَدِيْثُ ضَيْفِ اِبْرٰهِيْمَ الْمُكْرَمِيْنَۘ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 24);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 24;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sudahkah sampai kepadamu (Muhammad) cerita tamu Ibrahim (malaikat-malaikat) yang dimuliakan?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah mengisahkan Nabi Ibrahim dengan bentuk pertanyaan supaya lebih diperhatikan. Allah bertanya, "Apakah sudah sampai kepadamu (Muhammad) cerita tamu Ibrahim (yaitu beberapa malaikat) yang dimuliakan?" Para malaikat yang bertemu dengan Nabi Ibrahim itu sebenarnya dalam perjalanan menuju tempat kediaman kaum Nabi Lut di dekat kampung Sodom dan Gomorah, akan menyampaikan berita kepada Nabi Lut bahwa kaumnya yang durhaka dan melakukan homoseksual itu akan dibinasakan oleh Allah dengan azab yang pedih. Dalam perjalanan itu mereka mampir ke rumah Nabi Ibrahim untuk menyampaikan kabar gembira bahwa beliau akan mendapat seorang anak laki-laki yang alim dan saleh bernama Ishak dari istrinya Sarah walaupun beliau sudah lanjut usianya dan menyangka dirinya sudah mandul. Setibanya di rumah Nabi Ibrahim, mereka disambut oleh tuan rumah dengan penuh penghormatan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 25 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 25, 'اِذْ دَخَلُوْا عَلَيْهِ فَقَالُوْا سَلٰمًا ۗقَالَ سَلٰمٌۚ قَوْمٌ مُّنْكَرُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 25);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 25;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Ingatlah) ketika mereka masuk ke tempatnya lalu mengucapkan, “Salaman” (salam), Ibrahim menjawab, “Salamun” (salam). (Mereka itu) orang-orang yang belum dikenalnya. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini mengungkapkan bahwa ketika tamu para malaikat itu masuk ke tempat Nabi Ibrahim lalu menyampaikan ucapan salam dan Nabi Ibrahim menjawab dengan salam pula, beliau memperlihatkan sikap bertanya karena belum mengenal mereka. Tamu terhormat itu baru pertama kali masuk ke rumah Nabi Ibrahim. Oleh karena itu, beliau memperlihatkan sikap ingin mengenal dahulu. Tetapi beliau tidak menunggu kesempatan untuk berkenalan itu, bahkan secara diam-diam masuk ke dapur untuk menyiapkan hidangan. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 26 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 26, 'فَرَاغَ اِلٰٓى اَهْلِهٖ فَجَاۤءَ بِعِجْلٍ سَمِيْنٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 26);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 26;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka diam-diam dia (Ibrahim) pergi menemui keluarganya, kemudian dibawanya daging anak sapi gemuk (yang dibakar),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa Nabi Ibrahim dengan diamdiam pergi menemui keluarganya yaitu Sarah, lalu menyembelih seekor anak sapi yang gemuk dan setelah dibakar, hidangan itu dibawanya sendiri ke hadapan tamu-tamunya seraya berkata dengan hormat, lalu mempersilakan mereka makan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 27 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 27, 'فَقَرَّبَهٗٓ اِلَيْهِمْۚ قَالَ اَلَا تَأْكُلُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 27);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 27;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'lalu dihidangkannya kepada mereka (tetapi mereka tidak mau makan). Ibrahim berkata, “Mengapa tidak kamu makan.”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa Nabi Ibrahim dengan diamdiam pergi menemui keluarganya yaitu Sarah, lalu menyembelih seekor anak sapi yang gemuk dan setelah dibakar, hidangan itu dibawanya sendiri ke hadapan tamu-tamunya seraya berkata dengan hormat, lalu mempersilakan mereka makan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 28 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 28, 'فَاَوْجَسَ مِنْهُمْ خِيْفَةً  ۗقَالُوْا لَا تَخَفْۗ وَبَشَّرُوْهُ بِغُلٰمٍ عَلِيْمٍ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 28);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 28;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka dia (Ibrahim) merasa takut terhadap mereka. Mereka berkata, “Janganlah kamu takut,” dan mereka memberi kabar gembira kepadanya dengan (kelahiran) seorang anak yang alim (Ishak). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini mengungkapkan bahwa tamu Nabi Ibrahim tidak menyentuh makanan itu karena mereka itu bukan dari jenis manusia, melainkan malaikat yang tidak makan dan tidak minum. Maka Nabi Ibrahim merasa takut terhadap mereka karena menurut kebiasaan, jika tamu tidak mau memakan hidangan yang disodorkan kepadanya, itu berarti ada bahaya yang terselubung (berselimut) di belakangnya, atau akan terjadi sesuatu yang tidak diharapkan. Dalam ayat lain yang sama maksudnya Allah berfirman: \n\nMaka ketika dilihatnya tangan mereka tidak menjamahnya, dia (Ibrahim) mencurigai mereka, dan merasa takut kepada mereka. Mereka (malaikat) berkata, "Jangan takut, sesungguhnya kami diutus kepada kaum Lut." (Hud/11: 70) Setelah malaikat-malaikat menenteramkan hati Nabi Ibrahim, mereka menyampaikan kabar gembira bahwa Ibrahim akan mendapat anak laki-laki yang bernama Ishak dan di belakang Ishak ada lagi cucunya yaitu Nabi Yakub seperti diterangkan dalam ayat lain.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 29 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 29, 'فَاَقْبَلَتِ امْرَاَتُهٗ فِيْ صَرَّةٍ فَصَكَّتْ وَجْهَهَا وَقَالَتْ عَجُوْزٌ عَقِيْمٌ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 29);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 29;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kemudian istrinya datang memekik (tercengang) lalu menepuk wajahnya sendiri seraya berkata, “(Aku ini) seorang perempuan tua yang mandul.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini mengungkapkan bahwa istrinya Sarah setelah mendengar berita tersebut, ia datang dengan pekikan suara yang kuat lalu menepuk mukanya sendiri seraya mengatakan, bagaimana mungkin aku akan melahirkan seorang anak, padahal aku adalah seorang perempuan tua yang mandul?'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 30 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 30, 'قَالُوْا كَذٰلِكِۙ قَالَ رَبُّكِ ۗاِنَّهٗ هُوَ الْحَكِيْمُ الْعَلِيْمُ  ۔', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 30);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 30;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mereka berkata, “Demikianlah Tuhanmu berfirman. Sungguh, Dialah Yang Mahabijaksana, Maha Mengetahui.”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini mengungkapkan tentang jawaban malaikat itu terhadap keraguan Siti Sarah bahwa ia tidak perlu heran; yang demikian itu adalah keputusan Allah Yang Maha Bijaksana lagi Maha Mengetahui.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 31 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 31, 'قَالَ فَمَا خَطْبُكُمْ اَيُّهَا الْمُرْسَلُوْنَۚ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 31);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 31;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dia (Ibrahim) berkata, “Apakah urusanmu yang penting wahai para utusan?”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Nabi Ibrahim bertanya kepada para malaikat setelah menjamu mereka dengan makanan, akan tetapi makanan yang dihidangkan tidak mereka sentuh, sehingga mendebarkan hati Nabi Ibrahim, kemudian beliau bertanya, "Apakah ada firman Allah dalam hal ini hai para utusan?" Pada firman Allah yang lain digambarkan sebagai berikut: \n\nMaka ketika rasa takut hilang dari Ibrahim dan kabar gembira telah datang kepadanya, dia pun bertanya jawab dengan (para malaikat) Kami tentang kaum Lut.Ibrahim sungguh penyantun, lembut hati dan suka kembali (kepada Allah). Wahai Ibrahim! Tinggalkanlah (perbincangan) ini, sungguh, ketetapan Tuhanmu telah datang, dan mereka itu akan ditimpa azab yang tidak dapat ditolak. (Hud/11: 74 - 76)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 32 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 32, 'قَالُوْٓ اِنَّآ اُرْسِلْنَآ اِلٰى قَوْمٍ مُّجْرِمِيْنَۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 32);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 32;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mereka menjawab, “Sesungguhnya kami diutus kepada kaum yang berdosa (kaum Lut),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Para malaikat menjawab, bahwa mereka sesungguhnya diutus kepada kaum Lut dengan membawa azab yang sangat pedih disebabkan dosa mereka yang sangat keji yaitu melakukan homoseksual. Para malaikat itu akan melempari kaum Lut dengan batu-batu berasal dari tanah yang sangat keras yang telah dibakar, dan telah diberi tanda-tanda dari sisi Allah dengan nama-nama orang yang akan dibinasakan yaitu orang-orang yang melampaui batas dalam kedurhakaan. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 33 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 33, 'لِنُرْسِلَ عَلَيْهِمْ حِجَارَةً مِّنْ طِيْنٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 33);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 33;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'agar Kami menimpa mereka dengan batu-batu dari tanah (yang keras),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Para malaikat menjawab, bahwa mereka sesungguhnya diutus kepada kaum Lut dengan membawa azab yang sangat pedih disebabkan dosa mereka yang sangat keji yaitu melakukan homoseksual. Para malaikat itu akan melempari kaum Lut dengan batu-batu berasal dari tanah yang sangat keras yang telah dibakar, dan telah diberi tanda-tanda dari sisi Allah dengan nama-nama orang yang akan dibinasakan yaitu orang-orang yang melampaui batas dalam kedurhakaan. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 34 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 34, 'مُّسَوَّمَةً عِنْدَ رَبِّكَ لِلْمُسْرِفِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 34);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 34;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang ditandai dari Tuhanmu untuk (membinasakan) orang-orang yang melampaui batas.”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Para malaikat menjawab, bahwa mereka sesungguhnya diutus kepada kaum Lut dengan membawa azab yang sangat pedih disebabkan dosa mereka yang sangat keji yaitu melakukan homoseksual. Para malaikat itu akan melempari kaum Lut dengan batu-batu berasal dari tanah yang sangat keras yang telah dibakar, dan telah diberi tanda-tanda dari sisi Allah dengan nama-nama orang yang akan dibinasakan yaitu orang-orang yang melampaui batas dalam kedurhakaan. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 35 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 35, 'فَاَخْرَجْنَا مَنْ كَانَ فِيْهَا مِنَ الْمُؤْمِنِيْنَۚ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 35);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 35;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Lalu Kami keluarkan orang-orang yang beriman yang berada di dalamnya (negeri kaum Lut) itu.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini Allah menerangkan, bahwa setelah para malaikat pergi kepada kaum Lut untuk menurunkan azab, timbullah tanya jawab di antara mereka tentang caranya menghancurkan orang-orang durhaka, maka Allah memerintahkan agar mereka lebih dahulu mengeluarkan orang-orang yang beriman dari kampung halaman mereka, supaya terhindar dari azab. Para malaikat itu hanya menjumpai sebuah rumah saja yaitu rumah Nabi Lut dengan penghuninya yang muslim sekitar tiga belas orang saja. Mereka yang selamat pada ayat ini disebut sebagai orang Islam yang berserah diri dan tekun melaksanakan perintah Allah dan menjauhi larangan-Nya. Pada kedua ayat ini diterangkan bahwa di antara kaum Lut hidup orang-orang Mukminin dan Muslimin. Menurut Muhammad Ali asshabuni, mereka disebut Mukminin (ayat 35) karena mereka mengimani dengan hati, dan mereka disebut sebagai Muslimin (ayat 36) karena mereka mengamalkan ajaran-ajaran Allah dengan anggota tubuh mereka dengan ketaatan. Hal ini sejalan dengan hadis al-Bukhari dan Muslim yaitu ketika Rasulullah saw ditanya tentang Islam dan Iman: Apakah Islam? beliau menjawab, "Engkau bersaksi bahwa tiada Tuhan selain Allah dan bahwa Muhammad adalah utusan Allah, mendirikan salat (yang lima waktu), mengeluarkan zakat, berpuasa di bulan Ramadan dan naik haji ke Baitullah. Dan apakah iman itu? beliau menjawab, Engkau Beriman kepada Allah, para malaikat, kitab-kitab Nya, para utusan-Nya, hari akhir dan kepada takdir yang baik dan yang buruk dari Allah. (Riwayat al-Bukhari dan Muslim) Perlu dijelaskan di sini apabila kata Islam disebut secara sendiri, maka berarti tercakup pengertian iman. Demikian pula dengan kata iman bila disebut sendiri berarti tercakup kata Islam. Tetapi kalau keduanya disebutkan bersamaan, maka keduanya berbeda satu sama lain, masing-masing memiliki artinya sendiri-sendiri, iman berbeda dari Islam. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 36 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 36, 'فَمَا وَجَدْنَا فِيْهَا غَيْرَ بَيْتٍ مِّنَ الْمُسْلِمِيْنَۚ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 36);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 36;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka Kami tidak mendapati di dalamnya (negeri itu), kecuali sebuah rumah dari orang-orang Muslim (Lut).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini Allah menerangkan, bahwa setelah para malaikat pergi kepada kaum Lut untuk menurunkan azab, timbullah tanya jawab di antara mereka tentang caranya menghancurkan orang-orang durhaka, maka Allah memerintahkan agar mereka lebih dahulu mengeluarkan orang-orang yang beriman dari kampung halaman mereka, supaya terhindar dari azab. Para malaikat itu hanya menjumpai sebuah rumah saja yaitu rumah Nabi Lut dengan penghuninya yang muslim sekitar tiga belas orang saja. Mereka yang selamat pada ayat ini disebut sebagai orang Islam yang berserah diri dan tekun melaksanakan perintah Allah dan menjauhi larangan-Nya. Pada kedua ayat ini diterangkan bahwa di antara kaum Lut hidup orang-orang Mukminin dan Muslimin. Menurut Muhammad Ali asshabuni, mereka disebut Mukminin (ayat 35) karena mereka mengimani dengan hati, dan mereka disebut sebagai Muslimin (ayat 36) karena mereka mengamalkan ajaran-ajaran Allah dengan anggota tubuh mereka dengan ketaatan. Hal ini sejalan dengan hadis al-Bukhari dan Muslim yaitu ketika Rasulullah saw ditanya tentang Islam dan Iman: Apakah Islam? beliau menjawab, "Engkau bersaksi bahwa tiada Tuhan selain Allah dan bahwa Muhammad adalah utusan Allah, mendirikan salat (yang lima waktu), mengeluarkan zakat, berpuasa di bulan Ramadan dan naik haji ke Baitullah. Dan apakah iman itu? beliau menjawab, Engkau Beriman kepada Allah, para malaikat, kitab-kitab Nya, para utusan-Nya, hari akhir dan kepada takdir yang baik dan yang buruk dari Allah. (Riwayat al-Bukhari dan Muslim) Perlu dijelaskan di sini apabila kata Islam disebut secara sendiri, maka berarti tercakup pengertian iman. Demikian pula dengan kata iman bila disebut sendiri berarti tercakup kata Islam. Tetapi kalau keduanya disebutkan bersamaan, maka keduanya berbeda satu sama lain, masing-masing memiliki artinya sendiri-sendiri, iman berbeda dari Islam. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 37 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 37, 'وَتَرَكْنَا فِيْهَآ اٰيَةً لِّلَّذِيْنَ يَخَافُوْنَ الْعَذَابَ الْاَلِيْمَۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 37);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 37;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan Kami tinggalkan padanya (negeri itu) suatu tanda bagi orang-orang yang takut kepada azab yang pedih.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini Allah swt menerangkan, bahwa peristiwa penghancuran kaum Lut hendaknya dijadikan peringatan bagi orangorang yang takut kepada Allah, dan bekas-bekas peristiwa itu dapat dilihat tanda-tandanya yaitu tumpukan batu-batu tempat diturunkan azab yang telah amblas (masuk ke dalam bumi) dan berbentuk sebuah danau yaitu danau Tabariyah (laut mati). Ayat ini mengandung isyarat, bahwa jika pada sebuah kota terdapat unsur kekafiran dan kefasikan yang sudah merajalela, maka jumlah orang Mukmin yang sedikit tidak dapat menghalang-halangi datangnya azab, dan bila mayoritas penduduknya terdiri dari umat yang saleh, maka mereka dapat terpelihara dari azab, walaupun terdapat di dalamnya beberapa orang yang durhaka kepada Tuhan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 38 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 38, 'وَفِيْ مُوْسٰىٓ اِذْ اَرْسَلْنٰهُ اِلٰى فِرْعَوْنَ بِسُلْطٰنٍ مُّبِيْنٍ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 38);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 38;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan pada Musa (terdapat tanda-tanda kekuasaan Allah) ketika Kami mengutusnya kepada Fir‘aun dengan membawa mukjizat yang nyata. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini Allah menerangkan bahwa dalam kisah Musa terdapat suatu iktibar untuk orang-orang yang berpikir. Yaitu ketika Allah mengutus Musa kepada Fir''aun dengan mengemukakan keterangan yang meyakinkan serta diperkuat dengan mukjizat yang nyata yang dapat disaksikan dengan mata kepala manusia pada waktu itu'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 39 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 39, 'فَتَوَلّٰى بِرُكْنِهٖ وَقَالَ سٰحِرٌ اَوْ مَجْنُوْنٌ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 39);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 39;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Tetapi dia (Fir‘aun) bersama bala tentaranya berpaling dan berkata, “Dia adalah seorang pesihir atau orang gila.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Namun, Fir''aun menolak ajaran Musa dan membangkang seraya mengatakan bahwa apa yang dibawa oleh Musa itu adalah kebohongan belaka. Penolakan Fir''aun dilakukannya dengan berbangga atas bala tentaranya, pengawalnya, menteri-menterinya, kekuatannya dan kekuasaannya sambil berkata, "Sesungguhnya Musa itu tukang sihir yang ahli atau orang gila." Ucapan Fir''aun seperti itu diungkapkan dalam Al-Qur''an: \n\nDia (Fir''aun) berkata, "Sungguh, rasulmu yang diutus kepada kamu benar-benar orang gila." (asy-Syu''ara''/26: 27) \n\nFir''aun bermaksud agar kaumnya menolak seruan Musa, sehingga mereka tidak memperhatikan serta memikirkan apa yang telah diserukan. Hal ini disebabkan Fir''aun takut kehilangan pengaruhnya, dan keruntuhan kekuasaannya, serta takut akan kehilangan kekayaan, wibawa dan kedudukannya. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 40 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 40, 'فَاَخَذْنٰهُ وَجُنُوْدَهٗ فَنَبَذْنٰهُمْ فِى الْيَمِّ وَهُوَ مُلِيْمٌۗ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 40);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 40;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka Kami siksa dia beserta bala tentaranya, lalu Kami lemparkan mereka ke dalam laut, dalam keadaan tercela. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa Allah swt sangat murka kepada Fir''aun dan bala tentaranya. Mereka semua dilemparkan dan dibenamkan ke dalam laut dengan mendapat cercaan karena kekufuran dan kedurhakaan mereka. Hal yang demikian itu sebagai tanda besarnya kekuasaan Allah untuk merendahkan orang-orang yang ingkar dan sebagai tanda bahwa mereka menerima akibat yang buruk. Juga sebagai balasan atas kesombongan dan keingkaran mereka terhadap perintah pencipta.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 41 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 41, 'وَفِيْ عَادٍ اِذْ اَرْسَلْنَا عَلَيْهِمُ الرِّيْحَ الْعَقِيْمَۚ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 41);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 41;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan (juga) pada (kisah kaum) ‘Ad, ketika Kami kirimkan kepada mereka angin yang membinasakan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian dalam ayat ini Allah swt menceritakan tentang kisah binasanya kaum ''Ad. Bahwa bencana yang menimpa kaum itu mestinya dijadikan iktibar bagi orang-orang yang berpikir. Yaitu ketika Allah swt menurunkan angin panas yang membinasakan mereka sehingga tidak satu pun yang tersisa kecuali kehancuran dan kemusnahan, baik manusia dan hewan maupun bangunan. Tegasnya tidak seorang pun dari mereka yang selamat akibat angin panas dan hembusan api itu, lagi pula tidak satu bangunan pun yang tidak musnah, semuanya menjadi puing-puing dan hancur lebur.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 42 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 42, 'مَا تَذَرُ مِنْ شَيْءٍ اَتَتْ عَلَيْهِ اِلَّا جَعَلَتْهُ كَالرَّمِيْمِۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 42);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 42;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(angin itu) tidak membiarkan suatu apa pun yang dilandanya, bahkan dijadikannya seperti serbuk.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian dalam ayat ini Allah swt menceritakan tentang kisah binasanya kaum ''Ad. Bahwa bencana yang menimpa kaum itu mestinya dijadikan iktibar bagi orang-orang yang berpikir. Yaitu ketika Allah swt menurunkan angin panas yang membinasakan mereka sehingga tidak satu pun yang tersisa kecuali kehancuran dan kemusnahan, baik manusia dan hewan maupun bangunan. Tegasnya tidak seorang pun dari mereka yang selamat akibat angin panas dan hembusan api itu, lagi pula tidak satu bangunan pun yang tidak musnah, semuanya menjadi puing-puing dan hancur lebur.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 43 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 43, 'وَفِيْ ثَمُوْدَ اِذْ قِيْلَ لَهُمْ تَمَتَّعُوْا حَتّٰى حِيْنٍ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 43);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 43;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan pada (kisah kaum) Samud, ketika dikatakan kepada mereka, “Bersenang-senanglah kamu sampai waktu yang ditentukan.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini Allah swt menerangkan kisah kaum Samud yang berisi nasihat bagi yang sadar dan yang memikirkan tandatanda kenyataan adanya Tuhan. Yaitu ketika Nabi Saleh mengatakan kepada mereka supaya bersenang-senang di rumah mereka sampai datang azab Tuhan. Ayat lain yang bersamaan maksudnya, Allah berfirman: Bersukarialah kamu semua di rumahmu selama tiga hari. Itu adalah janji yang tidak dapat didustakan. (Hud/11: 65) \n\nSetelah melalui tiga hari yang dijanjikan, Allah membinasakan mereka dengan azab yang berupa petir sebagaimana firman Allah berikut: \n\nDan adapun kaum Samud, mereka telah Kami beri petunjuk tetapi mereka lebih menyukai kebutaan (kesesatan) daripada petunjuk itu, maka mereka disambar petir sebagai azab yang menghinakan disebabkan apa yang telah mereka kerjakan. (Fussilat/41: 17) Kemudian setelah itu diturunkan kepada mereka azab yang tidak akan bisa mereka tolak. Akan tetapi mereka mengatakan bahwa semua itu hanyalah kabar bohong belaka, bahkan mereka berlaku sombong tanpa mengkhawatirkan akibat dari ancaman Tuhan tersebut. Maka selanjutnya Allah swt menurunkan petir dari langit menyambar mereka, dan menghapuskan mereka semuanya, mereka melihat dan mengalami kejadian itu. Bencana tersebut adalah balasan atas dosa mereka dan atas kejahilan yang mereka lakukan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 44 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 44, 'فَعَتَوْا عَنْ اَمْرِ رَبِّهِمْ فَاَخَذَتْهُمُ الصّٰعِقَةُ وَهُمْ يَنْظُرُوْنَ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 44);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 44;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Lalu mereka berlaku angkuh terhadap perintah Tuhannya, maka mereka disambar petir sedang mereka melihatnya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini Allah swt menerangkan kisah kaum Samud yang berisi nasihat bagi yang sadar dan yang memikirkan tandatanda kenyataan adanya Tuhan. Yaitu ketika Nabi Saleh mengatakan kepada mereka supaya bersenang-senang di rumah mereka sampai datang azab Tuhan. Ayat lain yang bersamaan maksudnya, Allah berfirman: Bersukarialah kamu semua di rumahmu selama tiga hari. Itu adalah janji yang tidak dapat didustakan. (Hud/11: 65) \n\nSetelah melalui tiga hari yang dijanjikan, Allah membinasakan mereka dengan azab yang berupa petir sebagaimana firman Allah berikut: \n\nDan adapun kaum Samud, mereka telah Kami beri petunjuk tetapi mereka lebih menyukai kebutaan (kesesatan) daripada petunjuk itu, maka mereka disambar petir sebagai azab yang menghinakan disebabkan apa yang telah mereka kerjakan. (Fussilat/41: 17) Kemudian setelah itu diturunkan kepada mereka azab yang tidak akan bisa mereka tolak. Akan tetapi mereka mengatakan bahwa semua itu hanyalah kabar bohong belaka, bahkan mereka berlaku sombong tanpa mengkhawatirkan akibat dari ancaman Tuhan tersebut. Maka selanjutnya Allah swt menurunkan petir dari langit menyambar mereka, dan menghapuskan mereka semuanya, mereka melihat dan mengalami kejadian itu. Bencana tersebut adalah balasan atas dosa mereka dan atas kejahilan yang mereka lakukan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 45 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 45, 'فَمَا اسْتَطَاعُوْا مِنْ قِيَامٍ وَّمَا كَانُوْا مُنْتَصِرِيْنَۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 45);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 45;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka mereka tidak mampu bangun dan juga tidak mendapat pertolongan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini Allah swt menjelaskan bahwa mereka tidak dapat lolos dari malapetaka itu dan mereka tidak pula mendapatkan jalan keluar dan pertolongan dari siapapun, juga mereka tidak dapat tolong menolong antara mereka untuk menghindarkan diri dari siksaan Tuhan ketika itu'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 46 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 46, 'وَقَوْمَ نُوْحٍ مِّنْ قَبْلُ ۗ اِنَّهُمْ كَانُوْا قَوْمًا فٰسِقِيْنَ ࣖ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 46);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 46;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan sebelum itu (telah Kami binasakan) kaum Nuh. Sungguh, mereka adalah kaum yang fasik. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa Allah sebelumnya telah membinasakan kaum Nuh dengan badai atau topan yang melanda mereka karena kefasikan, kejahatan, serta pelanggaran yang mereka lakukan terhadap yang dilarang (diharamkan) Allah swt'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 47 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 47, 'وَالسَّمَاۤءَ بَنَيْنٰهَا بِاَيْىدٍ وَّاِنَّا لَمُوْسِعُوْنَ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 47);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 47;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan langit Kami bangun dengan kekuasaan (Kami), dan Kami benar-benar meluaskannya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa Allah swt telah menciptakan langit dengan bentuk indah yang menyatakan keagungan kekuasaanNya seperti diangkatnya langit di atas dengan kekuasaan-Nya, dijadikan laksana atap yang tinggi dan kokoh. Dan Allah swt kuasa atas semua itu, Dia tidak pernah lelah atau lesu dan tidak pernah pula merasa letih. Secara tidak langsung ayat ini menyanggah ucapan orang-orang Yahudi yang mengatakan bahwa Allah swt menjadikan langit dan bumi selama 6 (enam) hari, namun pada hari ketujuh Allah beristirahat dan berbaring di ''Arsy-Nya karena letih. Kata ''langit banyak digunakan dalam berbagai ayat Al-Qur''an. Kata ini, dalam beberapa ayat mempunyai arti alam semesta. Demikian pula halnya pada ayat di atas. Alam semesta bukanlah sesuatu yang statis. Alam semesta adalah sesuatu yang dinamis, selalu berubah, dan meluas. Hal ini diungkapkan setelah ilmu astronomi mengalami kemajuan yang sangat pesat. Keadaan demikian ini ternyata sudah disebutkan dalam Al-Qur''an 14 abad yang lalu, ketika ilmu astronomi masih sangat primitif. Sampai dengan permulaan abad ke-20, alam semesta hanya diketahui sebagai sesuatu yang tercipta pada suatu saat yang tidak dapat diketahui masanya, dan mempunyai bentuk seperti apa yang dilihat saat ini. Penelitian, observasi dan perhitungan-perhitungan dengan menggunakan teknologi modern yang tersedia, mengungkapkan bahwa alam semesta memiliki permulaan, dan sampai saat ini secara teratur terus meluas. Alam semesta adalah kosmos, yaitu ruang angkasa serta semua benda langit yang terdapat di dalamnya, termasuk semua galaksi (tata bintang), baik yang sudah diketahui maupun belum diketahui manusia. Alam semesta, atau alam raya, tidak dapat dibayangkan luasnya. Para ilmuwan mengukur jarak di alam semesta dengan ukuran tahun cahaya. Satu tahun cahaya sama dengan 9,46 triliun km. Bagian alam semesta paling jauh yang sudah "diketahui" manusia adalah pada jarak 15 milyar tahun cahaya. Pada jarak itu ditemukan banyak gugus super galaksi yang jumlahnya tak terhitung. Bintang yang paling dekat dengan matahari berjarak sekitar 4,3 tahun cahaya dari bumi. Matahari dan semua bintang yang dapat kita lihat dengan mata telanjang terdapat dalam gugus galaksi tatasurya, atau dinamakan gugus bimasakti. Di seluruh alam raya ini, terdapat bermiliar galaksi yang sedang bergerak saling menjauh dengan cepat. Galaksi diperkirakan memenuhi ruang angkasa sampai jarak 10.000 juta tahun cahaya dari bumi. Jika dalam satu detik, cahaya menempuh jarak ï‚± 200.000 km, berapa luas ruang angkasa sebenarnya? Allah meluaskan alam raya sebegitu luasnya sejak diciptakan. Meluasnya alam terus berlangsung sepanjang masa. Hal ini sesuai dengan teori ekspansi yang menyebutkan bahwa nebulae, calon bintang, menjauh dari galaksi bimasakti dengan kecepatan yang berbeda-beda. Bahkan, benda-benda langit dalam satu galaksi pun sedang saling menjauh satu sama lain. Para peneliti mulai melakukan penelitian mengenai pergerakan benda-benda langit pada tahun 1920-an. Diyakini bahwa pada tahun 1920-an merupakan momentum penting dalam perkembangan astronomi modern. Pada tahun 1922, ahli fisika Rusia, Alexander Friedman, menghasilkan perhitungan yang menunjukkan bahwa struktur alam semesta tidaklah statis. Ia menyebutkan bahwa penyebab sekecil apa pun cukup untuk menyebabkan struktur alam semesta mengembang atau mengerut menurut Teori Relativitas Einstein. George Lemaitre, seorang ahli kosmologi dari Belgia, adalah orang pertama yang menyadari arti perhitungan Friedman. Berdasarkan perhitungan ini, Lemaitre, menyatakan bahwa alam semesta mempunyai permulaan dan alam mengembang sebagai akibat dari sesuatu yang telah memicunya. Pemikiran teoritis kedua ilmuwan ini tidak menarik banyak perhatian. Pemikiran ini barangkali akan terabaikan, jika tidak ditemukan bukti pengamatan baru yang mengguncangkan dunia ilmiah pada tahun 1929. Pada tahun itu, ahli astronomi Amerika, Edwin Hubble, membuat penemuan paling penting dalam sejarah astronomi. Ketika mengamati sejumlah bintang melalui teleskop raksasanya, dia menemukan bahwa cahaya bintang-bintang itu bergeser ke arah ujung merah spektrum. Pergeseran itu berkaitan langsung dengan perubahan jarak bintang-bintang dari bumi. Pengamatannya menemukan bahwa suatu galaksi yang berjarak satu juta tahun cahaya dari bumi sedang bergerak menjauh pada kecepatan 168 km per tahun. Alam semesta, dimana benda-benda langitnya secara teratur bergerak saling menjauhi, mengindikasikan bahwa alam semesta itu sendiri juga sedang mengembang. Pengamatan pada tahun-tahun berikutnya mengungkapkan dan mengkonfirmasi dugaan tersebut. Bintang-bintang tidak hanya menjauh dari bumi; mereka juga menjauhi satu sama lain. Satusatunya kesimpulan yang dapat diturunkan dari temuan ini adalah bahwa alam semesta sedang "mengembang". Suatu konfirmasi kepada pernyataan yang ada di dalam Al-Qur''an, jauh sebelum hal itu diketahui oleh umat manusia. Penemuan ini mengguncangkan landasan model alam semesta yang diyakini pada saat itu. Temuannya ini diakui dunia. Namun perhitungannya dianggap salah, dan direvisi kemudian. Menurut sementara ilmuwan, suatu saat nanti, diperkirakan alam raya ini tidak lagi berkembang. Ia akan mengkerut dan kembali menyatu seperti semula. Kalau peristiwa ledakan dahsyat yang menjadi tanda terbentuknya aneka planet, dan berpisahnya langit dan bumi, dinamai Big Bang; maka penyusutan dan penyatuan alam raya dinamai Big Crunch.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 48 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 48, 'وَالْاَرْضَ فَرَشْنٰهَا فَنِعْمَ الْمَاهِدُوْنَ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 48);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 48;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan bumi Kami hamparkan; maka (Kami) sebaik-baik yang telah menghamparkan. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa Allah swt membentangkan bumi berupa hamparan dengan maksud untuk dihuni oleh manusia dan hewan. Dijadikan-Nya bumi penuh rezeki dan bahan pangan, baik berupa binatangnya, tumbuh-tumbuhan maupun yang lain-lain yang terpelihara keabadiannya sampai hari Kiamat. Demikian juga Allah swt menjadikan dalam perut bumi barang-barang tambang yang tampak dan yang tidak tampak yang semuanya diperuntukkan bagi manusia. Dengan isi bumi itu manusia dapat mendirikan bangunanbangunan, membuat perhiasan dari emas, perak, dan batu-batu permata lainnya. Kemudian setelah itu manusia membuat alat perang, kapal laut, pesawat terbang dari bahan besi dan dari barang tambang lainnya. Pada akhir ayat ini Allah menyatakan kekuasaan dan keindahan ciptaan-Nya dengan mengatakan, "Betapa bagusnya apa yang telah Kami jadikan, dan betapa indahnya apa yang telah Kami ciptakan."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 49 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 49, 'وَمِنْ كُلِّ شَيْءٍ خَلَقْنَا زَوْجَيْنِ لَعَلَّكُمْ تَذَكَّرُوْنَ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 49);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 49;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan segala sesuatu Kami ciptakan berpasang-pasangan agar kamu mengingat (kebesaran Allah). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah swt menerangkan bahwa Dia menciptakan segala macam kejadian dalam bentuk yang berlainan dan dengan sifat yang bertentangan. Yaitu setiap sesuatu itu merupakan lawan atau pasangan bagi yang lain. Dijadikan-Nya kebahagiaan dan kesengsaraan, petunjuk dan kesesatan, malam dan siang, langit dan bumi, hitam dan putih, lautan dan daratan, gelap dan terang, hidup dan mati, surga dan neraka, dan sebagainya. Semuanya itu dimaksudkan agar manusia ingat dan sadar serta mengambil pelajaran dari semuanya, sedangkan Allah Maha Esa tidak memerlukan pasangan. Dengan demikian hanya Allah yang tidak membutuhkan yang lain. Sehingga mengetahui bahwa Allah-lah Tuhan yang Maha Esa yang berhak disembah dan tak ada sekutu bagi-Nya. Dia-lah yang kuasa menjadikan segala sesuatu dan Dia pulalah yang kuasa untuk memusnahkannya, Dialah yang juga kuasa menciptakan segala sesuatu berpasang-pasang, bermacam-macam jenis dan bentuk, sedangkan mahluk-Nya tidak berdaya dan harus menyadari hal itu. Penjelasan mengenai Allah menciptakan segala sesuatunya berpasang-pasangan menurut kajian ilmiah dapat dilihat pada penjelasan Surah asy-Syura/42: 11. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 50 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 50, 'فَفِرُّوْٓا اِلَى اللّٰهِ ۗاِنِّيْ لَكُمْ مِّنْهُ نَذِيْرٌ مُّبِيْنٌۚ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 50);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 50;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka segeralah kembali kepada (menaati) Allah. Sungguh, aku seorang pemberi peringatan yang jelas dari Allah untukmu. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Oleh sebab itu, hendaklah manusia meminta perlindungan kepada Allah dan berpegang kepada-Nya dalam segala urusan dan masalahnya dengan menaati segala perintah-Nya dan bekerja untuk tujuan taat kepada-Nya. Allah swt selanjutnya akan menyiksa orangorang yang tidak menaati perintah-Nya. Pada akhir ayat ini Allah memerintahkan rasul-Nya supaya menegaskan bahwa ia sesungguhnya mendapat amanat dari Allah swt untuk menyampaikan kepada manusia bahwa Allah swt akan membalas dengan siksaan kepada mereka atas segala pelanggaran pelanggaran terhadap perintah-Nya, sebagaimana Allah swt menurunkan siksa-Nya kepada umat-umat yang terdahulu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 51 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 51, 'وَلَا تَجْعَلُوْا مَعَ اللّٰهِ اِلٰهًا اٰخَرَۗ اِنِّيْ لَكُمْ مِّنْهُ نَذِيْرٌ مُّبِيْنٌ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 51);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 51;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan janganlah kamu mengadakan tuhan yang lain selain Allah. Sungguh, aku seorang pemberi peringatan yang jelas dari Allah untukmu. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian Allah swt dalam ayat ini melarang manusia menjadikan sesuatu sembahan di samping-Nya. Karena segala sesuatu selain Allah tidak patut disembah. Pada akhir ayat ini Allah swt memerintahkan kepada rasul-Nya supaya menegaskan bahwa ia sesungguhnya pemberi peringatan yang sebenarnya dari Allah, untuk menyampaikan peringatan akan adanya siksaan Allah bagi siapa saja yang menjadikan suatu makhluk sebagai tujuan ibadat dan disembah. Dalam ayat yang sama artinya Allah swt berfirman: \n\nBarang siapa mengharap pertemuan dengan Tuhannya maka hendaklah dia mengerjakan kebajikan dan janganlah dia mempersekutukan dengan sesuatu pun dalam beribadah kepada Tuhannya." (al-Kahf/18: 110)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 52 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 52, 'كَذٰلِكَ مَآ اَتَى الَّذِيْنَ مِنْ قَبْلِهِمْ مِّنْ رَّسُوْلٍ اِلَّا قَالُوْا سَاحِرٌ اَوْ مَجْنُوْنٌ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 52);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 52;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demikianlah setiap kali seorang Rasul yang datang kepada orang-orang yang sebelum mereka, mereka (kaumnya) pasti mengatakan, “Dia itu pesihir atau orang gila.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini Allah menerangkan bahwa kaum Quraisy mendustakan Muhammad saw, dengan menuduh bahwa Muhammad saw itu tukang sihir atau orang gila. Demikian juga halnya umatumat terdahulu telah mendustakan rasul mereka. Mereka telah mengatakan seperti kata-kata yang dilontarkan oleh kaum kafir Mekah itu. Hal itu bukanlah suatu hal yang baru dalam kisah umat manusia. Semua rasul itu telah didustakan dan disakiti, akan tetapi rasul-rasul tersebut bersabar hingga datangnya pertolongan Allah. Ayat ini sebagai penghibur hati Rasulullah atas segala penderitaan yang dialaminya akibat penolakan kafir Mekah. Mereka telah menjadi angkuh dengan hal-hal kebendaan yang merupakan nikmat yang mengagungkan mereka. Mereka teperdaya oleh penundaan azab Tuhan kepada mereka. Maka segala peringatan dan nasihat tidak bermanfaat bagi mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 53 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 53, 'اَتَوَاصَوْا بِهٖۚ بَلْ هُمْ قَوْمٌ طَاغُوْنَۚ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 53);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 53;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Apakah mereka saling berpesan tentang apa yang dikatakan itu. Sebenarnya mereka adalah kaum yang melampaui batas. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini Allah mencela orang-orang kafir itu dengan mengatakan, "Apakah orang-orang yang kafir terdahulu itu telah berpesan kepada yang kemudian dari mereka untuk mendustakan Muhammad saw dan mereka datang kemudian itu betul-betul menerima dan mengikuti saran tersebut?" Mereka sesungguhnya adalah kaum yang durhaka yang melampaui batas dalam pelanggaran-pelanggaran ketentuan agama dan akal. Kedurhakaan mereka itulah yang merupakan tali pengikat antara orang-orang yang terdahulu dengan orang-orang kemudian yang seolah-olah memanifestasikan adanya pesan tersebut.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 54 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 54, 'فَتَوَلَّ عَنْهُمْ فَمَآ اَنْتَ بِمَلُوْمٍ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 54);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 54;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka berpalinglah engkau dari mereka, dan engkau sama sekali tidak tercela. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Muhammad saw diperintahkan Allah supaya berpaling dari mereka, dan Allah menerangkan bahwa ia tidak tercela karena Dia tidak membebani Rasulullah untuk mengislamkan kaum kafir Mekah. Tugasnya hanyalah melakukan dakwah dan ini telah dilakukannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 55 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 55, 'وَذَكِّرْ فَاِنَّ الذِّكْرٰى تَنْفَعُ الْمُؤْمِنِيْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 55);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 55;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan tetaplah memberi peringatan, karena sesungguhnya peringatan itu bermanfaat bagi orang-orang mukmin. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini memerintahkan kepada Muhammad saw agar tetap memberikan peringatan dan nasihat, karena peringatan dan nasihat itu akan bermanfaat bagi orang yang hatinya siap menerima petunjuk. Diriwayatkan oleh Ibnu Jarir, Ibnu Abi hatim, dan al-Baihaqi bahwa ''Ali bin Abi thalib berkata, "Setelah diturunkan ayat 54 tersebut yaitu tatkala Allah memerintahkan kepada Nabi Muhammad saw untuk memalingkan diri, maka setiap orang menyangka akan datang malapetaka yang akan menimpa. Maka turunlah ayat 55 ini, dan legalah perasaan dan lapanglah dada kami.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 56 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 56, 'وَمَا خَلَقْتُ الْجِنَّ وَالْاِنْسَ اِلَّا لِيَعْبُدُوْنِ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 56);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 56;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Aku tidak menciptakan jin dan manusia melainkan agar mereka beribadah kepada-Ku. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menegaskan bahwa Allah tidaklah menjadikan jin dan manusia melainkan untuk mengenal-Nya dan supaya menyembah-Nya. Dalam kaitan ini Allah swt berfirman: \n\nPadahal mereka hanya disuruh menyembah Tuhan Yang MahaEsa; tidak ada tuhan selain Dia. Mahasuci Dia dari apa yang mereka persekutukan. (at-Taubah/9: 31) \n\nPendapat tersebut sama dengan pendapat az-Zajjaj, tetapi ahli tafsir yang lain berpendapat bahwa maksud ayat tersebut ialah bahwa Allah tidak menjadikan jin dan manusia kecuali untuk tunduk kepada-Nya dan untuk merendahkan diri. Maka setiap makhluk, baik jin atau manusia wajib tunduk kepada peraturan Tuhan, merendahkan diri terhadap kehendak-Nya. Menerima apa yang Dia takdirkan, mereka dijadikan atas kehendak-Nya dan diberi rezeki sesuai dengan apa yang telah Dia tentukan. Tak seorang pun yang dapat memberikan manfaat atau mendatangkan mudarat karena kesemuanya adalah dengan kehendak Allah. Ayat tersebut menguatkan perintah mengingat Allah swt dan memerintahkan manusia supaya melakukan ibadah kepada Allah swt.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 57 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 57, 'مَآ اُرِيْدُ مِنْهُمْ مِّنْ رِّزْقٍ وَّمَآ اُرِيْدُ اَنْ يُّطْعِمُوْنِ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 57);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 57;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Aku tidak menghendaki rezeki sedikit pun dari mereka dan Aku tidak menghendaki agar mereka memberi makan kepada-Ku.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini Allah menerangkan bahwa sesungguhnya Dia tidak akan minta bantuan mereka untuk sesuatu kemanfaatan atau kemudaratan dan tidak pula menghendaki rezeki dan memberikan makan seperti apa yang dikerjakan oleh para majikan terhadap buruhnya, karena Allah tidak perlu kepada mereka, bahkan merekalah yang memerlukan-Nya dalam segala urusan mereka, Allah adalah pencipta mereka dan pemberi rezeki mereka. Dialah yang mempunyai kekuasaan, kemampuan dan kekuatan yang tak terhingga. Akan tetapi kebanyakan manusia tidak mengerti. Abu Hurairah meriwayatkan dan berkata: \n\nRasulullah bersabda: "Allah berfirman:"Wahai anak Adam, luangkanlah waktu untuk beribadat kepada-Ku niscaya Aku penuhi dadamu dengan kekayaan dan Ku-tutupi kefakiranmu, dan jika engkau tidak berbuat (menyediakan waktu untuk beribadat kepadaKu) niscaya akan Ku-penuhi dadamu dengan kesibukan (keruwetan) dan tak akan Ku-tutupi keperluanmu (kefakiran)." (Riwayat Ahmad dari Abu Hurairah)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 58 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 58, 'اِنَّ اللّٰهَ هُوَ الرَّزَّاقُ ذُو الْقُوَّةِ الْمَتِيْنُ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 58);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 58;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh Allah, Dialah Pemberi rezeki Yang Mempunyai Kekuatan lagi Sangat Kokoh.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini Allah menerangkan bahwa sesungguhnya Dia tidak akan minta bantuan mereka untuk sesuatu kemanfaatan atau kemudaratan dan tidak pula menghendaki rezeki dan memberikan makan seperti apa yang dikerjakan oleh para majikan terhadap buruhnya, karena Allah tidak perlu kepada mereka, bahkan merekalah yang memerlukan-Nya dalam segala urusan mereka, Allah adalah pencipta mereka dan pemberi rezeki mereka. Dialah yang mempunyai kekuasaan, kemampuan dan kekuatan yang tak terhingga. Akan tetapi kebanyakan manusia tidak mengerti. Abu Hurairah meriwayatkan dan berkata: \n\nRasulullah bersabda: "Allah berfirman:"Wahai anak Adam, luangkanlah waktu untuk beribadat kepada-Ku niscaya Aku penuhi dadamu dengan kekayaan dan Ku-tutupi kefakiranmu, dan jika engkau tidak berbuat (menyediakan waktu untuk beribadat kepadaKu) niscaya akan Ku-penuhi dadamu dengan kesibukan (keruwetan) dan tak akan Ku-tutupi keperluanmu (kefakiran)." (Riwayat Ahmad dari Abu Hurairah)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 59 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 59, 'فَاِنَّ لِلَّذِيْنَ ظَلَمُوْا ذَنُوْبًا مِّثْلَ ذَنُوْبِ اَصْحٰبِهِمْ فَلَا يَسْتَعْجِلُوْنِ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 59);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 59;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka sungguh, untuk orang-orang yang zalim ada bagian (azab) seperti bagian teman-teman mereka (dahulu); maka janganlah mereka meminta kepada-Ku untuk menyegerakannya. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah swt menegaskan bahwa ancaman-Nya itu pasti terjadi, dan terjadinya pada hari Kiamat. Allah swt menyatakan dalam ayat ini bahwa bagi siapa yang menganiaya dirinya dengan menyibukkan diri pada segala sesuatu di luar ibadat kepada Allah swt, mempersekutukan Allah swt dan mendustakan para Rasul-Nya, mereka itu akan mendapat bagian siksa seperti bagian yang diperoleh oleh umat-umat terdahulu yang telah mendustakan para rasul mereka. Janganlah mereka memohon supaya Allah swt menyegerakan siksaan-Nya karena Allah swt tidak khawatir kehilangan kesempatan. Ini merupakan jawaban terhadap mereka yang digambarkan oleh Allah dalam ayat: \n\nMaka buktikanlah ancamanmu kepada kami, jika kamu benar!" (alA''raf/7: 70) \n\nDalam ayat yang sama artinya dengan ayat ini Allah berfirman: \n\nKetetapan Allah pasti datang, maka janganlah kamu meminta agar dipercepat (datang)nya. (an-Nahl/16: 1)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 60 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 51, 60, 'فَوَيْلٌ لِّلَّذِيْنَ كَفَرُوْا مِنْ يَّوْمِهِمُ الَّذِيْ يُوْعَدُوْنَ ࣖ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 51 AND ayah_number = 60);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 51 AND ayah_number = 60;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka celakalah orang-orang yang kafir pada hari yang telah dijanjikan kepada mereka (hari Kiamat).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Maka kecelakaanlah yang akan mereka temui sebagai azabazab yang telah dijanjikan untuk mereka pada hari Kiamat; saat itu tak seorang pun dapat membantu orang lain dan mereka pun tidak pula mendapat pertolongan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

