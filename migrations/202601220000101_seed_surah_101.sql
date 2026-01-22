-- Seed Surah 101 (Al-Qari'ah) with 11 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/101.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (101, 'القارعة', 'Al-Qari''ah', 11, 'Makkiyah', 'Hari Kiamat')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 101, 1, 'اَلْقَارِعَةُۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 101 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 101 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Hari Kiamat,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menyebutkan kata al-qari''ah, yaitu salah satu nama hari Kiamat, seperti al-haqqah, as-sakhkhah, ath-thammah, dan al-Gasyiyah. Hari Kiamat itu juga disebut al-qari''ah karena ia menggetarkan hati setiap orang akibat kedahsyatannya. Kata al-qari''ah juga digunakan untuk menyebut suatu bencana hebat. Allah berfirman:\n\nDan orang-orang kafir senantiasa ditimpa bencana disebabkan perbuatan mereka sendiri. (ar-Ra''d/13: 31)\n\nMaksudnya mereka ditimpa malapetaka hebat yang mengetuk hati mereka dan menyakiti tubuh mereka, sehingga mereka mengeluh karenanya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 101, 2, 'مَا الْقَارِعَةُ ۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 101 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 101 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Apakah hari Kiamat itu?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini Allah mengulang kata al-qari''ah dalam bentuk pertanyaan untuk meminta perhatian agar manusia memahami karena dahsyatnya kejadian hari Kiamat dan huru-hara yang membuat hati kecut, sehingga sulit menggambarkannya dengan tepat dan sulit mengetahui dengan sebenarnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 101, 3, 'وَمَآ اَدْرٰىكَ مَا الْقَارِعَةُ ۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 101 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 101 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan tahukah kamu apakah hari Kiamat itu?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah mengulangi kata al-qari''ah itu adalah untuk menggambarkan kedahsyatan hari Kiamat itu, seakan-akan tidak ada sesuatu pun yang dapat dijadikan contoh untuk al-qari''ah itu. Bagaimana pun mengkhayalkannya, al-qari''ah lebih hebat dari itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 101, 4, 'يَوْمَ يَكُوْنُ النَّاسُ كَالْفَرَاشِ الْمَبْثُوْثِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 101 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 101 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Pada hari itu manusia seperti laron yang beterbangan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Karena sangat sulit mengetahui hakikat al-qari''ah, maka dalam ayat ini Allah menjelaskan waktu kedatangannya. Ketika itu, keadaan manusia bagaikan laron yang beterbangan di sekeliling lampu pada malam hari. Penyerupaan ini adalah untuk menggambarkan keadaan manusia yang kebingungan dan tidak menentu arah tujuannya.\n\nManusia pada hari yang dahsyat itu bertebaran di mana-mana, bingung, dan tidak tahu ke mana akan dituju, apa yang akan dikerjakan, dan untuk apa mereka dikumpulkan di sana. Kondisi ini tidak ubahnya seperti anai-anai yang tidak berketentuan arahnya. Dalam ayat lain, Allah berfirman:\n\nSeakan-akan mereka belalang yang beterbangan. (al-Qamar/54 : 7)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 101, 5, 'وَتَكُوْنُ الْجِبَالُ كَالْعِهْنِ الْمَنْفُوْشِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 101 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 101 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan gunung-gunung seperti bulu yang dihambur-hamburkan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengungkapkan bahwa gunung-gunung yang telah hancur itu beterbangan dari tempatnya seperti bulu halus yang diterbangkan angin. Lalu bagaimanakah keadaan manusia yang mempunyai tubuh yang lemah itu bila mengalami al-qari''ah itu.\n\nBanyak terdapat dalam Al-Qur''an ayat-ayat tentang keadaan gunung-gunung pada hari Kiamat, di antaranya Allah berfirman:\n\nDan engkau akan melihat gunung-gunung, yang engkau kira tetap di tempatnya, padahal ia berjalan (seperti) awan berjalan. (an-Naml/27 : 88)\n\nDan menjadilah gunung-gunung itu seperti onggokan pasir yang dicurahkan. (al-Muzzammil/73: 14)\n\nDan gunung-gunung pun dijalankan sehingga menjadi fatamorgana. (an- Naba''/78: 20)\n\nSemua keterangan tersebut untuk menjelaskan bahwa gunung-gunung yang besar dan kuat seharusnya tetap tidak dapat digerakkan, tetapi al-Qari''ah dapat menghancurkannya, apalagi manusia makhluk yang lemah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 101, 6, 'فَاَمَّا مَنْ ثَقُلَتْ مَوَازِينُهٗۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 101 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 101 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka adapun orang yang berat timbangan (kebaikan)nya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menjelaskan tentang ganjaran bagi orang-orang yang banyak melakukan amal kebajikan, yaitu ketika amal mereka ditimbang dan timbangannya berat karena banyak mengerjakan amal-amal saleh. Ganjaran bagi orang-orang ini adalah kesenangan abadi di surga. Mereka hidup di dalamnya penuh dengan kebahagiaan, kenikmatan, dan kepuasan. Kita wajib mempercayai adanya mizan (neraca/timbangan) yang tersebut pada ayat ini dan dalam firman-Nya:\n\nDan Kami akan memasang timbangan yang tepat pada hari Kiamat. (al-Anbiya''/21: 47)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 101, 7, 'فَهُوَ فِيْ عِيْشَةٍ رَّاضِيَةٍۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 101 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 101 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'maka dia berada dalam kehidupan yang memuaskan (senang).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menjelaskan tentang ganjaran bagi orang-orang yang banyak melakukan amal kebajikan, yaitu ketika amal mereka ditimbang dan timbangannya berat karena banyak mengerjakan amal-amal saleh. Ganjaran bagi orang-orang ini adalah kesenangan abadi di surga. Mereka hidup di dalamnya penuh dengan kebahagiaan, kenikmatan, dan kepuasan. Kita wajib mempercayai adanya mizan (neraca/timbangan) yang tersebut pada ayat ini dan dalam firman-Nya:\n\nDan Kami akan memasang timbangan yang tepat pada hari Kiamat. (al-Anbiya''/21: 47)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 101, 8, 'وَاَمَّا مَنْ خَفَّتْ مَوَازِيْنُهٗۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 101 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 101 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan adapun orang yang ringan timbangan (kebaikan)nya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah juga menjelaskan nasib orang-orang jahat yaitu bila amal orang-orang jahat itu ditimbang dan timbangannya itu ringan karena banyak mengerjakan kejahatan dan sedikit mengerjakan kebajikan di dunia maka mereka akan ditempatkan dalam neraka Hawiyah tempat penyiksaan orang-orang jahat, tempat hidup sengsara; suatu tempat yang mereka dijerumuskan ke dalamnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 101, 9, 'فَاُمُّهُ هَاوِيَةٌ  ۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 101 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 101 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'maka tempat kembalinya adalah neraka Hawiyah.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah juga menjelaskan nasib orang-orang jahat yaitu bila amal orang-orang jahat itu ditimbang dan timbangannya itu ringan karena banyak mengerjakan kejahatan dan sedikit mengerjakan kebajikan di dunia maka mereka akan ditempatkan dalam neraka Hawiyah tempat penyiksaan orang-orang jahat, tempat hidup sengsara; suatu tempat yang mereka dijerumuskan ke dalamnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 101, 10, 'وَمَآ اَدْرٰىكَ مَا هِيَهْۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 101 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 101 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan tahukah kamu apakah neraka Hawiyah itu?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menjelaskan arti kata hawiyah dalam bentuk pertanyaan, yaitu: apakah neraka Hawiyah itu dan dari apa ia dijadikan? Neraka Hawiyah adalah api yang menyala-nyala yang sangat panas di mana orang-orang yang berdosa dijerumuskan ke dalamnya untuk menerima balasan atas kejahatan dan kemungkaran yang mereka lakukan. Ayat ini menggambarkan jika semua api di seluruh dunia dikumpulkan dan dipersatukan, tidak akan dapat menyamai panasnya api neraka Hawiyah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 101, 11, 'نَارٌ حَامِيَةٌ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 101 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 101 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Yaitu) api yang sangat panas.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menjelaskan arti kata hawiyah dalam bentuk pertanyaan, yaitu: apakah neraka Hawiyah itu dan dari apa ia dijadikan? Neraka Hawiyah adalah api yang menyala-nyala yang sangat panas di mana orang-orang yang berdosa dijerumuskan ke dalamnya untuk menerima balasan atas kejahatan dan kemungkaran yang mereka lakukan. Ayat ini menggambarkan jika semua api di seluruh dunia dikumpulkan dan dipersatukan, tidak akan dapat menyamai panasnya api neraka Hawiyah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

