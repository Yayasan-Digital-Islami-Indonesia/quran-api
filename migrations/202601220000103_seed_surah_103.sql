-- Seed Surah 103 (Al-'Asr) with 3 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/103.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (103, 'العصر', 'Al-''Asr', 3, 'Makkiyah', 'Asar')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 103, 1, 'وَالْعَصْرِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 103 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 103 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demi masa,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah bersumpah dengan masa yang terjadi di dalamnya bermacam-macam kejadian dan pengalaman yang menjadi bukti atas kekuasaan Allah yang mutlak, hikmah-Nya yang tinggi, dan Ilmu-Nya yang sangat luas. Perubahan-perubahan besar yang terjadi pada masa itu sendiri, seperti pergantian siang dengan malam yang terus-menerus, habisnya umur manusia, dan sebagainya merupakan tanda keagungan Allah.\n\nDalam ayat lain, Allah berfirman:\n\nDan sebagian dari tanda-tanda kebesaran-Nya ialah malam, siang, matahari, dan bulan. (Fussilat/41: 37)\n\nApa yang dialami manusia dalam masa itu dari senang dan susah, miskin dan kaya, senggang dan sibuk, suka dan duka, dan lain-lain menunjukkan secara gamblang bahwa bagi alam semesta ini ada pencipta dan pengaturnya. Dialah Tuhan yang harus disembah dan hanya kepada-Nya kita memohon untuk menolak bahaya dan menarik manfaat. Adapun orang-orang kafir menghubungkan peristiwa-peristiwa tersebut hanya kepada suatu masa saja, sehingga mereka beranggapan bahwa bila ditimpa oleh sesuatu bencana, hal itu hanya kemauan alam saja. Allah menjelaskan bahwa masa (waktu) adalah salah satu makhluk-Nya dan di dalamnya terjadi bermacam-macam kejadian, kejahatan, dan kebaikan. Bila seseorang ditimpa musibah, hal itu merupakan akibat tindakannya. Masa (waktu) tidak campur tangan dengan terjadinya musibah itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 103, 2, 'اِنَّ الْاِنْسَانَ لَفِيْ خُسْرٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 103 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 103 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sungguh, manusia berada dalam kerugian,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengungkapkan bahwa manusia sebagai makhluk Allah sungguh secara keseluruhan berada dalam kerugian bila tidak menggunakan waktu dengan baik atau dipakai untuk melakukan keburukan. Perbuatan buruk manusia merupakan sumber kecelakaan yang menjerumuskannya ke dalam kebinasaan. Dosa seseorang terhadap Tuhannya yang memberi nikmat tidak terkira kepadanya adalah suatu pelanggaran yang tidak ada bandingannya sehingga merugikan dirinya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 103, 3, 'اِلَّا الَّذِيْنَ اٰمَنُوْا وَعَمِلُوا الصّٰلِحٰتِ وَتَوَاصَوْا بِالْحَقِّ ەۙ وَتَوَاصَوْا بِالصَّبْرِ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 103 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 103 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'kecuali orang-orang yang beriman dan mengerjakan kebajikan serta saling menasihati untuk kebenaran dan saling menasihati untuk kesabaran.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menjelaskan bahwa jika manusia tidak mau hidupnya merugi, maka ia harus beriman kepada-Nya, melaksanakan ibadah sebagaimana yang diperintahkannya, berbuat baik untuk dirinya sendiri, dan berusaha menimbulkan manfaat kepada orang lain.\n\nDi samping beriman dan beramal saleh, mereka harus saling nasihat-menasihati untuk menaati kebenaran dan tetap berlaku sabar, menjauhi perbuatan maksiat yang setiap orang cenderung kepadanya, karena dorongan hawa nafsunya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

