-- Seed Surah 96 (Al-'Alaq) with 19 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/96.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (96, 'العلق', 'Al-''Alaq', 19, 'Makkiyah', 'Segumpal Darah')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 1, 'اِقْرَأْ بِاسْمِ رَبِّكَ الَّذِيْ خَلَقَۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bacalah dengan (menyebut) nama Tuhanmu yang menciptakan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah memerintahkan manusia membaca (mempelajari, meneliti, dan sebagainya.) apa saja yang telah Ia ciptakan, baik ayat-ayat-Nya yang tersurat (qauliyah), yaitu Al-Qur''an, dan ayat-ayat-Nya yang tersirat, maksudnya alam semesta (kauniyah). Membaca itu harus dengan nama-Nya, artinya karena Dia dan mengharapkan pertolongan-Nya. Dengan demikian, tujuan membaca dan mendalami ayat-ayat Allah itu adalah diperolehnya hasil yang diridai-Nya, yaitu ilmu atau sesuatu yang bermanfaat bagi manusia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 2, 'خَلَقَ الْاِنْسَانَ مِنْ عَلَقٍۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dia telah menciptakan manusia dari segumpal darah.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menyebutkan bahwa di antara yang telah Ia ciptakan adalah manusia, yang menunjukkan mulianya manusia itu dalam pandangan-Nya. Allah menciptakan manusia itu dari ''alaqah (zigot), yakni telur yang sudah terbuahi sperma, yang sudah menempel di rahim ibu. Karena sudah menempel itu, maka zigot dapat berkembang menjadi manusia. Dengan demikian, asal usul manusia itu adalah sesuatu yang tidak ada artinya, tetapi kemudian ia menjadi manusia yang perkasa. Allah berfirman:\n\nDan di antara tanda-tanda (kebesaran)-Nya ialah Dia menciptakan kamu dari tanah, kemudian tiba-tiba kamu (menjadi) manusia yang berkembang biak. (ar-Rum/30: 20)\n\nAsal usulnya itu juga labil, zigot itu bisa tidak menempel di rahim, atau bisa terlepas lagi dari rahim itu, sehingga pembentukan manusia terhenti prosesnya. Oleh karena itu, manusia seharusnya tidak sombong dan ingkar, tetapi bersyukur dan patuh kepada-Nya, karena dengan kemahakuasaan dan karunia Allah-lah, ia bisa tercipta. Allah berfirman menyesali manusia yang ingkar dan sombong itu:\n\nDan tidakkah manusia memperhatikan bahwa Kami menciptakannya dari setetes mani, ternyata dia menjadi musuh yang nyata! (Yasin/36: 77)\n\nMenurut kajian ilmiah, ''alaqah merupakan bentuk perkembangan pra-embrionik, yang terjadi setelah percampuran sel mani (sperma) dan sel telur. Moore dan Azzindani menjelaskan bahwa ''alaqah dalam bahasa Arab berarti lintah (leech) atau suatu suspensi (suspended thing) atau segumpal darah (a clot of blood). Lintah merupakan binatang tingkat rendah, berbentuk seperti buah per, dan hidup dengan cara menghisap darah. Jadi ''alaqah merupakan tingkatan (stadium) embrionik, yang berbentuk seperti buah per, di mana sistem kardiovaskuler (sistem pembuluh-jantung) sudah mulai tampak, dan hidupnya tergantung dari darah ibunya, mirip dengan lintah. ''Alaqah terbentuk sekitar 24-25 hari sejak pembuahan. Jika jaringan pra-embrionik ''alaqah ini diambil keluar (digugurkan), memang tampak seperti segumpal darah (a blood clot like). Lihat pula telaah ilmiah pada penjelasan Surah Nuh/71 ayat 14.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 3, 'اِقْرَأْ وَرَبُّكَ الْاَكْرَمُۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bacalah, dan Tuhanmulah Yang Mahamulia,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah meminta manusia membaca lagi, yang mengandung arti bahwa membaca yang akan membuahkan ilmu dan iman itu perlu dilakukan berkali-kali, minimal dua kali. Bila Al-Qur''an atau alam ini dibaca dan diselidiki berkali-kali, maka manusia akan menemukan bahwa Allah itu pemurah, yaitu bahwa Ia akan mencurahkan pengetahuan-Nya kepadanya dan akan memperkokoh imannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 4, 'الَّذِيْ عَلَّمَ بِالْقَلَمِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Yang mengajar (manusia) dengan pena.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Di antara bentuk kepemurahan Allah adalah Ia mengajari manusia mampu menggunakan alat tulis. Mengajari di sini maksudnya memberinya kemampuan menggunakannya. Dengan kemampuan menggunakan alat tulis itu, manusia bisa menuliskan temuannya sehingga dapat dibaca oleh orang lain dan generasi berikutnya. Dengan dibaca oleh orang lain, maka ilmu itu dapat dikembangkan. Dengan demikian, manusia dapat mengetahui apa yang sebelumnya belum diketahuinya, artinya ilmu itu akan terus berkembang. Demikianlah besarnya fungsi baca-tulis.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 5, 'عَلَّمَ الْاِنْسَانَ مَا لَمْ يَعْلَمْۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dia mengajarkan manusia apa yang tidak diketahuinya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Di antara bentuk kepemurahan Allah adalah Ia mengajari manusia mampu menggunakan alat tulis. Mengajari di sini maksudnya memberinya kemampuan menggunakannya. Dengan kemampuan menggunakan alat tulis itu, manusia bisa menuliskan temuannya sehingga dapat dibaca oleh orang lain dan generasi berikutnya. Dengan dibaca oleh orang lain, maka ilmu itu dapat dikembangkan. Dengan demikian, manusia dapat mengetahui apa yang sebelumnya belum diketahuinya, artinya ilmu itu akan terus berkembang. Demikianlah besarnya fungsi baca-tulis.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 6, 'كَلَّآ اِنَّ الْاِنْسَانَ لَيَطْغٰىٓ ۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sekali-kali tidak! Sungguh, manusia itu benar-benar melampaui batas,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menyesali manusia karena banyak mereka yang cenderung lupa diri sehingga melakukan tindakan-tindakan yang melampaui batas, yaitu kafir kepada Allah dan sewenang-wenang terhadap manusia. Kecenderungan itu terjadi ketika mereka merasa sudah berkecukupan. Dengan demikian, ia merasa tidak perlu beriman, dan karena itu ia berani melanggar hukum-hukum Allah. Begitu juga karena sudah merasa berkecukupan, ia merasa tidak butuh orang lain dan merasa berkuasa, dan karena itu ia akan bertindak sewenang-wenang terhadap orang lain itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 7, 'اَنْ رَّاٰهُ اسْتَغْنٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'apabila melihat dirinya serba cukup.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menyesali manusia karena banyak mereka yang cenderung lupa diri sehingga melakukan tindakan-tindakan yang melampaui batas, yaitu kafir kepada Allah dan sewenang-wenang terhadap manusia. Kecenderungan itu terjadi ketika mereka merasa sudah berkecukupan. Dengan demikian, ia merasa tidak perlu beriman, dan karena itu ia berani melanggar hukum-hukum Allah. Begitu juga karena sudah merasa berkecukupan, ia merasa tidak butuh orang lain dan merasa berkuasa, dan karena itu ia akan bertindak sewenang-wenang terhadap orang lain itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 8, 'اِنَّ اِلٰى رَبِّكَ الرُّجْعٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, hanya kepada Tuhanmulah tempat kembali(mu).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menegaskan kepada Nabi Muhammad bahwa mereka yang durhaka itu akan kembali kepada-Nya. Mereka pasti mati dan akan berhadapan dengan-Nya untuk mempertanggungjawabkan perbuatannya. Bila mereka harus mempertanggungjawabkan perbuatannya, berarti mereka nanti akan tahu, bahwa mereka akan diazab dan menyesal. Dalam ayat lain, Allah berfirman mengenai bagaimana keadaan yang akan dialami para pendurhaka itu:\n\nDan janganlah engkau mengira, bahwa Allah lengah dari apa yang diperbuat oleh orang yang zalim. Sesungguhnya Allah menangguhkan mereka sampai hari yang pada waktu itu mata (mereka) terbelalak, mereka datang tergesa-gesa (memenuhi panggilan) dengan mengangkat kepalanya, sedang mata mereka tidak berkedip-kedip dan hati mereka kosong. (Ibrahim/14: 42-43)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 9, 'اَرَاَيْتَ الَّذِيْ يَنْهٰىۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bagaimana pendapatmu tentang orang yang melarang?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bertanya kepada Nabi Muhammad, yang maksudnya meminta beliau memperhatikan orang yang melarang manusia melakukan salat. Orang yang dilarang adalah Nabi Muhammad saw untuk melakukan salat di Masjidil Haram. Sedangkan yang melarang adalah Abu Jahal. Ia mengancam Nabi saw dengan kata-kata:\n\nAbu Jahal berkata, "Jika saya melihat Muhammad salat di Ka''bah, saya akan lindas-lindaskan tengkuknya (ke tanah)." Ketika hal itu sampai kepada Nabi saw., beliau bersabda, "Jika itu ia lakukan, malaikat akan menghajarnya." (Riwayat al-Bukhari dari Ibnu ''Abbas)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 10, 'عَبْدًا اِذَا صَلّٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'seorang hamba ketika dia melaksanakan salat,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bertanya kepada Nabi Muhammad, yang maksudnya meminta beliau memperhatikan orang yang melarang manusia melakukan salat. Orang yang dilarang adalah Nabi Muhammad saw untuk melakukan salat di Masjidil Haram. Sedangkan yang melarang adalah Abu Jahal. Ia mengancam Nabi saw dengan kata-kata:\n\nAbu Jahal berkata, "Jika saya melihat Muhammad salat di Ka''bah, saya akan lindas-lindaskan tengkuknya (ke tanah)." Ketika hal itu sampai kepada Nabi saw., beliau bersabda, "Jika itu ia lakukan, malaikat akan menghajarnya." (Riwayat al-Bukhari dari Ibnu ''Abbas)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 11, 'اَرَاَيْتَ اِنْ كَانَ عَلَى الْهُدٰىٓۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'bagaimana pendapatmu jika dia (yang dilarang salat itu) berada di atas kebenaran (petunjuk),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah meminta Nabi Muhammad memperhatikan, seandainya orang yang dilarang salat di masjid itu membawa hidayah dan membimbing orang kepada iman, dan mengajak orang kepada ketakwaan, yaitu mengerjakan kebaikan dan kebenaran. Tindakan itu pasti lebih baik, karena pasti menguntungkan dirinya dan masyarakatnya. Orang yang berperilaku seperti itu adalah Nabi Muhammad sendiri. Itu adalah dua perilaku yang bertolak belakang dan bertentangan seperti siang dan malam: yang pertama jahat dan membawa kepada kejahatan, dan yang kedua baik dan membawa kepada kebaikan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 12, 'اَوْ اَمَرَ بِالتَّقْوٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'atau dia menyuruh bertakwa (kepada Allah)?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah meminta Nabi Muhammad memperhatikan, seandainya orang yang dilarang salat di masjid itu membawa hidayah dan membimbing orang kepada iman, dan mengajak orang kepada ketakwaan, yaitu mengerjakan kebaikan dan kebenaran. Tindakan itu pasti lebih baik, karena pasti menguntungkan dirinya dan masyarakatnya. Orang yang berperilaku seperti itu adalah Nabi Muhammad sendiri. Itu adalah dua perilaku yang bertolak belakang dan bertentangan seperti siang dan malam: yang pertama jahat dan membawa kepada kejahatan, dan yang kedua baik dan membawa kepada kebaikan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 13, 'اَرَاَيْتَ اِنْ كَذَّبَ وَتَوَلّٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bagaimana pendapatmu jika dia (yang melarang) itu mendustakan dan berpaling?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah meminta Nabi Muhammad memperhatikan orang yang melarang orang beribadah itu, yaitu Abu Jahal sebagai contoh, apakah jika ia memandang Allah dan ajaran-ajaran-Nya dusta, lalu berpaling, dan tidak mau menggubrisnya. Ia tidak tahu bahwa Allah melihat perbuatannya itu. Tidak demikian halnya, Allah mengetahui setiap perbuatan dosanya itu dan akan memberikan balasannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 14, 'اَلَمْ يَعْلَمْ بِاَنَّ اللّٰهَ يَرٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Tidakkah dia mengetahui bahwa sesungguhnya Allah melihat (segala perbuatannya)?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah meminta Nabi Muhammad memperhatikan orang yang melarang orang beribadah itu, yaitu Abu Jahal sebagai contoh, apakah jika ia memandang Allah dan ajaran-ajaran-Nya dusta, lalu berpaling, dan tidak mau menggubrisnya. Ia tidak tahu bahwa Allah melihat perbuatannya itu. Tidak demikian halnya, Allah mengetahui setiap perbuatan dosanya itu dan akan memberikan balasannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 15, 'كَلَّا لَىِٕنْ لَّمْ يَنْتَهِ ەۙ لَنَسْفَعًاۢ بِالنَّاصِيَةِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sekali-kali tidak! Sungguh, jika dia tidak berhenti (berbuat demikian) niscaya Kami tarik ubun-ubunnya, (ke dalam neraka),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah mencela orang yang melarang orang beribadah di dalam masjid, dengan contohnya Abu Lahab. Allah mengancam bahwa bila mereka tidak menghentikan perbuatannya, Allah akan mencabut ubun-ubunnya, yaitu menarik nyawanya sehingga mati seketika. Hukuman itu dijatuhkan padanya karena ubun-ubun itu adalah denyut kehidupannya, sedangkan denyut kehidupannya itu selalu penuh kebohongan dan dosa.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 16, 'نَاصِيَةٍ كَاذِبَةٍ خَاطِئَةٍۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yaitu) ubun-ubun orang yang mendustakan dan durhaka.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah mencela orang yang melarang orang beribadah di dalam masjid, dengan contohnya Abu Lahab. Allah mengancam bahwa bila mereka tidak menghentikan perbuatannya, Allah akan mencabut ubun-ubunnya, yaitu menarik nyawanya sehingga mati seketika. Hukuman itu dijatuhkan padanya karena ubun-ubun itu adalah denyut kehidupannya, sedangkan denyut kehidupannya itu selalu penuh kebohongan dan dosa.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 17, 'فَلْيَدْعُ نَادِيَهٗۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka biarlah dia memanggil golongannya (untuk menolongnya),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah mempersilakan mereka yang sewenang-wenang dan melarang orang melakukan ibadah itu untuk meminta bantuan kelompok mereka. Ayat ini khususnya ditujukan kepada Abu Jahal, yang dikenal sebagai pemimpin terbesar orang-orang yang menentang Nabi saw di Mekah. Allah mengancam bahwa bila Abu Jahal memanggil teman-teman komplotannya untuk meminta tolong, maka Allah akan memanggil malaikat-malaikat Zabaniyah, yaitu para penjaga neraka yang sangat bengis. Artinya, ia di dunia akan celaka dan di akhirat akan masuk neraka. Ancaman itu kemudian terbukti, yaitu pada tahun kedua setelah umat Islam hijrah ke Medinah, terjadi Perang Badar, di mana Abu Jahal sebagai pemimpin Quraisy mati terbunuh. Dan di akhirat nanti ia pasti masuk neraka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 18, 'سَنَدْعُ الزَّبَانِيَةَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kelak Kami akan memanggil Malaikat Zabaniyah, (penyiksa orang-orang yang berdosa), ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah mempersilakan mereka yang sewenang-wenang dan melarang orang melakukan ibadah itu untuk meminta bantuan kelompok mereka. Ayat ini khususnya ditujukan kepada Abu Jahal, yang dikenal sebagai pemimpin terbesar orang-orang yang menentang Nabi saw di Mekah. Allah mengancam bahwa bila Abu Jahal memanggil teman-teman komplotannya untuk meminta tolong, maka Allah akan memanggil malaikat-malaikat Zabaniyah, yaitu para penjaga neraka yang sangat bengis. Artinya, ia di dunia akan celaka dan di akhirat akan masuk neraka. Ancaman itu kemudian terbukti, yaitu pada tahun kedua setelah umat Islam hijrah ke Medinah, terjadi Perang Badar, di mana Abu Jahal sebagai pemimpin Quraisy mati terbunuh. Dan di akhirat nanti ia pasti masuk neraka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 96, 19, 'كَلَّاۗ  لَا تُطِعْهُ وَاسْجُدْ وَاقْتَرِبْ ۩ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 96 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 96 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sekali-kali tidak! Janganlah kamu patuh kepadanya; dan sujudlah serta dekatkanlah (dirimu kepada Allah).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah meminta Nabi saw atau siapa saja yang ingin beribadah agar tidak takut dan tidak mematuhi ancaman orang yang melarang mereka beribadah. Mereka diminta untuk tetap melaksanakan ibadah dengan tekun, terutama salat, dan menggunakan masjid untuk melaksanakannya. Dalam ayat lain, Allah berfirman:\n\nDan janganlah engkau (Muhammad) menuruti orang-orang kafir dan orang-orang munafik itu, janganlah engkau hiraukan gangguan mereka dan bertawakallah kepada Allah. Dan cukuplah Allah sebagai pelindung. (al-Ahzab/33: 48)\n\nDi samping salat, umat Islam diminta pula mengerjakan ibadah-ibadah sunat lainnya dalam rangka mendekatkan diri kepada-Nya, baik itu berupa salat-salat sunat maupun zikir-zikir, dan sebagainya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

