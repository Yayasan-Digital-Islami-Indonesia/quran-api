-- Seed Surah 100 (Al-'Adiyat) with 11 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/100.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (100, 'العٰديٰت', 'Al-''Adiyat', 11, 'Makkiyah', 'Kuda Yang Berlari Kencang')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 100, 1, 'وَالْعٰدِيٰتِ ضَبْحًاۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 100 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 100 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demi kuda perang yang berlari kencang terengah-engah,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bersumpah dengan kuda perang yang memperdengarkan suaranya yang gemuruh. Kuda-kuda yang memancarkan bunga api dari kuku kakinya karena berlari kencang. Kuda-kuda yang menyerang di waktu subuh untuk menyergap musuh di waktu mereka tidak siap siaga. Karena kencangnya lari kuda itu, debu-debu jadi beterbangan. Allah menyatakan bahwa kuda yang menyerang itu tiba-tiba berada di tengah-tengah musuh sehingga menyebabkan mereka panik.\n\nAllah bersumpah dengan kuda dan sifat-sifatnya dalam suasana perang bertujuan untuk membangkitkan semangat perjuangan di kalangan orang-orang Mukmin. Sudah selayaknya mereka bersifat demikian dengan membiasakan diri menunggang kuda dengan tangkas untuk menyerbu musuh. Mereka juga diperintahkan agar selalu siap siaga untuk terjun ke medan pertempuran bila genderang perang memanggil mereka untuk menghancurkan musuh yang menyerang, sebagaimana Allah berfirman:\n\nDan persiapkanlah dengan segala kemampuan untuk menghadapi mereka dengan kekuatan yang kamu miliki dan dari pasukan berkuda yang dapat menggentarkan musuh Allah dan musuhmu. (al-Anfal/8: 60).\n\nAllah bersumpah dengan kuda perang yang dalam keadaan berlari kencang, hilir-mudik, memancarkan percikan bunga api dari kakinya karena berlari kencang, dan dengan penyergapan di waktu subuh, menunjukkan bahwa kuda-kuda yang dipelihara itu bukan untuk kebanggaan. Hendaknya kuda yang dipuji adalah yang digunakan untuk memadamkan keganasan musuh, melumpuhkan kekuatan mereka, atau menghadang serangan mereka.\n\nMaksudnya, dalam ketangkasan berkuda terkandung faedah yang tidak terkira banyaknya. Di antaranya adalah dapat dipergunakan untuk mencari nafkah, cepat bergerak untuk suatu keperluan yang mendadak, digunakan untuk menyergap musuh, dan dapat mencapai tempat yang jauh dalam waktu yang singkat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 100, 2, 'فَالْمُوْرِيٰتِ قَدْحًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 100 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 100 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan kuda yang memercikkan bunga api (dengan pukulan kuku kakinya),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bersumpah dengan kuda perang yang memperdengarkan suaranya yang gemuruh. Kuda-kuda yang memancarkan bunga api dari kuku kakinya karena berlari kencang. Kuda-kuda yang menyerang di waktu subuh untuk menyergap musuh di waktu mereka tidak siap siaga. Karena kencangnya lari kuda itu, debu-debu jadi beterbangan. Allah menyatakan bahwa kuda yang menyerang itu tiba-tiba berada di tengah-tengah musuh sehingga menyebabkan mereka panik.\n\nAllah bersumpah dengan kuda dan sifat-sifatnya dalam suasana perang bertujuan untuk membangkitkan semangat perjuangan di kalangan orang-orang Mukmin. Sudah selayaknya mereka bersifat demikian dengan membiasakan diri menunggang kuda dengan tangkas untuk menyerbu musuh. Mereka juga diperintahkan agar selalu siap siaga untuk terjun ke medan pertempuran bila genderang perang memanggil mereka untuk menghancurkan musuh yang menyerang, sebagaimana Allah berfirman:\n\nDan persiapkanlah dengan segala kemampuan untuk menghadapi mereka dengan kekuatan yang kamu miliki dan dari pasukan berkuda yang dapat menggentarkan musuh Allah dan musuhmu. (al-Anfal/8: 60).\n\nAllah bersumpah dengan kuda perang yang dalam keadaan berlari kencang, hilir-mudik, memancarkan percikan bunga api dari kakinya karena berlari kencang, dan dengan penyergapan di waktu subuh, menunjukkan bahwa kuda-kuda yang dipelihara itu bukan untuk kebanggaan. Hendaknya kuda yang dipuji adalah yang digunakan untuk memadamkan keganasan musuh, melumpuhkan kekuatan mereka, atau menghadang serangan mereka.\n\nMaksudnya, dalam ketangkasan berkuda terkandung faedah yang tidak terkira banyaknya. Di antaranya adalah dapat dipergunakan untuk mencari nafkah, cepat bergerak untuk suatu keperluan yang mendadak, digunakan untuk menyergap musuh, dan dapat mencapai tempat yang jauh dalam waktu yang singkat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 100, 3, 'فَالْمُغِيْرٰتِ صُبْحًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 100 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 100 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan kuda yang menyerang (dengan tiba-tiba) pada waktu pagi,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bersumpah dengan kuda perang yang memperdengarkan suaranya yang gemuruh. Kuda-kuda yang memancarkan bunga api dari kuku kakinya karena berlari kencang. Kuda-kuda yang menyerang di waktu subuh untuk menyergap musuh di waktu mereka tidak siap siaga. Karena kencangnya lari kuda itu, debu-debu jadi beterbangan. Allah menyatakan bahwa kuda yang menyerang itu tiba-tiba berada di tengah-tengah musuh sehingga menyebabkan mereka panik.\n\nAllah bersumpah dengan kuda dan sifat-sifatnya dalam suasana perang bertujuan untuk membangkitkan semangat perjuangan di kalangan orang-orang Mukmin. Sudah selayaknya mereka bersifat demikian dengan membiasakan diri menunggang kuda dengan tangkas untuk menyerbu musuh. Mereka juga diperintahkan agar selalu siap siaga untuk terjun ke medan pertempuran bila genderang perang memanggil mereka untuk menghancurkan musuh yang menyerang, sebagaimana Allah berfirman:\n\nDan persiapkanlah dengan segala kemampuan untuk menghadapi mereka dengan kekuatan yang kamu miliki dan dari pasukan berkuda yang dapat menggentarkan musuh Allah dan musuhmu. (al-Anfal/8: 60).\n\nAllah bersumpah dengan kuda perang yang dalam keadaan berlari kencang, hilir-mudik, memancarkan percikan bunga api dari kakinya karena berlari kencang, dan dengan penyergapan di waktu subuh, menunjukkan bahwa kuda-kuda yang dipelihara itu bukan untuk kebanggaan. Hendaknya kuda yang dipuji adalah yang digunakan untuk memadamkan keganasan musuh, melumpuhkan kekuatan mereka, atau menghadang serangan mereka.\n\nMaksudnya, dalam ketangkasan berkuda terkandung faedah yang tidak terkira banyaknya. Di antaranya adalah dapat dipergunakan untuk mencari nafkah, cepat bergerak untuk suatu keperluan yang mendadak, digunakan untuk menyergap musuh, dan dapat mencapai tempat yang jauh dalam waktu yang singkat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 100, 4, 'فَاَثَرْنَ بِهٖ نَقْعًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 100 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 100 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sehingga menerbangkan debu,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bersumpah dengan kuda perang yang memperdengarkan suaranya yang gemuruh. Kuda-kuda yang memancarkan bunga api dari kuku kakinya karena berlari kencang. Kuda-kuda yang menyerang di waktu subuh untuk menyergap musuh di waktu mereka tidak siap siaga. Karena kencangnya lari kuda itu, debu-debu jadi beterbangan. Allah menyatakan bahwa kuda yang menyerang itu tiba-tiba berada di tengah-tengah musuh sehingga menyebabkan mereka panik.\n\nAllah bersumpah dengan kuda dan sifat-sifatnya dalam suasana perang bertujuan untuk membangkitkan semangat perjuangan di kalangan orang-orang Mukmin. Sudah selayaknya mereka bersifat demikian dengan membiasakan diri menunggang kuda dengan tangkas untuk menyerbu musuh. Mereka juga diperintahkan agar selalu siap siaga untuk terjun ke medan pertempuran bila genderang perang memanggil mereka untuk menghancurkan musuh yang menyerang, sebagaimana Allah berfirman:\n\nDan persiapkanlah dengan segala kemampuan untuk menghadapi mereka dengan kekuatan yang kamu miliki dan dari pasukan berkuda yang dapat menggentarkan musuh Allah dan musuhmu. (al-Anfal/8: 60).\n\nAllah bersumpah dengan kuda perang yang dalam keadaan berlari kencang, hilir-mudik, memancarkan percikan bunga api dari kakinya karena berlari kencang, dan dengan penyergapan di waktu subuh, menunjukkan bahwa kuda-kuda yang dipelihara itu bukan untuk kebanggaan. Hendaknya kuda yang dipuji adalah yang digunakan untuk memadamkan keganasan musuh, melumpuhkan kekuatan mereka, atau menghadang serangan mereka.\n\nMaksudnya, dalam ketangkasan berkuda terkandung faedah yang tidak terkira banyaknya. Di antaranya adalah dapat dipergunakan untuk mencari nafkah, cepat bergerak untuk suatu keperluan yang mendadak, digunakan untuk menyergap musuh, dan dapat mencapai tempat yang jauh dalam waktu yang singkat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 100, 5, 'فَوَسَطْنَ بِهٖ جَمْعًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 100 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 100 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'lalu menyerbu ke tengah-tengah kumpulan musuh,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bersumpah dengan kuda perang yang memperdengarkan suaranya yang gemuruh. Kuda-kuda yang memancarkan bunga api dari kuku kakinya karena berlari kencang. Kuda-kuda yang menyerang di waktu subuh untuk menyergap musuh di waktu mereka tidak siap siaga. Karena kencangnya lari kuda itu, debu-debu jadi beterbangan. Allah menyatakan bahwa kuda yang menyerang itu tiba-tiba berada di tengah-tengah musuh sehingga menyebabkan mereka panik.\n\nAllah bersumpah dengan kuda dan sifat-sifatnya dalam suasana perang bertujuan untuk membangkitkan semangat perjuangan di kalangan orang-orang Mukmin. Sudah selayaknya mereka bersifat demikian dengan membiasakan diri menunggang kuda dengan tangkas untuk menyerbu musuh. Mereka juga diperintahkan agar selalu siap siaga untuk terjun ke medan pertempuran bila genderang perang memanggil mereka untuk menghancurkan musuh yang menyerang, sebagaimana Allah berfirman:\n\nDan persiapkanlah dengan segala kemampuan untuk menghadapi mereka dengan kekuatan yang kamu miliki dan dari pasukan berkuda yang dapat menggentarkan musuh Allah dan musuhmu. (al-Anfal/8: 60).\n\nAllah bersumpah dengan kuda perang yang dalam keadaan berlari kencang, hilir-mudik, memancarkan percikan bunga api dari kakinya karena berlari kencang, dan dengan penyergapan di waktu subuh, menunjukkan bahwa kuda-kuda yang dipelihara itu bukan untuk kebanggaan. Hendaknya kuda yang dipuji adalah yang digunakan untuk memadamkan keganasan musuh, melumpuhkan kekuatan mereka, atau menghadang serangan mereka.\n\nMaksudnya, dalam ketangkasan berkuda terkandung faedah yang tidak terkira banyaknya. Di antaranya adalah dapat dipergunakan untuk mencari nafkah, cepat bergerak untuk suatu keperluan yang mendadak, digunakan untuk menyergap musuh, dan dapat mencapai tempat yang jauh dalam waktu yang singkat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 100, 6, 'اِنَّ الْاِنْسَانَ لِرَبِّهٖ لَكَنُوْدٌ ۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 100 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 100 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sungguh, manusia itu sangat ingkar, (tidak bersyukur) kepada Tuhannya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan isi sumpah-Nya, yaitu: watak manusia adalah mengingkari kebenaran dan tidak mengakui hal-hal yang menyebabkan mereka harus bersyukur kepada penciptanya, kecuali orang-orang yang mendapat taufik, membiasakan diri berbuat kebajikan dan menjauhkan diri dari kemungkaran.\n\nHubungan antara ayat 5 yang menggambarkan persoalan kuda dan ayat 6 yang memberi informasi tentang sifat dasar manusia adalah bahwa manusia itu mempunyai potensi menjadi liar seperti kuda yang tidak terkendali, sehingga menyebabkannya ingkar kepada Allah.\n\nSifat yang terpendam dalam jiwa manusia ini menyebabkan ia tidak mementingkan apa yang terdapat di sekelilingnya, tidak menghiraukan apa yang akan datang, dan lupa apa yang telah lalu. Bila Allah memberikan kepadanya sesuatu nikmat, dia menjadi bingung, hatinya menjadi bengis, dan sikapnya menjadi kasar terhadap hamba-hamba Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 100, 7, 'وَاِنَّهٗ عَلٰى ذٰلِكَ لَشَهِيْدٌۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 100 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 100 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan sesungguhnya dia (manusia) menyaksikan (mengakui) keingkarannya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menjelaskan bahwa seorang manusia meskipun ingkar, aniaya, dan tetap dalam keingkaran serta kebohongan, bila ia mawas diri, seharusnya ia akan kembali kepada yang benar. \n\nDia mengaku bahwa dia tidak mensyukuri nikmat-nikmat Allah yang dianugerahkan kepadanya. Dia juga mengakui bahwa semua tindakannya merupakan penentangan dan pengingkaran terhadap nikmat tersebut. Ini adalah kesaksian sendiri atas keingkarannya, pengakuan tersebut lebih kuat daripada pengakuan yang timbul dari diri sendiri dengan lisan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 100, 8, 'وَاِنَّهٗ لِحُبِّ الْخَيْرِ لَشَدِيْدٌ ۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 100 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 100 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan sesungguhnya cintanya kepada harta benar-benar berlebihan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menyatakan bahwa karena sangat sayang dan cinta kepada harta serta keinginan untuk mengumpulkan dan menyimpannya menyebabkan manusia menjadi sangat kikir, tamak, serta melampaui batas. Allah berfirman:\n\nDan kamu mencintai harta dengan kecintaan yang berlebihan. (al-Fajr/89: 20)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 100, 9, '۞ اَفَلَا يَعْلَمُ اِذَا بُعْثِرَ مَا فِى الْقُبُوْرِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 100 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 100 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka tidakkah dia mengetahui apabila apa yang di dalam kubur dikeluarkan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat berikut ini, Allah menerangkan ancaman-Nya kepada orang-orang yang ingkar terhadap nikmat-nikmat-Nya dengan menyatakan apakah mereka tidak sadar bahwa Allah mengetahui isi hatinya. Allah juga menyatakan bahwa Dia akan membalas keingkaran mereka itu pada hari dikeluarkan apa yang ada di dalam dada dan dibangkitkan apa yang ada di dalam kubur.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 100, 10, 'وَحُصِّلَ مَا فِى الصُّدُوْرِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 100 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 100 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan apa yang tersimpan di dalam dada dilahirkan?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat berikut ini, Allah menerangkan ancaman-Nya kepada orang-orang yang ingkar terhadap nikmat-nikmat-Nya dengan menyatakan apakah mereka tidak sadar bahwa Allah mengetahui isi hatinya. Allah juga menyatakan bahwa Dia akan membalas keingkaran mereka itu pada hari dikeluarkan apa yang ada di dalam dada dan dibangkitkan apa yang ada di dalam kubur.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 100, 11, 'اِنَّ رَبَّهُمْ بِهِمْ يَوْمَىِٕذٍ لَّخَبِيْرٌ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 100 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 100 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sungguh, Tuhan mereka pada hari itu Mahateliti terhadap keadaan mereka.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat berikut ini, Allah menerangkan ancaman-Nya kepada orang-orang yang ingkar terhadap nikmat-nikmat-Nya dengan menyatakan apakah mereka tidak sadar bahwa Allah mengetahui isi hatinya. Allah juga menyatakan bahwa Dia akan membalas keingkaran mereka itu pada hari dikeluarkan apa yang ada di dalam dada dan dibangkitkan apa yang ada di dalam kubur.'
    )
    ON CONFLICT DO NOTHING;
END $$;

