-- Seed Surah 54 (Al-Qamar) with 55 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/54.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (54, 'القمر', 'Al-Qamar', 55, 'Makkiyah', 'Bulan')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 1, 'اِقْتَرَبَتِ السَّاعَةُ وَانْشَقَّ الْقَمَرُ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', ' Saat (hari Kiamat) semakin dekat, bulan pun terbelah. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menyatakan bahwa hari Kiamat hampir datang, pada waktu kehidupan dunia akan berakhir. Dalam ayat lain yang bersamaan maksudnya Allah berfirman: \n\nKetetapan Allah pasti datang, maka janganlah kamu meminta agar dipercepat (datang)nya. (an-Nahl/16: 1) \n\nAllah berfirman: \n\nTelah semakin dekat kepada manusia perhitungan amal mereka, sedang mereka dalam keadaan lalai (dengan dunia), berpaling (dari akhirat). (al-Anbiya''/21: 1) \n\nPada waktu itu bulan akan pecah bercerai-berai akibat penyimpangan dari peredarannya, sebagaimana diutarakan dalam ayat-ayat yang lain yang bersamaan maksudnya: \n\nApabila langit terbelah. (al-Insyiqaq/84: 1) \n\nDan firman-Nya: \n\nApabila matahari digulung, dan apabila bintang-bintang berjatuhan. (at-Takwir/81: 1-2) \n\nBanyak lagi ayat lain yang menunjukkan kejadian yang sangat dahsyat yang akan terjadi ketika hancurnya alam ini dengan tibanya hari Kiamat. Kebanyakan mufasir berpendapat bahwa kejadian tersebut pada ayat pertama telah terjadi dan bulan telah terbelah dua pada masa Nabi Muhammad saw, lima tahun sebelum beliau hijrah. Menurut hadis yang diriwayatkan al-Bukhari, Muslim dan Ibnu Jarir dari Anas bin Malik bahwa penduduk Mekah meminta kepada Nabi Muhammad saw, agar mengemukakan suatu mukjizat sebagai bukti kerasulannya, maka Allah memperlihatkan kepada mereka bulan terbelah dua, sehingga mereka melihat "Jabal Nur" berada di antara dua belahan bulan tersebut. Diriwayatkan pula dari Sahih alBukhari, Muslim dan para perawi-perawi hadis lainnya dari Ibnu Mas''ud bahwa: "Bulan telah terbelah pada masa Nabi Muhammad saw, menjadi dua belah, sebelah berada di atas bukit dan yang lain berada di bawahnya, seraya Nabi Muhammad saw berseru, "Saksikanlah!" Abu Dawud meriwayatkan pula bahwa, "Telah terjadi pembelahan bulan pada masa Nabi Muhammad saw, maka orang-orang Quraisy berkata, "Ini adalah sihir anak Abu Kabsyah." Lalu seorang dari mereka berkata, "Tunggulah dahulu berita yang dibawa oleh para musafir yang tiba, karena Muhammad saw tak sanggup mensihirkan semua manusia." Lalu tibalah para musafir membawa berita kejadian tersebut. Lalu dalam riwayat al-Baihaqi terdapat tambahan, "Lalu mereka bertanya kepada para musafir yang berdatangan dari semua penjuru, jawaban mereka, "Sungguh kami telah melihatnya," lalu Allah menurunkan ayat ini, "Telah dekat (datangnya) saat itu dan telah terbelah bulan." Para ahli tafsir berbeda pendapat tentang terbelahnya bulan. Sebagian berpendapat bahwa bulan itu memang telah terbelah pada masa Nabi sebagai bagian dari mukjizatnya. Tetapi sebagian mufasir berpendapat bulan pasti terbelah bukan terjadi pada masa nabi, tetapi akan terjadi nanti pada saat hari Kiamat. Hal ini disebabkan karena hilangnya keseimbangan daya tarik menarik antar planet. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 2, 'وَاِنْ يَّرَوْا اٰيَةً يُّعْرِضُوْا وَيَقُوْلُوْا سِحْرٌ مُّسْتَمِرٌّ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan jika mereka (orang-orang musyrikin) melihat suatu tanda (mukjizat), mereka berpaling dan berkata, “(Ini adalah) sihir yang terus menerus.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kaum musyrik melihat suatu bukti tentang kebenaran kerasulan Muhammad, maka mereka berpaling dan mendustakan serta mengingkarinya sambil berkata bahwa, "Ini adalah sihir yang memesonakan kita yang akan terus-menerus dilakukannya." Demikianlah jika memang tidak ada iman, maka meskipun pikirannya dapat menerima kebenaran Al-Qur''an dan secara empirik terlihat pada perbuatan dan perilaku Nabi yang membuktikan kerasulan beliau, tetapi mereka tetap ingkar pada kebenaran yang ada di depan mata mereka. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 3, 'وَكَذَّبُوْا وَاتَّبَعُوْٓا اَهْوَاۤءَهُمْ وَكُلُّ اَمْرٍ مُّسْتَقِرٌّ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan mereka mendustakan (Muhammad) dan mengikuti keinginannya, padahal setiap urusan telah ada ketetapannya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kaum musyrik mendustakan kebenaran yang disampaikan kepada mereka oleh Nabi Muhammad saw, dan mengikuti hawa nafsu karena kebodohan mereka. Pada akhir ayat ini ditegaskan bahwa sesuatu itu akan berhenti pada sasaran yang telah ditetapkan, sesuai dengan ketetapan Allah. Karena itu persoalan orang-orang musyrik akan berhenti pada kehinaan di dunia dan azab yang kekal di akhirat, sedang persoalanmu hai Muhammad saw akan berhenti pada kemenangan di dunia dan surga di akhirat'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 4, 'وَلَقَدْ جَاۤءَهُمْ مِّنَ الْاَنْبَاۤءِ مَا فِيْهِ مُزْدَجَرٌۙ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sungguh, telah datang kepada mereka beberapa kisah yang di dalamnya terdapat ancaman (terhadap kekafiran),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kaum musyrik yang mendustakan kerasulan Muhammad dan mengikuti hawa nafsu, telah mengetahui beberapa kisah tentang umat-umat terdahulu yang mendustakan para rasul, sehingga Allah menurunkan azab kepada mereka, sebagaimana tersebut dalam AlQur''an. Namun kisah-kisah itu tidak berkesan di hati mereka dan tidak dapat mencegah kekafiran, lalu Allah membinasakan mereka, sedang di akhirat nanti akan disiksa sesuai dengan perbuatan syirik yang telah menghiasi jiwa mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 5, 'حِكْمَةٌ ۢ بَالِغَةٌ فَمَا تُغْنِ النُّذُرُۙ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(itulah) suatu hikmah yang sempurna, tetapi peringatan-peringatan itu tidak berguna (bagi mereka),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kisah tersebut mengandung hikmah yang sangat tinggi nilainya dalam memberi petunjuk bagi manusia kepada jalan yang benar, tetapi hikmah dan peringatan yang terkandung dalam kisahkisah itu tidak berguna lagi bagi mereka karena hati nurani mereka telah terkunci mati. Firman Allah: \n\nTidaklah bermanfaat tanda-tanda (kebesaran Allah) dan rasul-rasul yang memberi peringatan bagi orang yang tidak beriman. (Yunus/10: 101)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 6, 'فَتَوَلَّ عَنْهُمْ ۘ يَوْمَ يَدْعُ الدَّاعِ اِلٰى شَيْءٍ نُّكُرٍۙ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'maka berpalinglah engkau (Muhammad) dari mereka pada hari (ketika) penyeru (malaikat) mengajak (mereka) kepada sesuatu yang tidak menyenangkan (hari pembalasan), ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah memerintahkan rasul-Nya agar tidak mengadakan perdebatan dengan kaum musyrik, karena tidak ada faedahnya. Sebab itu hendaklah berpaling dari mereka, pendusta-pendusta itu. Karena mereka sudah sampai ke tingkat tidak mau tunduk kepada bukti dan kebenaran, maka sudah pantas bagimu tidak memberi nasihat kepada mereka lagi. Allah mengetahui bahwa Rasulullah saw tidak bosan terhadap persoalan mereka dan jengkel karena kecongkakannya. Allah mengingatkan kepada manusia bahwa akan terjadi hari kebangkitan, yang hari itu malaikat akan memanggil manusia datang ke suatu tempat yang sangat berbahaya dan dibenci oleh kaum musyrik, yaitu Padang Mahsyar.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 7, 'خُشَّعًا اَبْصَارُهُمْ يَخْرُجُوْنَ مِنَ الْاَجْدَاثِ كَاَنَّهُمْ جَرَادٌ مُّنْتَشِرٌۙ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'pandangan mereka tertunduk, ketika mereka keluar dari kuburan, seakan-akan mereka belalang yang beterbangan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Mereka akan keluar dari kubur dalam keadaan pandangan mereka tunduk, karena tidak sanggup memandang kedahsyatan yang terjadi pada hari itu, dan ketika mereka bersama-sama keluar dari kubur, tergopoh-gopoh menuju ke tempat perhitungan amal sesuai dengan panggilan, laksana belalang-belalang yang beterbangan di udara. Dalam ayat lain yang bersamaan maksudnya Allah berfirman: \n\nPada hari itu manusia seperti laron yang beterbangan. (alQari''ah/101: 4)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 8, 'مُّهْطِعِيْنَ اِلَى الدَّاعِۗ يَقُوْلُ الْكٰفِرُوْنَ هٰذَا يَوْمٌ عَسِرٌ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dengan patuh mereka segera datang kepada penyeru itu. Orang-orang kafir berkata, “Ini adalah hari yang sulit.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Mereka segera datang memenuhi seruan, tidak ada yang menentang seruan itu, tidak ada pula yang terlambat memenuhinya, seraya mereka berkata, "Ini adalah hari yang sangat berbahaya dan tempat yang mencelakakan." Firman Allah: \n\nMaka itulah hari yang serba sulit, bagi orang-orang kafir tidak mudah. (al-Muddatstsir/74: 9-10)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 9, '۞ كَذَّبَتْ قَبْلَهُمْ قَوْمُ نُوْحٍ فَكَذَّبُوْا عَبْدَنَا وَقَالُوْا مَجْنُوْنٌ وَّازْدُجِرَ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sebelum mereka, kaum Nuh juga telah mendustakan (rasul), maka mereka mendustakan hamba Kami (Nuh) dan mengatakan, “Dia orang gila!” Lalu diusirnya dengan ancaman. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebelum umat Nabi Muhammad saw, kaum Nuh telah terlebih dahulu mendustakan kerasulan Nabi Nuh. Mereka mendustakan kerasulan Nabi Nuh bahkan mereka menuduhnya gila serta mengancam dan menakut-nakuti Nabi Nuh supaya menghentikan dakwahnya, jika tidak mereka akan merajamnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 10, 'فَدَعَا رَبَّهٗٓ اَنِّيْ مَغْلُوْبٌ فَانْتَصِرْ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka dia (Nuh) mengadu kepada Tuhannya, “Sesungguhnya aku telah dikalahkan, maka tolonglah (aku).”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Nabi Nuh berdoa kepada Allah swt bahwa ia tidak berdaya menghadapi ancaman kaumnya, dan memohon kepada Allah agar menolongnya. Doa Nabi Nuh terdapat dalam Surah Nuh/71: 26-28, bahwa Nabi Nuh memohon kepada Allah agar orang kafir dihancurkan, karena mereka hanya akan menyesatkan manusia dan akan melahirkan orang-orang durhaka dan kafir. Di samping itu Nabi Nuh juga memohon ampunan bagi kedua orangtua dan orang-orang yang beriman. Hal ini dilakukan setelah Nabi Nuh mengetahui keingkaran mereka dan hampir lelahnya Nabi Nuh dalam menyampaikan dakwahnya. Firman Allah: Dan Nuh berkata, "Ya Tuhanku, janganlah Engkau biarkan seorang pun di antara orang-orang kafir itu tinggal di atas bumi. Sesungguhnya jika Engkau biarkan mereka tinggal, niscaya mereka akan menyesatkan hamba-hamba-Mu, dan mereka hanya akan melahirkan anak-anak yang jahat dan tidak tahu bersyukur. Ya Tuhanku, ampunilah aku, ibu bapakku, dan siapa pun yang memasuki rumahku dengan beriman dan semua orang yang beriman laki-laki dan perempuan. Dan janganlah Engkau tambahkan bagi orang-orang yang zalim itu selain kehancuran." (Nuh/71: 26-28)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 11, 'فَفَتَحْنَآ اَبْوَابَ السَّمَاۤءِ بِمَاۤءٍ مُّنْهَمِرٍۖ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Lalu Kami bukakan pintu-pintu langit dengan (menurunkan) air yang tercurah,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah mengabulkan doa Nabi Nuh dengan mencurahkan air yang banyak dari langit dan berlangsung bertahun-tahun.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 12, 'وَّفَجَّرْنَا الْاَرْضَ عُيُوْنًا فَالْتَقَى الْمَاۤءُ عَلٰٓى اَمْرٍ قَدْ قُدِرَ ۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan Kami jadikan bumi menyemburkan mata-mata air maka bertemulah (air-air) itu sehingga (meluap menimbulkan) keadaan (bencana) yang telah ditetapkan. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Disamping itu dari dalam bumi, Allah memancarkan sumber mata air di permukaannya, lalu bertemulah dua air tersebut, yaitu air yang diturunkan dari langit dan air yang dipancarkan dari bumi, terjadilah banjir yang besar sebagaimana yang sudah ditentukan Allah. Ayat ini menguraikan mengenai peristiwa air bah pada masa Nabi Nuh. Akan tetapi, apabila penggalan kata-kata pertama dalam kalimat di atas, dan dikaitkan dengan pernyataan dalam ayat sebelumnya, maka keduanya akan memperlihatkan siklus air. Penggalan mengenai siklus air ini menjelaskan tentang turunnya air hujan dan bumi mengeluarkannya lagi dalam bentuk mata air.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 13, 'وَحَمَلْنٰهُ عَلٰى ذَاتِ اَلْوَاحٍ وَّدُسُرٍۙ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan Kami angkut dia (Nuh) ke atas (kapal) yang terbuat dari papan dan pasak, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menyelamatkan Nabi Nuh dari banjir besar dengan memerintahkan Nuh beserta pengikutnya naik ke kapal besar yang terbuat dari papan-papan yang dipaku yang telah disiapkan sebelumnya. Maksud ayat ini sejalan dengan firman Allah dalam Surah al-''Ankabut: \n\nMaka Kami selamatkan Nuh dan orang-orang yang berada di kapal itu. (al-''Ankabut/29: 15)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 14, 'تَجْرِيْ بِاَعْيُنِنَاۚ جَزَاۤءً لِّمَنْ كَانَ كُفِرَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang berlayar dengan pemeliharaan (pengawasan) Kami sebagai balasan bagi orang yang telah diingkari (kaumnya).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Meskipun topan sangat dahsyat disertai hujan yang sangat lebat dan gelombang air laksana gunung besarnya, kapal itu berlayar dengan selamat berjalan di bawah pengawasan Allah sebagai balasan doanya, sebagaimana diinformasikan dalam ayat lain. \n\nDan kapal itu berlayar membawa mereka ke dalam gelombang laksana gunung-gunung. Dan Nuh memanggil anaknya, ketika dia (anak itu) berada di tempat yang jauh terpencil, "Wahai anakku! Naiklah (ke kapal) bersama kami dan janganlah engkau bersama orang-orang kafir." (Hud/11: 42)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 15, 'وَلَقَدْ تَّرَكْنٰهَآ اٰيَةً فَهَلْ مِنْ مُّدَّكِرٍ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sungguh, kapal itu telah Kami jadikan sebagai tanda (pelajaran). Maka adakah orang yang mau mengambil pelajaran?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Peristiwa bencana buat kaum Nuh dijadikan Allah sebagai pelajaran bagi manusia sepanjang masa. Sehingga mereka dapat membela kebenaran dan menghancurkan kebatilan yang mendustakan terhadap rasul-rasul Allah. Bahtera tersebut mendarat di bukit "Judi." (Nama Gunung di daerah Kurdistan) \n\nDan difirmankan, "Wahai bumi! Telanlah airmu dan wahai langit (hujan!) berhentilah." Dan air pun disurutkan, dan perintah pun diselesaikan dan kapal itupun berlabuh di atas gunung Judi, dan dikatakan, "Binasalah orang-orang zalim." (Hud/11: 44) \n\nDalam ayat lain peristiwa itu dinyatakan: \n\nSesungguhnya ketika air naik (sampai ke gunung), Kami membawa (nenek moyang) kamu ke dalam kapal, agar Kami jadikan (peristiwa itu) sebagai peringatan bagi kamu dan agar diperhatikan oleh telinga yang mau mendengar. (al-haqqah/69: 11-12) \n\nSelanjutnya pada akhir ayat ini Allah bertanya, "masih adakah orang-orang yang mau mengingat dan merenungkan peristiwa itu untuk dijadikan pelajaran." Artinya peristiwa itu perlu direnungkan dan diingat sepanjang masa untuk meningkatkan keimanan dan ketakwaan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 16, 'فَكَيْفَ كَانَ عَذَابِيْ وَنُذُرِ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka betapa dahsyatnya azab-Ku dan peringatan-Ku! ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah memperingatkan orang yang membangkang dan mendustakan para rasul serta tidak mengambil iktibar terhadap dahsyatnya siksaan Tuhan dan ancaman-ancamannya yang ditujukan kepada orang-orang yang tidak mengindahkan seruan para rasul'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 17, 'وَلَقَدْ يَسَّرْنَا الْقُرْاٰنَ لِلذِّكْرِ فَهَلْ مِنْ مُّدَّكِرٍ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sungguh, telah Kami mudahkan Al-Qur''an untuk peringatan, maka adakah orang yang mau mengambil pelajaran?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah yang menurunkan Al-Qur''an yang mudah dibaca dan difahami untuk dijadikan pelajaran bagi orang yang mau menjadikan pelajaran, karena itu hendaknya manusia mengimaninya dan menjalankannya. Dalam ayat lain dinyatakan bahwa Al-Qur''an hanya bermanfaat bagi orang yang beriman, karena mereka menjalankannya: \n\nDan tetaplah memberi peringatan, karena sesungguhnya peringatan itu bermanfaat bagi orang-orang Mukmin. (adh-dzariyat/51: 55) \n\nDan seperti firman-Nya: \n\nKitab (Al-Qur''an) yang Kami turunkan kepadamu penuh berkah agar mereka menghayati ayat-ayatnya dan agar orang-orang yang berakal sehat mendapat pelajaran. (shad/38: 29) \n\nMaka sungguh, telah Kami mudahkan (Al-Qur''an) itu dengan bahasamu (Muhammad), agar dengan itu engkau dapat memberi kabar gembira kepada orang-orang yang bertakwa, dan agar engkau dapat memberi peringatan kepada kaum yang membangkang. (Maryam/19: 97) \n\nAl-Qur''an itu mudah difahami dan dijalankan, karena Nabi saw menjelaskan dan mencontohkan pelaksanaannya. Isi Al-Qur''an adalah kabar gembira bagi yang takwa dan peringatan bagi yang membangkang, karena itu hendaknya manusia menjadi orang yang takwa dengan menjalankannya dan tidak mengingkarinya, karena akan menjadi orang yang merugi.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 18, 'كَذَّبَتْ عَادٌ فَكَيْفَ كَانَ عَذَابِيْ وَنُذُرِ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kaum ‘Ad pun telah mendustakan. Maka betapa dahsyatnya azab-Ku dan peringatan-Ku! ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini Allah menyatakan bahwa kaum ''Ad memandang nabi mereka dan risalah yang ia bawa untuk mereka adalah bohong. Kepada kaum yang mendustakan para rasul itu Allah telah menyampaikan peringatan dan menurunkan azab yang sangat dahsyat. Hal tersebut hendaknya dijadikan iktibar oleh orang-orang yang datang kemudian.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 19, 'اِنَّآ اَرْسَلْنَا عَلَيْهِمْ رِيْحًا صَرْصَرًا فِيْ يَوْمِ نَحْسٍ مُّسْتَمِرٍّۙ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sesungguhnya Kami telah menghembuskan angin yang sangat kencang kepada mereka pada hari nahas yang terus menerus, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa Allah melepaskan topan yang amat dahsyat menderu-deru. Hal tersebut merupakan azab Allah kepada kaum ''Ad di kala bergelimangan dosa dan durhaka. Peristiwa ini terjadi selama tujuh malam delapan hari terus-menerus sebagaimana diinformasikan dalam ayat lain: \n\nMaka Kami tiupkan angin yang sangat bergemuruh kepada mereka dalam beberapa hari yang nahas. (Fussilat/41: 16) \n\nDan firman-Nya: \n\nAllah menimpakan angin itu kepada mereka selama tujuh malam delapan hari terus-menerus. (al-haqqah/69: 7)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 20 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 20, 'تَنْزِعُ النَّاسَۙ كَاَنَّهُمْ اَعْجَازُ نَخْلٍ مُّنْقَعِرٍ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 20);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 20;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang membuat manusia bergelimpangan, mereka bagaikan pohon-pohon kurma yang tumbang dengan akar-akarnya. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada ayat ini dinyatakan bahwa angin itu melemparkan mereka kemudian menghempaskan mereka ke bawah dengan kepala lebih dahulu karena begitu kerasnya kepala mereka terpenggal dan tubuh mereka bergelimangan bagaikan pohon-pohon kurma yang tumbang berserakan karena tercabut oleh badai. Demikianlah dahsyatnya badai itu yang dapat menumbangkan tubuh mereka yang besar-besar sebagaimana dinyatakan dalam firman-Nya: \n\nOrang-orang itu lebih kuat dari mereka (sendiri) dan mereka telah mengolah bumi (tanah) serta memakmurkannya melebihi apa yang telah mereka makmurkan. (ar-Rum/30: 9)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 21 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 21, 'فَكَيْفَ كَانَ عَذَابِيْ وَنُذُرِ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 21);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 21;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka betapa dahsyatnya azab-Ku dan peringatan-Ku! ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah kembali menyatakan, betapa hebat azab-Nya dan peringatan-Nya. Pernyataan itu menunjukkan bahwa Allah sendiri memandang peristiwa tersebut hebat sekali. Dalam ayat yang lain memang disebutkan bahwa azab Allah sangat hebat: Kami ingin agar mereka itu merasakan siksaan yang menghinakan dalam kehidupan di dunia. Sedangkan azab akhirat pasti lebih menghinakan dan mereka tidak diberi pertolongan. (Fussilat/41: 16)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 22 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 22, 'وَلَقَدْ يَسَّرْنَا الْقُرْاٰنَ لِلذِّكْرِ فَهَلْ مِنْ مُّدَّكِرٍ ࣖ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 22);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 22;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sungguh, telah Kami mudahkan Al-Qur''an untuk peringatan, maka adakah orang yang mau mengambil pelajaran?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah juga kembali menegaskan bahwa Al-Qur''an mudah dipahami dan diambil sebagai peringatan karena Allah menyampaikan contoh yang gamblang di dalamnya, karena itu manusia seharusnya mengimaninya dalam menjalankan ajaranajaran yang terdapat di dalamnya supaya mereka bahagia di dunia dan di akhirat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 23 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 23, 'كَذَّبَتْ ثَمُوْدُ بِالنُّذُرِ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 23);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 23;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kaum Samud pun telah mendustakan peringatan itu.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini Allah menerangkan bahwa kaum Samud menganggap dusta peringatan-peringatan yang disampaikan nabi mereka Nabi Saleh, yaitu mentauhidkan Allah, iman kepada rasul dan hari Kiamat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 24 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 24, 'فَقَالُوْٓا اَبَشَرًا مِّنَّا وَاحِدًا نَّتَّبِعُهٗٓ  ۙاِنَّآ اِذًا لَّفِيْ ضَلٰلٍ وَّسُعُرٍ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 24);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 24;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka mereka berkata, “Bagaimana kita akan mengikuti seorang manusia (biasa) di antara kita? Sungguh, kalau begitu kita benar-benar telah sesat dan gila. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Mereka memandang Nabi Saleh dusta, karena dalam pandangan mereka, tidak mungkin ajaran baru yang diajarkan satu orang lebih benar dari ajaran yang telah diikuti oleh semua orang dan telah diterima semenjak nenek moyang mereka. Mereka memandang bahwa mengikuti satu orang yang membawa ajaran yang lain dari ajaran yang mereka terima sejak nenek moyang akan membuat sesat dan gila.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 25 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 25, 'ءَاُلْقِيَ الذِّكْرُ عَلَيْهِ مِنْۢ بَيْنِنَا بَلْ هُوَ كَذَّابٌ اَشِرٌ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 25);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 25;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Apakah wahyu itu diturunkan kepadanya di antara kita? Pastilah dia (Saleh) seorang yang sangat pendusta (dan) sombong.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya mereka berdalih bahwa tidak mungkin wahyu itu diturunkan kepada seseorang yaitu Nabi Saleh sedang ia manusia biasa. Mengapa wahyu tidak diturunkan kepada pemimpin mereka yang berkuasa, disegani, berharta, dan sebagainya. Oleh karena itu dalam pandangan mereka Nabi Saleh bohong dan hanya menyombongkan diri. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 26 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 26, 'سَيَعْلَمُوْنَ غَدًا مَّنِ الْكَذَّابُ الْاَشِرُ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 26);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 26;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kelak mereka akan mengetahui siapa yang sebenarnya sangat pendusta (dan) sombong itu.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah membantah dengan keras pandangan mereka dengan menyatakan bahwa dalam waktu dekat mereka akan mengetahui siapa sebenarnya yang bohong dan sombon'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 27 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 27, 'اِنَّا مُرْسِلُوا النَّاقَةِ فِتْنَةً لَّهُمْ فَارْتَقِبْهُمْ وَاصْطَبِرْۖ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 27);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 27;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sesungguhnya Kami akan mengirimkan unta betina sebagai cobaan bagi mereka, maka tunggulah mereka dan bersabarlah (Saleh).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menerangkan bahwa ia memenuhi permintaan mereka untuk menjelmakan seekor unta betina dari sebuah batu besar sesuai permintaan mereka, sebagai mukjizat Nabi Saleh. Mereka meminta mukjizat seperti itu karena mereka terkenal sebagai pemahat batu yang hebat dan gunung-gunung batu sebagai tempat tinggal mereka. Unta betina yang dijelmakan dari batu gunung itu dijadikan Allah sebagai ujian bagi umat Nabi Saleh. Tempat mereka tinggal itu sekarang dekat Mada''in, suatu daerah antara Hijaz dan Syiria. Pada akhir ayat ini Allah memerintahkan Nabi Saleh untuk menunggu apa yang akan mereka lakukan, apakah beriman atau mereka tetap kafir. Dan supaya Nabi Saleh bersabar terhadap gangguan-gangguan mereka sampai datang ketentuan Allah, karena Allah tetap membela kebenaran dan menghancurkan kebatilan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 28 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 28, 'وَنَبِّئْهُمْ اَنَّ الْمَاۤءَ قِسْمَةٌ ۢ بَيْنَهُمْۚ  كُلُّ شِرْبٍ مُّحْتَضَرٌ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 28);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 28;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan beritahukanlah kepada mereka bahwa air itu dibagi di antara mereka (dengan unta betina itu); setiap orang berhak mendapat giliran minum.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah memerintahkan Nabi Saleh supaya memberitahukan kepada kaumnya tentang pembagian air sumur antara mereka dan unta, yaitu sehari untuk unta betina dan sehari untuk mereka. Masing-masing datang menurut gilirannya untuk mengambil air sumur itu. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 29 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 29, 'فَنَادَوْا صَاحِبَهُمْ فَتَعَاطٰى فَعَقَرَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 29);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 29;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka mereka memanggil kawannya, lalu dia menangkap (unta itu) dan memotongnya. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menerangkan bahwa akhirnya kaum Samud keberatan atas pembagian seperti itu dan ingin membunuh unta. Mereka lalu memanggil seorang warga mereka yang terkenal sangat kejam, namanya Kudar bin Salif dan mencincang unta tersebut.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 30 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 30, 'فَكَيْفَ كَانَ عَذَابِيْ وَنُذُرِ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 30);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 30;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka betapa dahsyatnya azab-Ku dan peringatan-Ku!', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah kembali menerangkan bagaimana hebatnya azab Allah dan ancaman-ancamannya-Nya. Mereka telah diperingatkan ancaman dan bencana, tetapi mereka tidak menghiraukannya'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 31 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 31, 'اِنَّآ اَرْسَلْنَا عَلَيْهِمْ صَيْحَةً وَّاحِدَةً فَكَانُوْا كَهَشِيْمِ الْمُحْتَظِرِ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 31);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 31;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kami kirimkan atas mereka satu suara yang keras mengguntur, maka jadilah mereka seperti batang-batang kering yang lapuk. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Azab pada ayat ini adalah saihah. Sebagaimana sudah diterangkan dalam kosakata Surah Hud/11: 67, saihah adalah rajfah (gempa hebat) dan saiqah (petir yang menyambar). Dengan demikian azab yang mereka terima adalah petir yang menggelegar disertai gempa yang dahsyat. Petir itu menghanguskan tubuh mereka sehingga mati terbakar dan kering bagaikan rerumputan yang mati kering karena kekeringan. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 32 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 32, 'وَلَقَدْ يَسَّرْنَا الْقُرْاٰنَ لِلذِّكْرِ فَهَلْ مِنْ مُّدَّكِرٍ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 32);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 32;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sungguh, telah Kami mudahkan Al-Qur''an untuk peringatan, maka adakah orang yang mau mengambil pelajaran?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Demikianlah penjelasan Al-Qur''an mengenai umat terdahulu. Penjelasan itu lugas, semoga siapapun mau mengambilnya menjadi pelajaran untuk beriman.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 33 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 33, 'كَذَّبَتْ قَوْمُ لُوْطٍ ۢبِالنُّذُرِ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 33);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 33;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kaum Lut pun telah mendustakan peringatan itu. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kisah itu dimulai untuk menghukum mereka. Allah menerangkan bahwa kaum Lut juga telah menganggap peringatan-peringatan Allah yang disampaikan-Nya melalui Nabi Lut, bohong. Peringatan-peringatan itu adalah agar mereka meninggalkan perbuatan-perbuatan kotor yang mereka lakukan yaitu hubungan kelamin sesama laki-laki.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 34 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 34, 'اِنَّآ اَرْسَلْنَا عَلَيْهِمْ حَاصِبًا اِلَّآ اٰلَ لُوْطٍ ۗنَجَّيْنٰهُمْ بِسَحَرٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 34);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 34;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sesungguhnya Kami kirimkan kepada mereka badai yang membawa batu-batu (yang menimpa mereka), kecuali keluarga Lut. Kami selamatkan mereka sebelum fajar menyingsing,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah mengirimkan mereka angin puting beliung yang menerbangkan batu-batu lalu menghempaskan kepala mereka sehingga mereka binasa, yang selamat hanya keluarga Nabi Lut yaitu orang-orang yang beriman kepadanya. Karena diperintahkan Allah mereka lebih dahulu keluar dari negeri mereka pada dini hari sebelum fajar.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 35 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 35, 'نِّعْمَةً مِّنْ عِنْدِنَاۗ  كَذٰلِكَ نَجْزِيْ مَنْ شَكَرَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 35);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 35;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sebagai nikmat dari Kami. Demikianlah Kami memberi balasan kepada orang-orang yang bersyukur. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Penyelamatan itu merupakan nikmat dari Allah kepada orang-orang yang beriman tersebut. Nikmat itu berupa keselamatan mereka dari azab tersebut. Demikianlah hukum Allah, bahwa Dia senantiasa memberikan nikmat kepada orang-orang yang bersyukur dan patuh menjalankan perintah-Nya dan menjauhi larangan-Nya, dan menghukum orang yang membangkang.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 36 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 36, 'وَلَقَدْ اَنْذَرَهُمْ بَطْشَتَنَا فَتَمَارَوْا بِالنُّذُرِ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 36);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 36;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sungguh, dia (Lut) telah memperingatkan mereka akan hukuman Kami, tetapi mereka mendustakan peringatan-Ku. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Hukuman terhadap mereka yang membangkang pantas dijatuhkan karena Allah melalui Nabi Lut telah memberi peringatan kepada mereka tetapi mereka tidak memperdulikannya, mereka terus melakukan perbuatan hubungan kelamin sesama laki-laki.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 37 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 37, 'وَلَقَدْ رَاوَدُوْهُ عَنْ ضَيْفِهٖ فَطَمَسْنَآ اَعْيُنَهُمْ فَذُوْقُوْا عَذَابِيْ وَنُذُرِ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 37);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 37;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sungguh, mereka telah membujuknya (agar menyerahkan) tamunya (kepada mereka), lalu Kami butakan mata mereka, maka rasakanlah azab-Ku dan peringatan-Ku!', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kejahatan mereka sampai ke puncaknya ketika yang mereka minta dari Nabi Lut agar menyerahkan kepada mereka, tamu-tamunya. Tamu-tamu itu adalah malaikat-malaikat yang menyamar sebagai pemuda-pemuda ganteng untuk menguji mereka. Mereka mengetahui tamu-tamu itu karena pengkhianatan istri Lut yang menyampaikan kepada mereka berita kedatangannya. Ketika Nabi Lut melihat mereka datang, ia menutup pintu untuk melindungi tamu-tamunya, dan menawarkan kepada mereka "anakanak perempuannya." Namun mereka tidak tertarik pada anak-anak perempuannya itu dan berusaha mendobrak pintu. Akhirnya Nabi Lut membukakan pintu. Begitu mereka masuk, mata mereka menjadi buta tidak dapat melihat tamu-tamu tersebut karena ditampar oleh Jibril dengan sayapnya. Pada akhir ayat ini Allah menyatakan kepada mereka supaya mereka merasakan azab-Nya berupa kebutaan mata mereka, yang sebelumnya kepada mereka telah diberi ancaman.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 38 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 38, 'وَلَقَدْ صَبَّحَهُمْ بُكْرَةً عَذَابٌ مُّسْتَقِرٌّۚ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 38);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 38;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sungguh, pada esok harinya mereka benar-benar ditimpa azab yang tetap.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada pagi harinya, azab pun datang. Mereka dihujani batu oleh Allah sehingga mereka dan negerinya terkubur habis. Nabi Lut sendiri beserta keluarga yaitu kedua putrinya dan mereka yang beriman sudah diperintahkan keluar dari negeri itu sebelum fajar sehingga mereka selamat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 39 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 39, 'فَذُوْقُوْا عَذَابِيْ وَنُذُرِ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 39);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 39;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka rasakanlah azab-Ku dan peringatan-Ku!', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Demikianlah azab Allah terhadap kaum Nabi Lut. Kedahsyatan azab itu harus mereka rasakan karena mereka tidak mau memperhatikan peringatan-peringatan Allah melalui nabi-Nya. Peringatan-peringatan Allah pasti terjadi, karena itu tidak boleh diabaikan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 40 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 40, 'وَلَقَدْ يَسَّرْنَا الْقُرْاٰنَ لِلذِّكْرِ فَهَلْ مِنْ مُّدَّكِرٍ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 40);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 40;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sungguh, telah Kami mudahkan Al-Qur''an untuk peringatan, maka adakah orang yang mau mengambil pelajaran? ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Tafsir ayat ini sebagaimana yang telah diterangkan pada ayat 32 surah ini yang selalu dijadikan penutup dari masing-masing empat kisah tersebut (yaitu kisah kaum Nuh, kisah kaum ''Ad, kisah kaum Samud dan kisah kaum Lut). Allah juga kembali menegaskan bahwa Al-Qur''an mudah dipahami dan diambil sebagai peringatan karena Allah menyampaikan contoh yang gamblang di dalamnya, karena itu manusia seharusnya mengimaninya dalam menjalankan ajaran-ajaran yang terdapat di dalamnya supaya mereka bahagia di dunia dan di akhirat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 41 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 41, 'وَلَقَدْ جَاۤءَ اٰلَ فِرْعَوْنَ النُّذُرُۚ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 41);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 41;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sungguh, peringatan telah datang kepada keluarga Fir‘aun. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat-ayat ini menerangkan bahwa sungguh peringatan demi peringatan telah berkali-kali disampaikan kepada kaum Fir''aun dan pengikut-pengikutnya. Namun mereka tetap mendustakannya. Peringatan-peringatan itu adalah semua tanda-tanda kerasulan dan mukjizat yang Allah berikan kepada Nabi Musa sebagaimana diungkapkan dalam Surah al-A''raf/7: 133 dan al-Isra''/17: 101. Karena itu Allah menurunkan azab kepada mereka. Azab datang dari Zat yang Mahakuat dan Mahakuasa, yang menunjukkan bahwa azab itu amat hebat. Berupa tenggelamnya Fir''aun dan pengikutnya di Laut Merah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 42 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 42, 'كَذَّبُوْا بِاٰيٰتِنَا كُلِّهَا فَاَخَذْنٰهُمْ اَخْذَ عَزِيْزٍ مُّقْتَدِرٍ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 42);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 42;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mereka mendustakan mukjizat-mukjizat Kami semuanya, maka Kami azab mereka dengan azab dari Yang Mahaperkasa, Mahakuasa.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat-ayat ini menerangkan bahwa sungguh peringatan demi peringatan telah berkali-kali disampaikan kepada kaum Fir''aun dan pengikut-pengikutnya. Namun mereka tetap mendustakannya. Peringatan-peringatan itu adalah semua tanda-tanda kerasulan dan mukjizat yang Allah berikan kepada Nabi Musa sebagaimana diungkapkan dalam Surah al-A''raf/7: 133 dan al-Isra''/17: 101. Karena itu Allah menurunkan azab kepada mereka. Azab datang dari Zat yang Mahakuat dan Mahakuasa, yang menunjukkan bahwa azab itu amat hebat. Berupa tenggelamnya Fir''aun dan pengikutnya di Laut Merah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 43 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 43, 'اَكُفَّارُكُمْ خَيْرٌ مِّنْ اُولٰۤىِٕكُمْ اَمْ لَكُمْ بَرَاۤءَةٌ فِى الزُّبُرِۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 43);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 43;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Apakah orang-orang kafir di lingkunganmu (kaum musyrikin) lebih baik dari mereka, ataukah kamu telah mempunyai jaminan kebebasan (dari azab) dalam kitab-kitab terdahulu? ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah memperingatkan orang-orang kafir Mekah apakah mereka merasa lebih mulia dari kaum kafir sebelum mereka yang telah ditimpa hukuman Allah seperti kaum Nuh, kaum ''Ad dan kaum Samud. Apakah mereka akan selamat dari azab Allah karena kekafiran mereka terhadap-Nya dan kedustaan mereka terhadap rasulNya. Ataukah mereka benar mendapat jaminan tertulis dalam kitabkitab suci bahwa mereka merasa bebas dari azab Allah walaupun selalu kafir dan berbuat jahat. Jika keyakinan mereka itu benar perlu menunjukkan landasan kebenaran keyakinan mereka itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 44 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 44, 'اَمْ يَقُوْلُوْنَ نَحْنُ جَمِيْعٌ مُّنْتَصِرٌ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 44);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 44;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Atau mereka mengatakan, “Kami ini golongan yang bersatu yang pasti menang.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah masih melanjutkan pertanyaan apakah mereka merasa merupakan suatu kekuatan yang sangat kompak sehingga begitu kuatnya dan tidak mungkin dikalahkan. Abu Jahal berkata, pasukan mereka banyak dan kuat, mereka pasti akan menang (pada peristiwa Perang Badar). ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 45 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 45, 'سَيُهْزَمُ الْجَمْعُ وَيُوَلُّوْنَ الدُّبُرَ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 45);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 45;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Golongan itu pasti akan dikalahkan dan mereka akan mundur ke belakang. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menegaskan bahwa kesatuan mereka akan diceraiberaikan dan kekuatan mereka akan dipatahkan oleh pasukan Islam. Janji Allah itu terbukti dalam Perang Badar, dimana lebih dari 70 orang pemuka-pemuka mereka tewas dan sisanya lari terbirit-birit kembali ke Mekah. Bukti tentang benarnya kenabian Muhammad saw, karena ayat ini turun di Mekah, sedang Nabi saw belum mempunyai pasukan, bahkan pengikut-pengikut Nabi terpencarpencar, diburu dan disiksa oleh orang-orang musyrik di mana saja mereka berada, ''Umar bin al-Khaththab berkata, "Ketika ayat itu turun saya tidak mengerti apa maksudnya. Tetapi pada Perang Badar, saya lihat Nabi saw memakai baju besi dan saya dengan beliau membaca ayat ini, ''Golongan itu pasti akan dikalahkan, waktu itu barulah saya mengerti maksud ayat tersebut." Diriwayatkan oleh al-Bukhari dari Ibnu ''Abbas bahwa Nabi saw berkata ketika beliau masih dalam kemah, pada hari Perang Badar: "Aku menagih pesan-Mu dan janji-Mu! Ya Allah, jika Engkau menghendaki (kekalahan kami) niscaya Engkau tidak akan disembah lagi sesudah hari ini". Lalu Abu Bakar memegang tangan Nabi dan berkata, "Cukup sudah ya Rasulullah! Engkau telah begitu mendesak Tuhanmu."Lalu beliau keluar (dari kemah) melompat dengan memakai baju besi sambil membaca ayat ini. (Riwayat alBukhari) \n\nKemudian Allah menyatakan bahwa yang tersebut itu adalah azab dunia dan mereka akan menemui azab yang lebih hebat lagi pada hari Kiamat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 46 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 46, 'بَلِ السَّاعَةُ مَوْعِدُهُمْ وَالسَّاعَةُ اَدْهٰى وَاَمَرُّ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 46);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 46;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bahkan hari Kiamat itulah hari yang dijanjikan kepada mereka dan hari Kiamat itu lebih dahsyat dan lebih pahit. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Peperangan tersebut adalah azab yang akan mereka rasakan di dunia, berupa kekalahan, dibunuh atau ditawan tetapi mereka masih akan menerima azab lain yang lebih dahsyat, yaitu azab neraka di akhirat. Azab akhirat itu lebih hebat dan berlangsung kekal dan kuat selama-lamanya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 47 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 47, 'اِنَّ الْمُجْرِمِيْنَ فِيْ ضَلٰلٍ وَّسُعُرٍۘ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 47);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 47;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, orang-orang yang berdosa berada dalam kesesatan (di dunia) dan akan berada dalam neraka (di akhirat). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menyatakan, bahwa sesungguhnya orang-orang yang mempersekutukan Allah dan mendustakan rasul-rasul-Nya adalah orang-orang sesat dan menyimpang dari jalan yang benar di dunia. Di akhirat nanti mereka akan ditimpa azab yang pedih akibat kesesatannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 48 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 48, 'يَوْمَ يُسْحَبُوْنَ فِى النَّارِ عَلٰى وُجُوْهِهِمْۗ ذُوْقُوْا مَسَّ سَقَرَ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 48);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 48;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Pada hari mereka diseret ke neraka pada wajahnya. (Dikatakan kepada mereka), “Rasakanlah sentuhan api neraka.”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Orang-orang yang durhaka akan digiring ke dalam neraka dengan terseret-seret dan terbentur-bentur mukanya ke tanah karena itu mereka sangat menderita. Penderitaan mereka di dalam neraka lebih hebat lagi. Neraka akan melelehkan kulit dan daging mereka'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 49 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 49, 'اِنَّا كُلَّ شَيْءٍ خَلَقْنٰهُ بِقَدَرٍ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 49);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 49;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, Kami menciptakan segala sesuatu menurut ukuran. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Seluruh makhluk diciptakan-Nya sesuai ketentuan dan hukum-hukum yang telah ditetapkan-Nya. Karena itu bila seseorang dihukum karena ketetapan dan hukum-hukumnya itu. Dan segala sesuatu akan terjadi sesuai ketetapan-Nya. Dalam ayat lain Allah juga berfirman mengenai ketetapan atau takdir yaitu: \n\nDan Dia menciptakan segala sesuatu, lalu menetapkan ukuranukurannya dengan tepat. (al-Furqan/25: 2) \n\nTetapi manusia wajib berusaha, ketentuan-Nya diserahkan kepada Allah sesuai firman Allah: \n\nDan bahwa manusia hanya memperoleh apa yang telah diusahakannya dan sesungguhnya usahanya itu kelak akan diperlihatkan (kepadanya). (an-Najm/53: 39-40) \n\nDalam hadis sahih yang diriwayatkan Ahmad dan Muslim dari Abu Hurairah: Rasulullah saw bersabda, "Minta tolonglah kepada Allah, dan jangan bersikap lemah. Bila sesuatu menimpamu, maka katakanlah, Allah telah menetapkannya. Apa yang Dia kehendaki, Dia kerjakan, dan jangan kamu berkata: seandainya aku berbuat begini maka akan begitu. Sesungguhnya kata "seandainya" membuka (kemungkinan pada) perbuatan setan. Sesuai dengan hadis Rasulullah saw: Rasullah saw bersabda: segala sesuatu ditetapkan ukurannya bahkan kelemahan dan kecerdasan. (Riwayat Imam Ahmad dan Muslim dari Ibnu ''Umar) Allah swt berfirman: \n\nBaginya (manusia) ada malaikat-malaikat yang selalu menjaganya bergiliran, dari depan dan belakangnya. Mereka menjaganya atas perintah Allah. Sesungguhnya Allah tidak akan mengubah keadaan suatu kaum sebelum mereka mengubah keadaan diri mereka sendiri. Dan apabila Allah menghendaki keburukan terhadap suatu kaum, maka tak ada yang dapat menolaknya dan tidak ada pelindung bagi mereka selain Dia. (ar-Ra''d/13: 11)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 50 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 50, 'وَمَآ اَمْرُنَآ اِلَّا وَاحِدَةٌ كَلَمْحٍ ۢبِالْبَصَرِ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 50);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 50;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan perintah Kami hanyalah (dengan) satu perkataan seperti kejapan mata. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sesungguhnya perintah Allah hanya disampaikan satu kali dan perintah itu pasti terjadi dengan cepat, lebih cepat dari kedipan mata. Bila Allah swt menghendaki terjadinya sesuatu maka Ia hanya mengatakan "Jadilah" yang dikehendaki-Nya itu segera terwujud. Begitu pulalah mengenai hukuman terhadap orang kafir, hukuman pasti terlaksana di akhirat. ('
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 51 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 51, 'وَلَقَدْ اَهْلَكْنَآ اَشْيَاعَكُمْ فَهَلْ مِنْ مُّدَّكِرٍ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 51);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 51;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sungguh, telah Kami binasakan orang yang serupa dengan kamu (kekafirannya). Maka adakah orang yang mau mengambil pelajaran?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa Allah membinasakan orangorang yang sama dengan mereka, yaitu umat-umat yang mendustakan para nabi pada zaman lampau, mereka telah hancur karena pembangkangannya. Peristiwa-peristiwa itu hendaknya menjadi pelajaran bagi kaum kafir Mekah dan bagi siapa saja sesudah mereka beriman. Allah berfirman dalam ayat lain mengenai hukuman yang dijatuhkan kepada satu generasi, sama dengan hukuman yang dijatuhkan pada generasi sebelumnya. Dan diberi penghalang antara mereka dengan apa yang mereka inginkan sebagaimana yang dilakukan terhadap orang-orang yang sepaham dengan mereka yang terdahulu. Sesungguhnya mereka dahulu (di dunia) dalam keraguan yang mendalam. (Saba''/34: 54)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 52 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 52, 'وَكُلُّ شَيْءٍ فَعَلُوْهُ فِى الزُّبُرِ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 52);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 52;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan segala sesuatu yang telah mereka perbuat tercatat dalam buku-buku catatan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Semua perbuatan manusia terhimpun dalam buku catatan masing-masing. Hal itu karena setiap perbuatan manusia kecil ataupun besar, baik atau buruk dicatat oleh malaikat di dalam buku catatan itu, Malaikat Kiram atau sebut saja Raqib, mencatat perbuatan yang baik dan Malaikat Katibin atau ''Atid mencatat perbuatan yang tidak baik. Dalam ayat lain Allah berfirman: \n\nTidak ada suatu kata yang diucapkannya melainkan ada di sisinya malaikat pengawas yang selalu siap (mencatat). (Qaf/50: 18) \n\nOleh karena semua aktivitas manusia, baik perbuatan maupun ucapan, baik yang baik maupun yang buruk, baik besar maupun kecil tercatat di dalam buku catatan masing-masing, maka sangat mudah bagi Allah menjatuhkan hukuman kepada yang berdosa dan memberikan pahala kepada yang berbuat baik.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 53 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 53, 'وَكُلُّ صَغِيْرٍ وَّكَبِيْرٍ مُّسْتَطَرٌ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 53);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 53;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan segala (sesuatu) yang kecil maupun yang besar (semuanya) tertulis. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Semua perbuatan manusia terhimpun dalam buku catatan masing-masing. Hal itu karena setiap perbuatan manusia kecil ataupun besar, baik atau buruk dicatat oleh malaikat di dalam buku catatan itu, Malaikat Kiram atau sebut saja Raqib, mencatat perbuatan yang baik dan Malaikat Katibin atau ''Atid mencatat perbuatan yang tidak baik. Dalam ayat lain Allah berfirman: \n\nTidak ada suatu kata yang diucapkannya melainkan ada di sisinya malaikat pengawas yang selalu siap (mencatat). (Qaf/50: 18) \n\nOleh karena semua aktivitas manusia, baik perbuatan maupun ucapan, baik yang baik maupun yang buruk, baik besar maupun kecil tercatat di dalam buku catatan masing-masing, maka sangat mudah bagi Allah menjatuhkan hukuman kepada yang berdosa dan memberikan pahala kepada yang berbuat baik.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 54 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 54, 'اِنَّ الْمُتَّقِيْنَ فِيْ جَنّٰتٍ وَّنَهَرٍۙ  ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 54);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 54;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, orang-orang yang bertakwa berada di taman-taman dan sungai-sungai,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Bagi mereka yang bertakwa, Allah memberikan surgasurga sesuai tingkat ketakwaan mereka. Sebagaimana diketahui surga itu bertingkat-tingkat. Di dalam surga-surga mengalir sungaisungai yang menunjukkan bahwa surga adalah tempat yang menyejukkan, indah dan memberikan hasil yang banyak. Mereka menempati tempat yang benar yang tidak ada cacat atau kekurangannya dan mereka berada di bawah naungan Maharaja yang Mahakuasa, yang akan memberi mereka apa yang Ia kehendaki tanpa halangan siapa pun.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 55 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 54, 55, 'فِيْ مَقْعَدِ صِدْقٍ عِنْدَ مَلِيْكٍ مُّقْتَدِرٍ ࣖ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 54 AND ayah_number = 55);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 54 AND ayah_number = 55;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'di tempat yang disenangi di sisi Tuhan Yang Mahakuasa.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Bagi mereka yang bertakwa, Allah memberikan surgasurga sesuai tingkat ketakwaan mereka. Sebagaimana diketahui surga itu bertingkat-tingkat. Di dalam surga-surga mengalir sungaisungai yang menunjukkan bahwa surga adalah tempat yang menyejukkan, indah dan memberikan hasil yang banyak. Mereka menempati tempat yang benar yang tidak ada cacat atau kekurangannya dan mereka berada di bawah naungan Maharaja yang Mahakuasa, yang akan memberi mereka apa yang Ia kehendaki tanpa halangan siapa pun.'
    )
    ON CONFLICT DO NOTHING;
END $$;

