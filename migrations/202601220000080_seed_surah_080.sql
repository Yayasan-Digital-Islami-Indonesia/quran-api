-- Seed Surah 80 ('Abasa) with 42 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/80.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (80, 'عبس', '''Abasa', 42, 'Makkiyah', 'Bermuka Masam')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 1, 'عَبَسَ وَتَوَلّٰىٓۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dia (Muhammad) berwajah masam dan berpaling,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada permulaan Surah ''Abasa ini, Allah menegur Nabi Muhammad yang bermuka masam dan berpaling dari ''Abdullah bin Ummi Maktum yang buta, ketika sahabat ini menyela pembicaraan Nabi dengan beberapa tokoh Quraisy. Saat itu ''Abdullah bin Ummi Maktum bertanya dan meminta Nabi saw untuk membacakan dan mengajarkan beberapa wahyu yang telah diterima Nabi. Permintaan itu diulanginya beberapa kali karena ia tidak tahu Nabi sedang sibuk menghadapi beberapa pembesar Quraisy.\n\nSebetulnya Nabi saw sesuai dengan skala prioritas sedang menghadapi tokoh-tokoh penting yang diharapkan dapat masuk Islam karena hal ini akan mempunyai pengaruh besar pada perkembangan dakwah selanjutnya. Maka adalah manusiawi jika Nabi saw tidak memperhatikan pertanyaan ''Abdullah bin Ummi Maktum, apalagi telah ada porsi waktu yang telah disediakan untuk pembicaraan Nabi dengan para sahabat.\n\nTetapi Nabi Muhammad sebagai manusia terbaik dan contoh teladan utama bagi setiap orang mukmin (uswah hasanah), maka Nabi tidak boleh membeda-bedakan derajat manusia. Dalam menetapkan skala prioritas juga harus lebih memberi perhatian kepada orang kecil apalagi memiliki kelemahan seperti ''Abdullah bin Ummi Maktum yang buta dan tidak dapat melihat. Maka seharusnya Nabi lebih mendahulukan pembicaraan dengan ''Abdullah bin Ummi Maktum daripada dengan para tokoh Quraisy.\n\nDalam peristiwa ini Nabi saw tidak mengatakan sepatah katapun kepada ''Abdullah bin Ummi Maktum yang menyebabkan hatinya terluka, tetapi Allah melihat raut muka Nabi Muhammad saw yang masam itu dan tidak mengindahakan Ummi Maktum yang menyebabkan dia tersinggung.\n\nHikmah adanya teguran Allah kepada Nabi Muhammad juga memberi bukti bahwa Al-Qur''an bukanlah karangan Nabi, tetapi betul-betul firman Allah. Teguran yang sangat keras ini tidak mungkin dikarang sendiri oleh Nabi.\n\n''Abdullah bin Ummi Maktum adalah seorang yang bersih dan cerdas. Apabila mendengarkan hikmah, ia dapat memeliharanya dan membersihkan diri dari kebusukan kemusyrikan. Adapun para pembesar Quraisy itu sebagian besar adalah orang-orang yang kaya dan angkuh sehingga tidak sepatutnya Nabi terlalu serius menghadapi mereka untuk diislamkan. Tugas Nabi hanya sekadar menyampaikan risalah dan persoalan hidayah semata-mata berada di bawah kekuasaan Allah. Kekuatan manusia itu harus dipandang dari segi kecerdasan pikiran dan keteguhan hatinya serta kesediaan untuk menerima dan melaksanakan kebenaran. Adapun harta, kedudukan, dan pengaruh kepemimpinan bersifat tidak tetap, suatu ketika ada dan pada saat yang lain hilang sehingga tidak bisa diandalkan. \n\nNabi sendiri setelah ayat ini turun selalu menghormati ''Abdullah bin Ummi Maktum dan sering memuliakannya melalui sabda beliau, "Selamat datang kepada orang yang menyebabkan aku ditegur oleh Allah. Apakah engkau mempunyai keperluan?"'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 2, 'اَنْ جَاۤءَهُ الْاَعْمٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'karena seorang buta telah datang kepadanya (Abdullah bin Ummi Maktum).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada permulaan Surah ''Abasa ini, Allah menegur Nabi Muhammad yang bermuka masam dan berpaling dari ''Abdullah bin Ummi Maktum yang buta, ketika sahabat ini menyela pembicaraan Nabi dengan beberapa tokoh Quraisy. Saat itu ''Abdullah bin Ummi Maktum bertanya dan meminta Nabi saw untuk membacakan dan mengajarkan beberapa wahyu yang telah diterima Nabi. Permintaan itu diulanginya beberapa kali karena ia tidak tahu Nabi sedang sibuk menghadapi beberapa pembesar Quraisy.\n\nSebetulnya Nabi saw sesuai dengan skala prioritas sedang menghadapi tokoh-tokoh penting yang diharapkan dapat masuk Islam karena hal ini akan mempunyai pengaruh besar pada perkembangan dakwah selanjutnya. Maka adalah manusiawi jika Nabi saw tidak memperhatikan pertanyaan ''Abdullah bin Ummi Maktum, apalagi telah ada porsi waktu yang telah disediakan untuk pembicaraan Nabi dengan para sahabat.\n\nTetapi Nabi Muhammad sebagai manusia terbaik dan contoh teladan utama bagi setiap orang mukmin (uswah hasanah), maka Nabi tidak boleh membeda-bedakan derajat manusia. Dalam menetapkan skala prioritas juga harus lebih memberi perhatian kepada orang kecil apalagi memiliki kelemahan seperti ''Abdullah bin Ummi Maktum yang buta dan tidak dapat melihat. Maka seharusnya Nabi lebih mendahulukan pembicaraan dengan ''Abdullah bin Ummi Maktum daripada dengan para tokoh Quraisy.\n\nDalam peristiwa ini Nabi saw tidak mengatakan sepatah katapun kepada ''Abdullah bin Ummi Maktum yang menyebabkan hatinya terluka, tetapi Allah melihat raut muka Nabi Muhammad saw yang masam itu dan tidak mengindahakan Ummi Maktum yang menyebabkan dia tersinggung.\n\nHikmah adanya teguran Allah kepada Nabi Muhammad juga memberi bukti bahwa Al-Qur''an bukanlah karangan Nabi, tetapi betul-betul firman Allah. Teguran yang sangat keras ini tidak mungkin dikarang sendiri oleh Nabi.\n\n''Abdullah bin Ummi Maktum adalah seorang yang bersih dan cerdas. Apabila mendengarkan hikmah, ia dapat memeliharanya dan membersihkan diri dari kebusukan kemusyrikan. Adapun para pembesar Quraisy itu sebagian besar adalah orang-orang yang kaya dan angkuh sehingga tidak sepatutnya Nabi terlalu serius menghadapi mereka untuk diislamkan. Tugas Nabi hanya sekadar menyampaikan risalah dan persoalan hidayah semata-mata berada di bawah kekuasaan Allah. Kekuatan manusia itu harus dipandang dari segi kecerdasan pikiran dan keteguhan hatinya serta kesediaan untuk menerima dan melaksanakan kebenaran. Adapun harta, kedudukan, dan pengaruh kepemimpinan bersifat tidak tetap, suatu ketika ada dan pada saat yang lain hilang sehingga tidak bisa diandalkan. \n\nNabi sendiri setelah ayat ini turun selalu menghormati ''Abdullah bin Ummi Maktum dan sering memuliakannya melalui sabda beliau, "Selamat datang kepada orang yang menyebabkan aku ditegur oleh Allah. Apakah engkau mempunyai keperluan?"'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 3, 'وَمَا يُدْرِيْكَ لَعَلَّهٗ يَزَّكّٰىٓۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan tahukah engkau (Muhammad) barangkali dia ingin menyucikan dirinya (dari dosa),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menegur Rasul-Nya, "Apa yang memberitahukan kepadamu tentang keadaan orang buta ini? Boleh jadi ia ingin membersihkan dirinya dengan ajaran yang kamu berikan kepadanya atau ingin bermanfaat bagi dirinya dan ia mendapat keridaan Allah, sedangkan pengajaran itu belum tentu bermanfaat bagi orang-orang kafir Quraisy yang sedang kamu hadapi itu."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 4, 'اَوْ يَذَّكَّرُ فَتَنْفَعَهُ الذِّكْرٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'atau dia (ingin) mendapatkan pengajaran, yang memberi manfaat kepadanya?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menegur Rasul-Nya, "Apa yang memberitahukan kepadamu tentang keadaan orang buta ini? Boleh jadi ia ingin membersihkan dirinya dengan ajaran yang kamu berikan kepadanya atau ingin bermanfaat bagi dirinya dan ia mendapat keridaan Allah, sedangkan pengajaran itu belum tentu bermanfaat bagi orang-orang kafir Quraisy yang sedang kamu hadapi itu."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 5, 'اَمَّا مَنِ اسْتَغْنٰىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Adapun orang yang merasa dirinya serba cukup (pembesar-pembesar Quraisy),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah melanjutkan teguran-Nya, "Adapun orang-orang kafir Mekah yang merasa dirinya serba cukup dan mampu, mereka tidak tertarik untuk beriman padamu, mengapa engkau bersikap terlalu condong pada mereka dan ingin sekali supaya mereka masuk Islam."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 6, 'فَاَنْتَ لَهٗ تَصَدّٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'maka engkau (Muhammad) memberi perhatian kepadanya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah melanjutkan teguran-Nya, “Adapun orang-orang kafir Mekah yang merasa dirinya serba cukup dan mampu, mereka tidak tertarik untuk beriman padamu, mengapa engkau bersikap terlalu condong pada mereka dan ingin sekali supaya mereka masuk Islam.”'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 7, 'وَمَا عَلَيْكَ اَلَّا يَزَّكّٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'padahal tidak ada (cela) atasmu kalau dia tidak menyucikan diri (beriman).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah melanjutkan teguran-Nya, "Adapun orang-orang kafir Mekah yang merasa dirinya serba cukup dan mampu, mereka tidak tertarik untuk beriman padamu, mengapa engkau bersikap terlalu condong pada mereka dan ingin sekali supaya mereka masuk Islam."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 8, 'وَاَمَّا مَنْ جَاۤءَكَ يَسْعٰىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan adapun orang yang datang kepadamu dengan bersegera (untuk mendapatkan pengajaran),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah mengingatkan Nabi Muhammad, "Dan adapun orang seperti ''Abdullah bin Ummi Maktum yang datang kepadamu dengan bersegera untuk mendapat petunjuk dan rahmat dari Tuhannya, sedang ia takut kepada Allah jika ia jatuh ke dalam lembah kesesatan, maka kamu bersikap acuh tak acuh dan tidak memperhatikan permintaannya."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 9, 'وَهُوَ يَخْشٰىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sedang dia takut (kepada Allah),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah mengingatkan Nabi Muhammad, "Dan adapun orang seperti ''Abdullah bin Ummi Maktum yang datang kepadamu dengan bersegera untuk mendapat petunjuk dan rahmat dari Tuhannya, sedang ia takut kepada Allah jika ia jatuh ke dalam lembah kesesatan, maka kamu bersikap acuh tak acuh dan tidak memperhatikan permintaannya."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 10, 'فَاَنْتَ عَنْهُ تَلَهّٰىۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'engkau (Muhammad) malah mengabaikannya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah mengingatkan Nabi Muhammad, "Dan adapun orang seperti ''Abdullah bin Ummi Maktum yang datang kepadamu dengan bersegera untuk mendapat petunjuk dan rahmat dari Tuhannya, sedang ia takut kepada Allah jika ia jatuh ke dalam lembah kesesatan, maka kamu bersikap acuh tak acuh dan tidak memperhatikan permintaannya."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 11, 'كَلَّآ اِنَّهَا تَذْكِرَةٌ ۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sekali-kali jangan (begitu)! Sungguh, (ajaran-ajaran Allah) itu suatu peringatan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menegur Nabi-Nya agar tidak lagi mengulangi tindakan-tindakan seperti itu yaitu ketika ia menghadapi Ibnu Ummi Maktum dan al-Walid bin al-Mugirah beserta kawan-kawannya.\n\nSesungguhnya pengajaran Allah itu adalah suatu peringatan dan nasihat untuk menyadarkan orang-orang yang lupa atau tidak memperhatikan tanda-tanda kebesaran dan kekuasaan Tuhannya. Barang siapa yang menghendaki peringatan yang jelas dan gamblang, tentu ia memperhatikan dan beramal sesuai dengan kehendak hidayah itu. Apalagi jika diperhatikan bahwa hidayah itu berasal dari kitab-kitab yang mulia seperti diterangkan dalam ayat-ayat berikutnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 12, 'فَمَنْ شَاۤءَ ذَكَرَهٗ ۘ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'maka barangsiapa menghendaki, tentulah dia akan memperhatikannya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menegur Nabi-Nya agar tidak lagi mengulangi tindakan-tindakan seperti itu yaitu ketika ia menghadapi Ibnu Ummi Maktum dan al-Walid bin al-Mugirah beserta kawan-kawannya.\n\nSesungguhnya pengajaran Allah itu adalah suatu peringatan dan nasihat untuk menyadarkan orang-orang yang lupa atau tidak memperhatikan tanda-tanda kebesaran dan kekuasaan Tuhannya. Barang siapa yang menghendaki peringatan yang jelas dan gamblang, tentu ia memperhatikan dan beramal sesuai dengan kehendak hidayah itu. Apalagi jika diperhatikan bahwa hidayah itu berasal dari kitab-kitab yang mulia seperti diterangkan dalam ayat-ayat berikutnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 13, 'فِيْ صُحُفٍ مُّكَرَّمَةٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'di dalam kitab-kitab yang dimuliakan (di sisi Allah),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Al-Qur''an adalah salah satu dari kitab-kitab yang diturunkan kepada para nabi. Ia merupakan kitab yang mulia dan tinggi nilai ajarannya dan disucikan dari segala macam bentuk pengaruh setan. Al-Qur''an diturunkan dengan perantaraan para penulis yaitu para malaikat yang sangat mulia lagi berbakti, sebagaimana dalam firman Allah:\n\nYang tidak durhaka kepada Allah terhadap apa yang Dia perintahkan kepada mereka dan selalu mengerjakan apa yang diperintahkan. (at-Tahrim/66: 6)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 14, 'مَّرْفُوْعَةٍ مُّطَهَّرَةٍ ۢ ۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang ditinggikan (dan) disucikan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Al-Qur''an adalah salah satu dari kitab-kitab yang diturunkan kepada para nabi. Ia merupakan kitab yang mulia dan tinggi nilai ajarannya dan disucikan dari segala macam bentuk pengaruh setan. Al-Qur''an diturunkan dengan perantaraan para penulis yaitu para malaikat yang sangat mulia lagi berbakti, sebagaimana dalam firman Allah:\n\nYang tidak durhaka kepada Allah terhadap apa yang Dia perintahkan kepada mereka dan selalu mengerjakan apa yang diperintahkan. (at-Tahrim/66: 6)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 15, 'بِاَيْدِيْ سَفَرَةٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'di tangan para utusan (malaikat),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Al-Qur''an adalah salah satu dari kitab-kitab yang diturunkan kepada para nabi. Ia merupakan kitab yang mulia dan tinggi nilai ajarannya dan disucikan dari segala macam bentuk pengaruh setan. Al-Qur''an diturunkan dengan perantaraan para penulis yaitu para malaikat yang sangat mulia lagi berbakti, sebagaimana dalam firman Allah:\n\nYang tidak durhaka kepada Allah terhadap apa yang Dia perintahkan kepada mereka dan selalu mengerjakan apa yang diperintahkan. (at-Tahrim/66: 6)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 16, 'كِرَامٍۢ بَرَرَةٍۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang mulia lagi berbakti.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Al-Qur''an adalah salah satu dari kitab-kitab yang diturunkan kepada para nabi. Ia merupakan kitab yang mulia dan tinggi nilai ajarannya dan disucikan dari segala macam bentuk pengaruh setan. Al-Qur''an diturunkan dengan perantaraan para penulis yaitu para malaikat yang sangat mulia lagi berbakti, sebagaimana dalam firman Allah:\n\nYang tidak durhaka kepada Allah terhadap apa yang Dia perintahkan kepada mereka dan selalu mengerjakan apa yang diperintahkan. (at-Tahrim/66: 6)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 17, 'قُتِلَ الْاِنْسَانُ مَآ اَكْفَرَهٗۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Celakalah manusia! Alangkah kufurnya dia!', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah memberi peringatan keras kepada manusia dengan kalimat-kalimat yang tegas, yaitu: binasalah manusia! Alangkah besar keingkarannya kepada nikmat-nikmat Allah yang telah dilimpahkan kepadanya sejak mulai lahir sampai matinya. Allah mengemukakan pertanyaan supaya dijadikan renungan oleh manusia untuk dapat menimbulkan kesadaran, yaitu dari apakah Allah menciptakannya?\n\nAllah memberi perincian tentang macam-macam nikmat yang telah diberikan kepada manusia dalam tiga masa, yaitu permulaan, pertengahan dan bagian akhir. Allah memberi isyarat kepada yang pertama dengan pertanyaan berikut ini: "Dari apakah manusia diciptakan Allah?"'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 18, 'مِنْ اَيِّ شَيْءٍ خَلَقَهٗۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dari apakah Dia (Allah) menciptakannya?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah memberi peringatan keras kepada manusia dengan kalimat-kalimat yang tegas, yaitu: binasalah manusia! Alangkah besar keingkarannya kepada nikmat-nikmat Allah yang telah dilimpahkan kepadanya sejak mulai lahir sampai matinya. Allah mengemukakan pertanyaan supaya dijadikan renungan oleh manusia untuk dapat menimbulkan kesadaran, yaitu dari apakah Allah menciptakannya?\n\nAllah memberi perincian tentang macam-macam nikmat yang telah diberikan kepada manusia dalam tiga masa, yaitu permulaan, pertengahan dan bagian akhir. Allah memberi isyarat kepada yang pertama dengan pertanyaan berikut ini: "Dari apakah manusia diciptakan Allah?"'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 19, 'مِنْ نُّطْفَةٍۗ خَلَقَهٗ فَقَدَّرَهٗۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dari setetes mani, Dia menciptakannya lalu menentukannya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebagai jawaban dari pertanyaan di atas, Allah menjelaskan bahwa manusia diciptakan dari setetes mani yang hina. Allah lalu menentukan tahap-tahap kejadian, umur, rezeki, dan nasibnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 20 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 20, 'ثُمَّ السَّبِيْلَ يَسَّرَهٗۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 20);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 20;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kemudian jalannya Dia mudahkan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini, Allah menjelaskan bahwa Dia telah memudahkan jalan manusia pada bagian pertengahan yaitu memberi kesempatan kepadanya untuk menempuh jalan yang benar atau jalan yang sesat. Sebenarnya manusia tidak pantas menyombongkan diri, apabila ia mengerti asal kejadiannya, sebagaimana firman Allah:\n\nYang memperindah segala sesuatu yang Dia ciptakan dan yang memulai penciptaan manusia dari tanah, kemudian Dia menjadikan keturunannya dari sari pati air yang hina (air mani). (as-Sajdah/32: 7-8)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 21 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 21, 'ثُمَّ اَمَاتَهٗ فَاَقْبَرَهٗۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 21);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 21;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'kemudian Dia mematikannya lalu menguburkannya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam dua ayat ini dijelaskan bahwa dalam tahap terakhir (penghabisan), Allah mematikan dan memasukkan manusia ke dalam kubur. Sampai saatnya nanti pada hari Kiamat, Allah membangkitkannya kembali dari kubur-kubur mereka. Firman Allah menjelaskan:\n\nDarinya (tanah) itulah Kami menciptakan kamu dan kepadanyalah Kami akan mengembalikan kamu dan dari sanalah Kami akan mengeluarkan kamu pada waktu yang lain. (thaha/20: 55)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 22 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 22, 'ثُمَّ اِذَا شَاۤءَ اَنْشَرَهٗۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 22);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 22;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'kemudian jika Dia menghendaki, Dia membangkitkannya kembali.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam dua ayat ini dijelaskan bahwa dalam tahap terakhir (penghabisan), Allah mematikan dan memasukkan manusia ke dalam kubur. Sampai saatnya nanti pada hari Kiamat, Allah membangkitkannya kembali dari kubur-kubur mereka. Firman Allah menjelaskan:\n\nDarinya (tanah) itulah Kami menciptakan kamu dan kepadanyalah Kami akan mengembalikan kamu dan dari sanalah Kami akan mengeluarkan kamu pada waktu yang lain. (thaha/20: 55)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 23 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 23, 'كَلَّا لَمَّا يَقْضِ مَآ اَمَرَهٗۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 23);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 23;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sekali-kali jangan (begitu)! Dia (manusia) itu belum melaksanakan apa yang Dia (Allah) perintahkan kepadanya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengulangi lagi peringatan-Nya akan kekafiran manusia terhadap nikmat-Nya dengan menyatakan bahwa setiap orang kafir itu sangat aneh. Semestinya mereka beriman dan mengagungkan Allah setelah merasakan nikmat yang dianugerahkan kepada mereka, tetapi mereka bersikap sebaliknya. Mereka mengingkari nikmat itu seakan-akan hanya hasil usaha mereka sendiri.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 24 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 24, 'فَلْيَنْظُرِ الْاِنْسَانُ اِلٰى طَعَامِهٖٓ ۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 24);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 24;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka hendaklah manusia itu memperhatikan makanannya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menyuruh manusia untuk memperhatikan makanannya, bagaimana Ia telah menyiapkan makanan yang bergizi yang mengandung protein, karbohidrat, dan lain-lain sehingga memenuhi kebutuhan hidupnya. Manusia dapat merasakan kelezatan makanan dan minumannya yang juga menjadi pendorong bagi pemeliharaan tubuhnya sehingga tetap dalam keadaan sehat dan mampu menunaikan tugas yang dibebankan kepadanya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 25 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 25, 'اَنَّا صَبَبْنَا الْمَاۤءَ صَبًّاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 25);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 25;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kamilah yang telah mencurahkan air melimpah (dari langit),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini dijelaskan bahwa sesungguhnya Allah telah mencurahkan air hujan dari langit dengan curahan yang cukup besar sehingga memenuhi kebutuhan semua makhluk-Nya, baik manusia, binatang, maupun tumbuh-tumbuhan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 26 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 26, 'ثُمَّ شَقَقْنَا الْاَرْضَ شَقًّاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 26);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 26;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'kemudian Kami belah bumi dengan sebaik-baiknya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian Allah membukakan permukaan bumi dengan sebaik-baiknya agar supaya udara dan sinar matahari dapat masuk ke dalam bagian bumi, sehingga tanahnya menjadi subur untuk menumbuhkan berbagai tanaman.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 27 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 27, 'فَاَنْۢبَتْنَا فِيْهَا حَبًّاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 27);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 27;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'lalu di sana Kami tumbuhkan biji-bijian,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini dan selanjutnya Allah menyebutkan beberapa macam tumbuh-tumbuhan: pertama, Allah menumbuhkan di bumi biji-bijian seperti gandum, padi, dan lain-lainnya yang menjadi makanan pokok.\n\nKedua dan ketiga, Allah menumbuhkan pula buah anggur dan bermacam sayuran yang dapat dimakan secara langsung.\n\nKeempat dan kelima, buah zaitun dan pohon kurma.\n\nKeenam, kebun-kebun yang besar, tinggi, dan lebat buahnya. Tidak hanya buahnya yang dapat dimanfaatkan, tetapi pohonnya pun dapat dijadikan bahan bangunan dan alat-alat perumahan.\n\nKetujuh, bermacam-macam buah-buahan yang lain, seperti buah pir, apel, mangga, dan sebagainya.\n\nKedelapan, berbagai macam rumput-rumputan.\n\nAir yang turun dari langit dan perannya dalam "menghidupkan tanah yang mati" secara jelas diuraikan pada Surah al-Furqan/25: 48-49. Apa kandungan dari air hujan sehingga dapat digunakan untuk tumbuhnya tumbuhan ada pada Surah Qaf/50: 9. \n\nSedangkan uraian bagaimana bumi "terbelah", di samping ayat di atas, juga terdapat pada Surah Fussilat/41: 39, sebagaimana pada penggalannya: "Dan di antara ayat-ayat-Nya adalah engkau melihat bumi kering tandus maka apabila telah Kami turunkan air di atasnya, niscaya ia bergerak dan mengembang."\n\nAyat tersebut menerangkan apa yang akan terjadi pada tanah yang kering apabila butiran hujan jatuh di atasnya. Ayat tersebut juga menjelaskan adanya tiga tahap bagaimana perkembangan tumbuhan sampai dengan menghasilkan buah.\n\nTingkat-tingkat perkembangan tumbuhan yang dijelaskan oleh ayat di atas adalah demikian:\n\nPertama: Bergeraknya tanah. Apa yang dimaksud dengan bergeraknya tanah adalah gerakan partikel tanah. Partikel ini terdiri dari lapisan-lapisan yang terdiri atas bahan silika dan alumina. Ketika air masuk ke lapisan-lapisan partikel, maka akan terjadi pembengkakan dari partikel-partikel pembentuk lumpur. Hal ini dapat dijelaskan demikian:\n\n1.Muatan listrik elektrostatis yang ada di permukaan partikel (yang terjadi setelah kehadiran air) akan mengakibatkan terganggunya stabilitas. Partikel ini akan bergerak terus, sebelum ada stabilisator yang berupa partikel yang bermuatan listrik yang berlawanan. Di sini kita seharusnya bersyukur, tentang bagaimana Allah telah menciptakan semuanya dalam pasangan-pasangan, sehingga mendatangkan suasana yang stabil dan sentosa. Termasuk dalam hal ini adalah muatan listrik\n\n2.Pergerakan partikel tanah juga disebabkan karena adanya tabrakan dengan partikel air. Pergerakan partikel air yang tidak teratur menyebabkan partikel tanah bergerak ke semua arah. Gerakan yang demikian ini ditemukan oleh seorang ahli tumbuhan bernama Robert Brown pada tahun 1828. Pergerakannya sangat tergantung pada kecepatan dan jumlah partikel air. Dengan demikian, pergerakan yang terjadi adalah interaksi langsung antara partikel tanah dan partikel air.\n\nKedua: Mengembangnya tanah. Apa yang dimaksud dengan mengembangnya tanah adalah mengembangnya partikel tanah. Partikel tanah akan bertambah tebal. Dengan demikian, tanah akan mengembang, sejalan dengan mengembangnya partikel tanah. Telah dikemukakan sebelumnya bahwa partikel tanah terdiri atas lapisan-lapisan yang berhubungan satu sama lain. Antara lapisan satu dan lainnya terdapat pori-pori. Ke dalam pori-pori inilah air dan ion-ion yang terlarut akan masuk. Dengan bentuk pori-pori yang sangat sempit dan adanya medan elektrostatis di permukaan lapisan, maka air seperti di taruh dalam botol, dan tidak mengalir ke luar. Dengan kata lain, air akan disimpan di pori-pori di setiap lapisan.\n\nKetiga: Tahap Perkecambahan. Tahap perkecambahan biji terjadi saat air sudah tersedia. Saat air sudah pada tahap cukup, maka embrio yang ada di dalam biji akan menjadi aktif dan menyerap matrial nutrisi yang sederhana (material nutrisi kompleks dipecah menjadi sederhana dengan bantuan enzim). Pada tahap ini, bakal akar tumbuh ke bawah, bergerak di antara partikel tanah untuk mencari kawasan yang memenuhi syarat dan memperoleh nutrisi yang diperlukannya. Kemudian bakal daun akan berkembang ke atas, menembus permukaan tanah, dan mengarahkan pada sumber sinar matahari.\n\nJadi, secara singkat, tahapan-tahapan di atas dapat dijelaskan demikian. Kata "bergerak" jelas mengindikasikan efek dari air terhadap partikel tanah. Efek ini dapat terjadi sebagai akibat adanya muatan listrik elektrostatis atau benturan langsung antara partikel-partikel air dan tanah. Sedangkan kata "membengkak" mengacu pada menebalnya partikel tanah karena terperangkapnya air di antara lapisan-lapisan pembentuk partikel tanah. Dengan demikian, partikel tanah berfungsi sebagai reservoar air, tempat menyimpan air. Ini sesuai dengan ayat berikut: \n\nDan Kami turunkan air dari langit dengan suatu ukuran; lalu Kami jadikan air itu menetap di bumi, dan pasti Kami berkuasa melenyapkannya. (al-Mu''minun/23: 18)\n\nKemudian bakal akar, dan disusul bakal daun, mulai tumbuh. Anak pohon akan muncul, terus tumbuh dan memberikan hasil untuk keperluan manusia. Apakah manusia masih tidak bersyukur?\n\nMaka perhatikanlah bekas-bekas rahmat Allah, bagaimana Allah menghidupkan bumi setelah mati (kering). Sungguh, itu berarti Dia pasti (berkuasa) menghidupkan yang telah mati. Dan Dia Mahakuasa atas segala sesuatu. (ar-Rum/30: 50)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 28 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 28, 'وَّعِنَبًا وَّقَضْبًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 28);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 28;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan anggur dan sayur-sayuran,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini dan selanjutnya Allah menyebutkan beberapa macam tumbuh-tumbuhan: pertama, Allah menumbuhkan di bumi biji-bijian seperti gandum, padi, dan lain-lainnya yang menjadi makanan pokok.\n\nKedua dan ketiga, Allah menumbuhkan pula buah anggur dan bermacam sayuran yang dapat dimakan secara langsung.\n\nKeempat dan kelima, buah zaitun dan pohon kurma.\n\nKeenam, kebun-kebun yang besar, tinggi, dan lebat buahnya. Tidak hanya buahnya yang dapat dimanfaatkan, tetapi pohonnya pun dapat dijadikan bahan bangunan dan alat-alat perumahan.\n\nKetujuh, bermacam-macam buah-buahan yang lain, seperti buah pir, apel, mangga, dan sebagainya.\n\nKedelapan, berbagai macam rumput-rumputan.\n\nAir yang turun dari langit dan perannya dalam "menghidupkan tanah yang mati" secara jelas diuraikan pada Surah al-Furqan/25: 48-49. Apa kandungan dari air hujan sehingga dapat digunakan untuk tumbuhnya tumbuhan ada pada Surah Qaf/50: 9. \n\nSedangkan uraian bagaimana bumi "terbelah", di samping ayat di atas, juga terdapat pada Surah Fussilat/41: 39, sebagaimana pada penggalannya: "Dan di antara ayat-ayat-Nya adalah engkau melihat bumi kering tandus maka apabila telah Kami turunkan air di atasnya, niscaya ia bergerak dan mengembang."\n\nAyat tersebut menerangkan apa yang akan terjadi pada tanah yang kering apabila butiran hujan jatuh di atasnya. Ayat tersebut juga menjelaskan adanya tiga tahap bagaimana perkembangan tumbuhan sampai dengan menghasilkan buah.\n\nTingkat-tingkat perkembangan tumbuhan yang dijelaskan oleh ayat di atas adalah demikian:\n\nPertama: Bergeraknya tanah. Apa yang dimaksud dengan bergeraknya tanah adalah gerakan partikel tanah. Partikel ini terdiri dari lapisan-lapisan yang terdiri atas bahan silika dan alumina. Ketika air masuk ke lapisan-lapisan partikel, maka akan terjadi pembengkakan dari partikel-partikel pembentuk lumpur. Hal ini dapat dijelaskan demikian:\n\n1.Muatan listrik elektrostatis yang ada di permukaan partikel (yang terjadi setelah kehadiran air) akan mengakibatkan terganggunya stabilitas. Partikel ini akan bergerak terus, sebelum ada stabilisator yang berupa partikel yang bermuatan listrik yang berlawanan. Di sini kita seharusnya bersyukur, tentang bagaimana Allah telah menciptakan semuanya dalam pasangan-pasangan, sehingga mendatangkan suasana yang stabil dan sentosa. Termasuk dalam hal ini adalah muatan listrik\n\n2.Pergerakan partikel tanah juga disebabkan karena adanya tabrakan dengan partikel air. Pergerakan partikel air yang tidak teratur menyebabkan partikel tanah bergerak ke semua arah. Gerakan yang demikian ini ditemukan oleh seorang ahli tumbuhan bernama Robert Brown pada tahun 1828. Pergerakannya sangat tergantung pada kecepatan dan jumlah partikel air. Dengan demikian, pergerakan yang terjadi adalah interaksi langsung antara partikel tanah dan partikel air.\n\nKedua: Mengembangnya tanah. Apa yang dimaksud dengan mengembangnya tanah adalah mengembangnya partikel tanah. Partikel tanah akan bertambah tebal. Dengan demikian, tanah akan mengembang, sejalan dengan mengembangnya partikel tanah. Telah dikemukakan sebelumnya bahwa partikel tanah terdiri atas lapisan-lapisan yang berhubungan satu sama lain. Antara lapisan satu dan lainnya terdapat pori-pori. Ke dalam pori-pori inilah air dan ion-ion yang terlarut akan masuk. Dengan bentuk pori-pori yang sangat sempit dan adanya medan elektrostatis di permukaan lapisan, maka air seperti di taruh dalam botol, dan tidak mengalir ke luar. Dengan kata lain, air akan disimpan di pori-pori di setiap lapisan.\n\nKetiga: Tahap Perkecambahan. Tahap perkecambahan biji terjadi saat air sudah tersedia. Saat air sudah pada tahap cukup, maka embrio yang ada di dalam biji akan menjadi aktif dan menyerap matrial nutrisi yang sederhana (material nutrisi kompleks dipecah menjadi sederhana dengan bantuan enzim). Pada tahap ini, bakal akar tumbuh ke bawah, bergerak di antara partikel tanah untuk mencari kawasan yang memenuhi syarat dan memperoleh nutrisi yang diperlukannya. Kemudian bakal daun akan berkembang ke atas, menembus permukaan tanah, dan mengarahkan pada sumber sinar matahari.\n\nJadi, secara singkat, tahapan-tahapan di atas dapat dijelaskan demikian. Kata "bergerak" jelas mengindikasikan efek dari air terhadap partikel tanah. Efek ini dapat terjadi sebagai akibat adanya muatan listrik elektrostatis atau benturan langsung antara partikel-partikel air dan tanah. Sedangkan kata "membengkak" mengacu pada menebalnya partikel tanah karena terperangkapnya air di antara lapisan-lapisan pembentuk partikel tanah. Dengan demikian, partikel tanah berfungsi sebagai reservoar air, tempat menyimpan air. Ini sesuai dengan ayat berikut: \n\nDan Kami turunkan air dari langit dengan suatu ukuran; lalu Kami jadikan air itu menetap di bumi, dan pasti Kami berkuasa melenyapkannya. (al-Mu''minun/23: 18)\n\nKemudian bakal akar, dan disusul bakal daun, mulai tumbuh. Anak pohon akan muncul, terus tumbuh dan memberikan hasil untuk keperluan manusia. Apakah manusia masih tidak bersyukur?\n\nMaka perhatikanlah bekas-bekas rahmat Allah, bagaimana Allah menghidupkan bumi setelah mati (kering). Sungguh, itu berarti Dia pasti (berkuasa) menghidupkan yang telah mati. Dan Dia Mahakuasa atas segala sesuatu. (ar-Rum/30: 50)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 29 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 29, 'وَّزَيْتُوْنًا وَّنَخْلًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 29);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 29;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan zaitun dan pohon kurma,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini dan selanjutnya Allah menyebutkan beberapa macam tumbuh-tumbuhan: pertama, Allah menumbuhkan di bumi biji-bijian seperti gandum, padi, dan lain-lainnya yang menjadi makanan pokok.\n\nKedua dan ketiga, Allah menumbuhkan pula buah anggur dan bermacam sayuran yang dapat dimakan secara langsung.\n\nKeempat dan kelima, buah zaitun dan pohon kurma.\n\nKeenam, kebun-kebun yang besar, tinggi, dan lebat buahnya. Tidak hanya buahnya yang dapat dimanfaatkan, tetapi pohonnya pun dapat dijadikan bahan bangunan dan alat-alat perumahan.\n\nKetujuh, bermacam-macam buah-buahan yang lain, seperti buah pir, apel, mangga, dan sebagainya.\n\nKedelapan, berbagai macam rumput-rumputan.\n\nAir yang turun dari langit dan perannya dalam "menghidupkan tanah yang mati" secara jelas diuraikan pada Surah al-Furqan/25: 48-49. Apa kandungan dari air hujan sehingga dapat digunakan untuk tumbuhnya tumbuhan ada pada Surah Qaf/50: 9. \n\nSedangkan uraian bagaimana bumi "terbelah", di samping ayat di atas, juga terdapat pada Surah Fussilat/41: 39, sebagaimana pada penggalannya: "Dan di antara ayat-ayat-Nya adalah engkau melihat bumi kering tandus maka apabila telah Kami turunkan air di atasnya, niscaya ia bergerak dan mengembang."\n\nAyat tersebut menerangkan apa yang akan terjadi pada tanah yang kering apabila butiran hujan jatuh di atasnya. Ayat tersebut juga menjelaskan adanya tiga tahap bagaimana perkembangan tumbuhan sampai dengan menghasilkan buah.\n\nTingkat-tingkat perkembangan tumbuhan yang dijelaskan oleh ayat di atas adalah demikian:\n\nPertama: Bergeraknya tanah. Apa yang dimaksud dengan bergeraknya tanah adalah gerakan partikel tanah. Partikel ini terdiri dari lapisan-lapisan yang terdiri atas bahan silika dan alumina. Ketika air masuk ke lapisan-lapisan partikel, maka akan terjadi pembengkakan dari partikel-partikel pembentuk lumpur. Hal ini dapat dijelaskan demikian:\n\n1.Muatan listrik elektrostatis yang ada di permukaan partikel (yang terjadi setelah kehadiran air) akan mengakibatkan terganggunya stabilitas. Partikel ini akan bergerak terus, sebelum ada stabilisator yang berupa partikel yang bermuatan listrik yang berlawanan. Di sini kita seharusnya bersyukur, tentang bagaimana Allah telah menciptakan semuanya dalam pasangan-pasangan, sehingga mendatangkan suasana yang stabil dan sentosa. Termasuk dalam hal ini adalah muatan listrik\n\n2.Pergerakan partikel tanah juga disebabkan karena adanya tabrakan dengan partikel air. Pergerakan partikel air yang tidak teratur menyebabkan partikel tanah bergerak ke semua arah. Gerakan yang demikian ini ditemukan oleh seorang ahli tumbuhan bernama Robert Brown pada tahun 1828. Pergerakannya sangat tergantung pada kecepatan dan jumlah partikel air. Dengan demikian, pergerakan yang terjadi adalah interaksi langsung antara partikel tanah dan partikel air.\n\nKedua: Mengembangnya tanah. Apa yang dimaksud dengan mengembangnya tanah adalah mengembangnya partikel tanah. Partikel tanah akan bertambah tebal. Dengan demikian, tanah akan mengembang, sejalan dengan mengembangnya partikel tanah. Telah dikemukakan sebelumnya bahwa partikel tanah terdiri atas lapisan-lapisan yang berhubungan satu sama lain. Antara lapisan satu dan lainnya terdapat pori-pori. Ke dalam pori-pori inilah air dan ion-ion yang terlarut akan masuk. Dengan bentuk pori-pori yang sangat sempit dan adanya medan elektrostatis di permukaan lapisan, maka air seperti di taruh dalam botol, dan tidak mengalir ke luar. Dengan kata lain, air akan disimpan di pori-pori di setiap lapisan.\n\nKetiga: Tahap Perkecambahan. Tahap perkecambahan biji terjadi saat air sudah tersedia. Saat air sudah pada tahap cukup, maka embrio yang ada di dalam biji akan menjadi aktif dan menyerap matrial nutrisi yang sederhana (material nutrisi kompleks dipecah menjadi sederhana dengan bantuan enzim). Pada tahap ini, bakal akar tumbuh ke bawah, bergerak di antara partikel tanah untuk mencari kawasan yang memenuhi syarat dan memperoleh nutrisi yang diperlukannya. Kemudian bakal daun akan berkembang ke atas, menembus permukaan tanah, dan mengarahkan pada sumber sinar matahari.\n\nJadi, secara singkat, tahapan-tahapan di atas dapat dijelaskan demikian. Kata "bergerak" jelas mengindikasikan efek dari air terhadap partikel tanah. Efek ini dapat terjadi sebagai akibat adanya muatan listrik elektrostatis atau benturan langsung antara partikel-partikel air dan tanah. Sedangkan kata "membengkak" mengacu pada menebalnya partikel tanah karena terperangkapnya air di antara lapisan-lapisan pembentuk partikel tanah. Dengan demikian, partikel tanah berfungsi sebagai reservoar air, tempat menyimpan air. Ini sesuai dengan ayat berikut: \n\nDan Kami turunkan air dari langit dengan suatu ukuran; lalu Kami jadikan air itu menetap di bumi, dan pasti Kami berkuasa melenyapkannya. (al-Mu''minun/23: 18)\n\nKemudian bakal akar, dan disusul bakal daun, mulai tumbuh. Anak pohon akan muncul, terus tumbuh dan memberikan hasil untuk keperluan manusia. Apakah manusia masih tidak bersyukur?\n\nMaka perhatikanlah bekas-bekas rahmat Allah, bagaimana Allah menghidupkan bumi setelah mati (kering). Sungguh, itu berarti Dia pasti (berkuasa) menghidupkan yang telah mati. Dan Dia Mahakuasa atas segala sesuatu. (ar-Rum/30: 50)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 30 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 30, 'وَّحَدَاۤئِقَ غُلْبًا', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 30);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 30;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan kebun-kebun (yang) rindang,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini dan selanjutnya Allah menyebutkan beberapa macam tumbuh-tumbuhan: pertama, Allah menumbuhkan di bumi biji-bijian seperti gandum, padi, dan lain-lainnya yang menjadi makanan pokok.\n\nKedua dan ketiga, Allah menumbuhkan pula buah anggur dan bermacam sayuran yang dapat dimakan secara langsung.\n\nKeempat dan kelima, buah zaitun dan pohon kurma.\n\nKeenam, kebun-kebun yang besar, tinggi, dan lebat buahnya. Tidak hanya buahnya yang dapat dimanfaatkan, tetapi pohonnya pun dapat dijadikan bahan bangunan dan alat-alat perumahan.\n\nKetujuh, bermacam-macam buah-buahan yang lain, seperti buah pir, apel, mangga, dan sebagainya.\n\nKedelapan, berbagai macam rumput-rumputan.\n\nAir yang turun dari langit dan perannya dalam "menghidupkan tanah yang mati" secara jelas diuraikan pada Surah al-Furqan/25: 48-49. Apa kandungan dari air hujan sehingga dapat digunakan untuk tumbuhnya tumbuhan ada pada Surah Qaf/50: 9. \n\nSedangkan uraian bagaimana bumi "terbelah", di samping ayat di atas, juga terdapat pada Surah Fussilat/41: 39, sebagaimana pada penggalannya: "Dan di antara ayat-ayat-Nya adalah engkau melihat bumi kering tandus maka apabila telah Kami turunkan air di atasnya, niscaya ia bergerak dan mengembang."\n\nAyat tersebut menerangkan apa yang akan terjadi pada tanah yang kering apabila butiran hujan jatuh di atasnya. Ayat tersebut juga menjelaskan adanya tiga tahap bagaimana perkembangan tumbuhan sampai dengan menghasilkan buah.\n\nTingkat-tingkat perkembangan tumbuhan yang dijelaskan oleh ayat di atas adalah demikian:\n\nPertama: Bergeraknya tanah. Apa yang dimaksud dengan bergeraknya tanah adalah gerakan partikel tanah. Partikel ini terdiri dari lapisan-lapisan yang terdiri atas bahan silika dan alumina. Ketika air masuk ke lapisan-lapisan partikel, maka akan terjadi pembengkakan dari partikel-partikel pembentuk lumpur. Hal ini dapat dijelaskan demikian:\n\n1.Muatan listrik elektrostatis yang ada di permukaan partikel (yang terjadi setelah kehadiran air) akan mengakibatkan terganggunya stabilitas. Partikel ini akan bergerak terus, sebelum ada stabilisator yang berupa partikel yang bermuatan listrik yang berlawanan. Di sini kita seharusnya bersyukur, tentang bagaimana Allah telah menciptakan semuanya dalam pasangan-pasangan, sehingga mendatangkan suasana yang stabil dan sentosa. Termasuk dalam hal ini adalah muatan listrik\n\n2.Pergerakan partikel tanah juga disebabkan karena adanya tabrakan dengan partikel air. Pergerakan partikel air yang tidak teratur menyebabkan partikel tanah bergerak ke semua arah. Gerakan yang demikian ini ditemukan oleh seorang ahli tumbuhan bernama Robert Brown pada tahun 1828. Pergerakannya sangat tergantung pada kecepatan dan jumlah partikel air. Dengan demikian, pergerakan yang terjadi adalah interaksi langsung antara partikel tanah dan partikel air.\n\nKedua: Mengembangnya tanah. Apa yang dimaksud dengan mengembangnya tanah adalah mengembangnya partikel tanah. Partikel tanah akan bertambah tebal. Dengan demikian, tanah akan mengembang, sejalan dengan mengembangnya partikel tanah. Telah dikemukakan sebelumnya bahwa partikel tanah terdiri atas lapisan-lapisan yang berhubungan satu sama lain. Antara lapisan satu dan lainnya terdapat pori-pori. Ke dalam pori-pori inilah air dan ion-ion yang terlarut akan masuk. Dengan bentuk pori-pori yang sangat sempit dan adanya medan elektrostatis di permukaan lapisan, maka air seperti di taruh dalam botol, dan tidak mengalir ke luar. Dengan kata lain, air akan disimpan di pori-pori di setiap lapisan.\n\nKetiga: Tahap Perkecambahan. Tahap perkecambahan biji terjadi saat air sudah tersedia. Saat air sudah pada tahap cukup, maka embrio yang ada di dalam biji akan menjadi aktif dan menyerap matrial nutrisi yang sederhana (material nutrisi kompleks dipecah menjadi sederhana dengan bantuan enzim). Pada tahap ini, bakal akar tumbuh ke bawah, bergerak di antara partikel tanah untuk mencari kawasan yang memenuhi syarat dan memperoleh nutrisi yang diperlukannya. Kemudian bakal daun akan berkembang ke atas, menembus permukaan tanah, dan mengarahkan pada sumber sinar matahari.\n\nJadi, secara singkat, tahapan-tahapan di atas dapat dijelaskan demikian. Kata "bergerak" jelas mengindikasikan efek dari air terhadap partikel tanah. Efek ini dapat terjadi sebagai akibat adanya muatan listrik elektrostatis atau benturan langsung antara partikel-partikel air dan tanah. Sedangkan kata "membengkak" mengacu pada menebalnya partikel tanah karena terperangkapnya air di antara lapisan-lapisan pembentuk partikel tanah. Dengan demikian, partikel tanah berfungsi sebagai reservoar air, tempat menyimpan air. Ini sesuai dengan ayat berikut: \n\nDan Kami turunkan air dari langit dengan suatu ukuran; lalu Kami jadikan air itu menetap di bumi, dan pasti Kami berkuasa melenyapkannya. (al-Mu''minun/23: 18)\n\nKemudian bakal akar, dan disusul bakal daun, mulai tumbuh. Anak pohon akan muncul, terus tumbuh dan memberikan hasil untuk keperluan manusia. Apakah manusia masih tidak bersyukur?\n\nMaka perhatikanlah bekas-bekas rahmat Allah, bagaimana Allah menghidupkan bumi setelah mati (kering). Sungguh, itu berarti Dia pasti (berkuasa) menghidupkan yang telah mati. Dan Dia Mahakuasa atas segala sesuatu. (ar-Rum/30: 50)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 31 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 31, 'وَفَاكِهَةً وَّاَبًّا', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 31);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 31;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan buah-buahan serta rerumputan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini dan selanjutnya Allah menyebutkan beberapa macam tumbuh-tumbuhan: pertama, Allah menumbuhkan di bumi biji-bijian seperti gandum, padi, dan lain-lainnya yang menjadi makanan pokok.\n\nKedua dan ketiga, Allah menumbuhkan pula buah anggur dan bermacam sayuran yang dapat dimakan secara langsung.\n\nKeempat dan kelima, buah zaitun dan pohon kurma.\n\nKeenam, kebun-kebun yang besar, tinggi, dan lebat buahnya. Tidak hanya buahnya yang dapat dimanfaatkan, tetapi pohonnya pun dapat dijadikan bahan bangunan dan alat-alat perumahan.\n\nKetujuh, bermacam-macam buah-buahan yang lain, seperti buah pir, apel, mangga, dan sebagainya.\n\nKedelapan, berbagai macam rumput-rumputan.\n\nAir yang turun dari langit dan perannya dalam "menghidupkan tanah yang mati" secara jelas diuraikan pada Surah al-Furqan/25: 48-49. Apa kandungan dari air hujan sehingga dapat digunakan untuk tumbuhnya tumbuhan ada pada Surah Qaf/50: 9. \n\nSedangkan uraian bagaimana bumi "terbelah", di samping ayat di atas, juga terdapat pada Surah Fussilat/41: 39, sebagaimana pada penggalannya: "Dan di antara ayat-ayat-Nya adalah engkau melihat bumi kering tandus maka apabila telah Kami turunkan air di atasnya, niscaya ia bergerak dan mengembang."\n\nAyat tersebut menerangkan apa yang akan terjadi pada tanah yang kering apabila butiran hujan jatuh di atasnya. Ayat tersebut juga menjelaskan adanya tiga tahap bagaimana perkembangan tumbuhan sampai dengan menghasilkan buah.\n\nTingkat-tingkat perkembangan tumbuhan yang dijelaskan oleh ayat di atas adalah demikian:\n\nPertama: Bergeraknya tanah. Apa yang dimaksud dengan bergeraknya tanah adalah gerakan partikel tanah. Partikel ini terdiri dari lapisan-lapisan yang terdiri atas bahan silika dan alumina. Ketika air masuk ke lapisan-lapisan partikel, maka akan terjadi pembengkakan dari partikel-partikel pembentuk lumpur. Hal ini dapat dijelaskan demikian:\n\n1.Muatan listrik elektrostatis yang ada di permukaan partikel (yang terjadi setelah kehadiran air) akan mengakibatkan terganggunya stabilitas. Partikel ini akan bergerak terus, sebelum ada stabilisator yang berupa partikel yang bermuatan listrik yang berlawanan. Di sini kita seharusnya bersyukur, tentang bagaimana Allah telah menciptakan semuanya dalam pasangan-pasangan, sehingga mendatangkan suasana yang stabil dan sentosa. Termasuk dalam hal ini adalah muatan listrik\n\n2.Pergerakan partikel tanah juga disebabkan karena adanya tabrakan dengan partikel air. Pergerakan partikel air yang tidak teratur menyebabkan partikel tanah bergerak ke semua arah. Gerakan yang demikian ini ditemukan oleh seorang ahli tumbuhan bernama Robert Brown pada tahun 1828. Pergerakannya sangat tergantung pada kecepatan dan jumlah partikel air. Dengan demikian, pergerakan yang terjadi adalah interaksi langsung antara partikel tanah dan partikel air.\n\nKedua: Mengembangnya tanah. Apa yang dimaksud dengan mengembangnya tanah adalah mengembangnya partikel tanah. Partikel tanah akan bertambah tebal. Dengan demikian, tanah akan mengembang, sejalan dengan mengembangnya partikel tanah. Telah dikemukakan sebelumnya bahwa partikel tanah terdiri atas lapisan-lapisan yang berhubungan satu sama lain. Antara lapisan satu dan lainnya terdapat pori-pori. Ke dalam pori-pori inilah air dan ion-ion yang terlarut akan masuk. Dengan bentuk pori-pori yang sangat sempit dan adanya medan elektrostatis di permukaan lapisan, maka air seperti di taruh dalam botol, dan tidak mengalir ke luar. Dengan kata lain, air akan disimpan di pori-pori di setiap lapisan.\n\nKetiga: Tahap Perkecambahan. Tahap perkecambahan biji terjadi saat air sudah tersedia. Saat air sudah pada tahap cukup, maka embrio yang ada di dalam biji akan menjadi aktif dan menyerap matrial nutrisi yang sederhana (material nutrisi kompleks dipecah menjadi sederhana dengan bantuan enzim). Pada tahap ini, bakal akar tumbuh ke bawah, bergerak di antara partikel tanah untuk mencari kawasan yang memenuhi syarat dan memperoleh nutrisi yang diperlukannya. Kemudian bakal daun akan berkembang ke atas, menembus permukaan tanah, dan mengarahkan pada sumber sinar matahari.\n\nJadi, secara singkat, tahapan-tahapan di atas dapat dijelaskan demikian. Kata "bergerak" jelas mengindikasikan efek dari air terhadap partikel tanah. Efek ini dapat terjadi sebagai akibat adanya muatan listrik elektrostatis atau benturan langsung antara partikel-partikel air dan tanah. Sedangkan kata "membengkak" mengacu pada menebalnya partikel tanah karena terperangkapnya air di antara lapisan-lapisan pembentuk partikel tanah. Dengan demikian, partikel tanah berfungsi sebagai reservoar air, tempat menyimpan air. Ini sesuai dengan ayat berikut: \n\nDan Kami turunkan air dari langit dengan suatu ukuran; lalu Kami jadikan air itu menetap di bumi, dan pasti Kami berkuasa melenyapkannya. (al-Mu''minun/23: 18)\n\nKemudian bakal akar, dan disusul bakal daun, mulai tumbuh. Anak pohon akan muncul, terus tumbuh dan memberikan hasil untuk keperluan manusia. Apakah manusia masih tidak bersyukur?\n\nMaka perhatikanlah bekas-bekas rahmat Allah, bagaimana Allah menghidupkan bumi setelah mati (kering). Sungguh, itu berarti Dia pasti (berkuasa) menghidupkan yang telah mati. Dan Dia Mahakuasa atas segala sesuatu. (ar-Rum/30: 50)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 32 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 32, 'مَتَاعًا لَّكُمْ وَلِاَنْعَامِكُمْۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 32);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 32;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Semua itu) untuk kesenanganmu dan untuk hewan-hewan ternakmu.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Semua itu merupakan harta benda untuk kesenangan hidup manusia, dan merupakan makanan baginya dan bagi ternaknya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 33 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 33, 'فَاِذَا جَاۤءَتِ الصَّاۤخَّةُ ۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 33);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 33;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka apabila datang suara yang memekakkan (tiupan sangkakala yang kedua),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini dijelaskan apabila datang hari Kiamat, ketika terdengar suara yang sangat dahsyat yang memekakkan telinga, yaitu tiupan Malaikat Israfil yang kedua kalinya, maka pada hari tersebut terasa kesedihan dan penyesalan bagi seluruh orang-orang yang kafir. Dalam ayat berikutnya diperinci kedahsyatan hari Kiamat itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 34 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 34, 'يَوْمَ يَفِرُّ الْمَرْءُ مِنْ اَخِيْهِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 34);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 34;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'pada hari itu manusia lari dari saudaranya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat-ayat ini diterangkan bahwa pada hari Kiamat, manusia lari dari saudara, ibu, dan bapaknya, bahkan dari istri dan anak-anaknya. Hal itu disebabkan seluruh pikiran hanya tertuju pada penyelamatan diri dari bencana yang sangat menakutkan, sehingga lupa pada orang tua, saudara, istri, dan anak-anak. Firman Allah:\n\nWahai manusia! Bertakwalah kepada Tuhanmu dan takutlah pada hari yang (ketika itu) seorang bapak tidak dapat menolong anaknya, dan seorang anak tidak dapat (pula) menolong bapaknya sedikit pun. Sungguh, janji Allah pasti benar, maka janganlah sekali-kali kamu terpedaya oleh kehidupan dunia, dan jangan sampai kamu terpedaya oleh penipu dalam (menaati) Allah. (Luqman/31: 33)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 35 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 35, 'وَاُمِّهٖ وَاَبِيْهِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 35);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 35;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan dari ibu dan bapaknya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat-ayat ini diterangkan bahwa pada hari Kiamat, manusia lari dari saudara, ibu, dan bapaknya, bahkan dari istri dan anak-anaknya. Hal itu disebabkan seluruh pikiran hanya tertuju pada penyelamatan diri dari bencana yang sangat menakutkan, sehingga lupa pada orang tua, saudara, istri, dan anak-anak. Firman Allah:\n\nWahai manusia! Bertakwalah kepada Tuhanmu dan takutlah pada hari yang (ketika itu) seorang bapak tidak dapat menolong anaknya, dan seorang anak tidak dapat (pula) menolong bapaknya sedikit pun. Sungguh, janji Allah pasti benar, maka janganlah sekali-kali kamu terpedaya oleh kehidupan dunia, dan jangan sampai kamu terpedaya oleh penipu dalam (menaati) Allah. (Luqman/31: 33)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 36 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 36, 'وَصَاحِبَتِهٖ وَبَنِيْهِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 36);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 36;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan dari istri dan anak-anaknya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat-ayat ini diterangkan bahwa pada hari Kiamat, manusia lari dari saudara, ibu, dan bapaknya, bahkan dari istri dan anak-anaknya. Hal itu disebabkan seluruh pikiran hanya tertuju pada penyelamatan diri dari bencana yang sangat menakutkan, sehingga lupa pada orang tua, saudara, istri, dan anak-anak. Firman Allah:\n\nWahai manusia! Bertakwalah kepada Tuhanmu dan takutlah pada hari yang (ketika itu) seorang bapak tidak dapat menolong anaknya, dan seorang anak tidak dapat (pula) menolong bapaknya sedikit pun. Sungguh, janji Allah pasti benar, maka janganlah sekali-kali kamu terpedaya oleh kehidupan dunia, dan jangan sampai kamu terpedaya oleh penipu dalam (menaati) Allah. (Luqman/31: 33)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 37 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 37, 'لِكُلِّ امْرِئٍ مِّنْهُمْ يَوْمَىِٕذٍ شَأْنٌ يُّغْنِيْهِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 37);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 37;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Setiap orang dari mereka pada hari itu mempunyai urusan yang menyibukkannya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setiap manusia pada hari Kiamat yang dahsyat itu mempunyai urusan masing-masing yang cukup menyibukkannya sehingga tidak sempat memperhatikan orang lain. Ketika masih di dunia, mereka saling memberikan pertolongan sampai menebus dengan harta bilamana diperlukan, apalagi jika bersangkutan dengan keselamatan anak-anaknya sendiri yang akan meneruskan generasinya yang akan datang atau mengenai kehormatan istrinya, orang yang paling dekat dan paling setia kepadanya.\n\nAkan tetapi pada hari akhirat nanti, tidak ada kesempatan lagi untuk memperhatikan anggota-anggota keluarganya itu karena kedahsyatan pada hari Kiamat yang sangat menyibukkan itu.\n\nPada hari itu manusia terbagi dua golongan: yang bahagia dan yang celaka, dan terhadap golongan yang pertama dinyatakan dalam ayat berikut ini.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 38 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 38, 'وُجُوْهٌ يَّوْمَىِٕذٍ مُّسْفِرَةٌۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 38);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 38;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Pada hari itu ada wajah-wajah yang berseri-seri,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Banyak muka orang-orang mukmin pada hari itu berseri-seri dengan penuh kegembiraan karena mereka dapat menyaksikan sendiri apa yang dijanjikan oleh Allah kepada orang-orang yang beriman ternyata semuanya dapat terlaksana dengan penuh kebahagiaan. Mereka tertawa dan bergembira.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 39 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 39, 'ضَاحِكَةٌ مُّسْتَبْشِرَةٌ ۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 39);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 39;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'tertawa dan gembira ria,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Banyak muka orang-orang mukmin pada hari itu berseri-seri dengan penuh kegembiraan karena mereka dapat menyaksikan sendiri apa yang dijanjikan oleh Allah kepada orang-orang yang beriman ternyata semuanya dapat terlaksana dengan penuh kebahagiaan. Mereka tertawa dan bergembira.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 40 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 40, 'وَوُجُوْهٌ يَّوْمَىِٕذٍ عَلَيْهَا غَبَرَةٌۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 40);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 40;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan pada hari itu ada (pula) wajah-wajah yang tertutup debu (suram),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebaliknya terhadap golongan kedua dinyatakan bahwa banyak pula muka orang-orang kafir pada hari itu tertutup debu penuh dengan sesal dan kesedihan. Mereka itu ditutup lagi oleh kegelapan karena ditimpa oleh kehinaan dan kesusahan. Mereka itulah orang-orang kafir yang amat durhaka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 41 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 41, 'تَرْهَقُهَا قَتَرَةٌ ۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 41);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 41;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'tertutup oleh kegelapan (ditimpa kehinaan dan kesusahan).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebaliknya terhadap golongan kedua dinyatakan bahwa banyak pula muka orang-orang kafir pada hari itu tertutup debu penuh dengan sesal dan kesedihan. Mereka itu ditutup lagi oleh kegelapan karena ditimpa oleh kehinaan dan kesusahan. Mereka itulah orang-orang kafir yang amat durhaka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 42 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 80, 42, 'اُولٰۤىِٕكَ هُمُ الْكَفَرَةُ الْفَجَرَةُ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 80 AND ayah_number = 42);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 80 AND ayah_number = 42;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mereka itulah orang-orang kafir yang durhaka.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebaliknya terhadap golongan kedua dinyatakan bahwa banyak pula muka orang-orang kafir pada hari itu tertutup debu penuh dengan sesal dan kesedihan. Mereka itu ditutup lagi oleh kegelapan karena ditimpa oleh kehinaan dan kesusahan. Mereka itulah orang-orang kafir yang amat durhaka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

