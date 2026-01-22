-- Seed Surah 89 (Al-Fajr) with 30 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/89.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (89, 'الفجر', 'Al-Fajr', 30, 'Makkiyah', 'Fajar')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 1, 'وَالْفَجْرِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demi fajar,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bersumpah dengan fajar. Fajar yang dimaksud adalah fajar yaumun-nahr (hari penyembelihan kurban), yaitu tanggal 10 Zulhijah, karena ayat berikutnya membicarakan "malam yang sepuluh", yaitu sepuluh hari pertama bulan itu. Akan tetapi, ada yang berpendapat bahwa fajar yang dimaksud adalah fajar setiap hari yang mulai menyingsing yang menandakan malam sudah berakhir dan siang sudah dimulai. Ada pula yang berpendapat bahwa fajar itu adalah fajar 1 Muharram sebagai awal tahun, atau fajar 1 Zulhijah sebagai bulan pelaksanaan ibadah haji.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 2, 'وَلَيَالٍ عَشْرٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'demi malam yang sepuluh,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Berikutnya Allah bersumpah dengan "malam yang sepuluh". Yang dimaksud adalah sepuluh hari pertama bulan Zulhijah, yang merupakan hari-hari yang sangat dimuliakan beramal pada hari-hari tersebut, sebagaimana diinformasikan hadis berikut:\n\nTidak ada hari apa pun berbuat baik lebih dicintai Allah padanya daripada hari-hari ini. (Riwayat al-Bukhari dari Ibnu ''Abbas)\n\nAkan tetapi, ada yang berpendapat bahwa yang dimaksud adalah sepuluh hari pertama bulan Muharram, atau sepuluh hari pertama bulan Ramadan, atau sepuluh hari pertama setiap bulan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 3, 'وَّالشَّفْعِ وَالْوَتْرِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'demi yang genap dan yang ganjil,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Berikutnya lagi Allah bersumpah dengan "yang genap dan yang ganjil". "Yang genap adalah yaumun-nahr di atas, yaitu tanggal 10 Zulhijah, dan "yang ganjil" adalah hari ''Arafah, yaitu tanggal 9 Zulhijah. Itu adalah hari-hari yang dimuliakan juga. Tanggal 9 Zulhijah adalah hari wukuf di ''Arafah, yaitu hari dimulainya ibadah haji, dan tanggal 10 Zulhijah adalah hari mulai penyembelihan hewan kurban.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 4, 'وَالَّيْلِ اِذَا يَسْرِۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'demi malam apabila berlalu.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah bersumpah dengan "malam ketika berlalu". Malam yang dimaksud adalah malam ketika jamaah haji sudah berlalu dari ''Arafah dan singgah di Muzdalifah dalam perjalanan menuju Mina dalam pelaksanaan ibadah haji.\n\nDemikianlah Allah bersumpah dengan hari-hari dalam pelaksanaan ibadah haji untuk menunjukkan bahwa ibadah haji itu besar maknanya dalam pandangan Allah. Hal itu karena ibadah haji itu mengingatkan manusia tentang adanya kematian. Dengan ingat kematian, manusia diharapkan beriman dan berbuat baik.\n\nAyat ini juga bisa ditafsirkan bahwa Allah bersumpah dengan hari-hari yang terus silih berganti untuk menunjukkan bahwa Allah Mahakuasa memelihara dan mengelola alam. Bila sudah tiba waktunya, yaitu hari Kiamat, Ia Mahakuasa pula menghancurkannya dan menghidupkannya kembali'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 5, 'هَلْ فِيْ ذٰلِكَ قَسَمٌ لِّذِيْ حِجْرٍۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Adakah pada yang demikian itu terdapat sumpah (yang dapat diterima) bagi orang-orang yang berakal?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pesan yang ingin disampaikan Allah dengan bersumpah di atas adalah bahwa orang yang mau menggunakan akalnya harusnya mengerti bahwa Allah Mahakuasa mengadakan, memelihara, menghancurkan, dan menghidupkan kembali alam ini. Oleh karena itu, mereka seharusnya beriman dan berbuat baik. \n\nAyat ini merupakan peringatan bagi kaum kafir Mekah pada saat ayat ini turun, agar beriman kepada Allah dan hari kemudian, berbuat baik, dan meninggalkan perbuatan jahat mereka. Juga menjadi peringatan bagi seluruh umat manusia'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 6, 'اَلَمْ تَرَ كَيْفَ فَعَلَ رَبُّكَ بِعَادٍۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Tidakkah engkau (Muhammad) memperhatikan bagaimana Tuhanmu berbuat terhadap (kaum) ‘Ad?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bertanya kepada Nabi Muhammad, yang maksudnya untuk memberitahukan kepada beliau atau siapa saja untuk direnungkan, tentang kaum ''Ad. Kaum ini adalah umat Nabi Hud yang mendiami daerah yang disebut Ahqaf di daerah Hadramaut, Yaman. ''Ad adalah nama nenek moyang mereka, ''Ad bin Iram bin Sam bin Nuh. Mereka diberi nama dengan nama nenek moyang mereka itu. Mereka terkenal sebagai bangsa yang kuat dan memiliki tubuh yang tinggi, besar, dan perkasa. Bukti keperkasaan mereka adalah bahwa mereka telah mampu membangun kota yang disebut Iram dengan gedung-gedung yang kokoh, tinggi, dan megah untuk ukuran pada masa itu. Mereka juga menguasai bangsa-bangsa sekitarnya. Walaupun demikian perkasa dan memiliki peradaban yang tinggi, Allah tetap mampu menghancurkan mereka sehingga hanya tinggal nama. Semua itu akibat pembangkangan mereka kepada Allah dan kesewenang-wenangan mereka kepada manusia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 7, 'اِرَمَ ذَاتِ الْعِمَادِۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(yaitu) penduduk Iram (ibukota kaum ‘Ad) yang mempunyai bangunan-bangunan yang tinggi,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bertanya kepada Nabi Muhammad, yang maksudnya untuk memberitahukan kepada beliau atau siapa saja untuk direnungkan, tentang kaum ''Ad. Kaum ini adalah umat Nabi Hud yang mendiami daerah yang disebut Ahqaf di daerah Hadramaut, Yaman. ''Ad adalah nama nenek moyang mereka, ''Ad bin Iram bin Sam bin Nuh. Mereka diberi nama dengan nama nenek moyang mereka itu. Mereka terkenal sebagai bangsa yang kuat dan memiliki tubuh yang tinggi, besar, dan perkasa. Bukti keperkasaan mereka adalah bahwa mereka telah mampu membangun kota yang disebut Iram dengan gedung-gedung yang kokoh, tinggi, dan megah untuk ukuran pada masa itu. Mereka juga menguasai bangsa-bangsa sekitarnya. Walaupun demikian perkasa dan memiliki peradaban yang tinggi, Allah tetap mampu menghancurkan mereka sehingga hanya tinggal nama. Semua itu akibat pembangkangan mereka kepada Allah dan kesewenang-wenangan mereka kepada manusia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 8, 'الَّتِيْ لَمْ يُخْلَقْ مِثْلُهَا فِى الْبِلَادِۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang belum pernah dibangun (suatu kota) seperti itu di negeri-negeri lain,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bertanya kepada Nabi Muhammad, yang maksudnya untuk memberitahukan kepada beliau atau siapa saja untuk direnungkan, tentang kaum ''Ad. Kaum ini adalah umat Nabi Hud yang mendiami daerah yang disebut Ahqaf di daerah Hadramaut, Yaman. ''Ad adalah nama nenek moyang mereka, ''Ad bin Iram bin Sam bin Nuh. Mereka diberi nama dengan nama nenek moyang mereka itu. Mereka terkenal sebagai bangsa yang kuat dan memiliki tubuh yang tinggi, besar, dan perkasa. Bukti keperkasaan mereka adalah bahwa mereka telah mampu membangun kota yang disebut Iram dengan gedung-gedung yang kokoh, tinggi, dan megah untuk ukuran pada masa itu. Mereka juga menguasai bangsa-bangsa sekitarnya. Walaupun demikian perkasa dan memiliki peradaban yang tinggi, Allah tetap mampu menghancurkan mereka sehingga hanya tinggal nama. Semua itu akibat pembangkangan mereka kepada Allah dan kesewenang-wenangan mereka kepada manusia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 9, 'وَثَمُوْدَ الَّذِيْنَ جَابُوا الصَّخْرَ بِالْوَادِۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan (terhadap) kaum samud yang memotong batu-batu besar di lembah,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Begitu juga Allah telah menghancurleburkan kaum Samud, umat Nabi Saleh. Bangsa ini juga telah memiliki peradaban yang tinggi, yang ditunjukkan oleh kemampuan mereka membangun gedung-gedung megah di tempat-tempat datar dan memotong, memahat batu-batu di pegunungan untuk dibuat tempat-tempat peristirahatan, serta membuat relief-relief dan perhiasan-perhiasan dari batu atau marmer. Keahlian mereka itu diceritakan dalam ayat lain:\n\nDan kamu pahat dengan terampil sebagian gunung-gunung untuk dijadikan rumah-rumah. (asy-Syu''ara''/26: 149)\n\nWalaupun mereka sudah begitu maju, kuat, dan memiliki peradaban yang tinggi, Allah tetap kuasa menghancurkan mereka karena pembangkangan mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 10, 'وَفِرْعَوْنَ ذِى الْاَوْتَادِۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan (terhadap) Fir‘aun yang mempunyai pasak-pasak (bangunan yang besar),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah juga telah menghancurkan Fir''aun. Ia terkenal sebagai raja yang zalim bahkan memandang dirinya tuhan bangsa Mesir. Bangsa ini di bawah Fir''aun juga telah mencapai peradaban yang tinggi, di antara buktinya adalah kemampuan mereka membangun piramid-piramid yang merupakan salah satu keajaiban dunia sampai sekarang. Mereka juga telah memiliki angkatan bersenjata yang besar. Akan tetapi, semuanya itu juga sudah dihancurleburkan Allah sehingga sekarang mereka hanya tinggal nama untuk dikenang.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 11, 'الَّذِيْنَ طَغَوْا فِى الْبِلَادِۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang berbuat sewenang-wenang dalam negeri,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Semua bangsa yang telah disebutkan di atas, yaitu kaum ''Ad, Samud, dan Fir''aun telah melakukan kesewenang-wenangan di bumi ini, yaitu mempertuhankan manusia atau benda dan memperkosa hak-hak asasi manusia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 12, 'فَاَكْثَرُوْا فِيْهَا الْفَسَادَۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'lalu mereka banyak berbuat kerusakan dalam negeri itu,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Di samping itu, mereka telah melakukan kerusakan di muka bumi, seperti menindas kaum yang lemah bahkan membunuh siapa saja yang mereka kehendaki.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 13, 'فَصَبَّ عَلَيْهِمْ رَبُّكَ سَوْطَ عَذَابٍۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'karena itu Tuhanmu menimpakan cemeti azab kepada mereka,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Akhirnya Allah "menumpahkan kepada mereka cemeti azab", yang berarti bahwa azab itu dicurahkan seluruhnya kepada mereka sehebat-hebatnya, sehingga mereka hancur lebur tak bersisa dan yang tertinggal hanyalah nama untuk diingat orang. Yang menimpakan azab itu adalah "Tuhanmu" (ya, Muhammad!), yang berarti bahwa peristiwa-peristiwa itu hendaknya menjadi pelajaran bagi kaum kafir Mekah agar mereka tidak terus-menerus membangkang.\n\nBagaimana azab yang ditimpakan kepada bangsa-bangsa itu dinyatakan dalam ayat-ayat lain:\n\nMaka adapun kaum Samud, mereka telah dibinasakan dengan suara yang sangat keras, sedangkan kaum ''Ad, mereka telah dibinasakan dengan angin topan yang sangat dingin, Allah menimpakan angin itu kepada mereka selama tujuh malam delapan hari terus-menerus; maka kamu melihat kaum ''Ad pada waktu itu mati bergelimpangan seperti batang-batang pohon kurma yang telah kosong (lapuk). Maka adakah kamu melihat seorang pun yang masih tersisa di antara mereka? Kemudian datang Fir''aun dan orang-orang yang sebelumnya dan (penduduk) negeri-negeri yang dijungkirbalikkan karena kesalahan yang besar. Maka mereka mendurhakai utusan Tuhannya, Allah menyiksa mereka dengan siksaan yang sangat keras. (al-haqqah/69: 5-10)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 14, 'اِنَّ رَبَّكَ لَبِالْمِرْصَادِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sungguh, Tuhanmu benar-benar mengawasi.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menegaskan bahwa Ia sungguh amat kuat pengawasan-Nya terhadap makhluk-Nya. Tidak ada perbuatan sekecil apa pun yang tidak diketahui-Nya. Oleh karena itu, yang membangkang dan bergelimang dosa seharusnya sadar dan kemudian beriman dan tobat dari dosa-dosanya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 15, 'فَاَمَّا الْاِنْسَانُ اِذَا مَا ابْتَلٰىهُ رَبُّهٗ فَاَكْرَمَهٗ وَنَعَّمَهٗۙ فَيَقُوْلُ رَبِّيْٓ اَكْرَمَنِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka adapun manusia, apabila Tuhan mengujinya lalu memuliakannya dan memberinya kesenangan, maka dia berkata, “Tuhanku telah memuliakanku.”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menyatakan bahwa Allah menguji manusia dengan kemuliaan dan berbagai nikmat-Nya, seperti kekuasaan dan kekayaan. Orang yang kafir dan durhaka akan memandang hal itu sebagai tanda bahwa Allah menyayangi mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 16, 'وَاَمَّآ اِذَا مَا ابْتَلٰىهُ فَقَدَرَ عَلَيْهِ رِزْقَهٗ ەۙ فَيَقُوْلُ رَبِّيْٓ اَهَانَنِۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Namun apabila Tuhan mengujinya lalu membatasi rezekinya, maka dia berkata, “Tuhanku telah menghinaku.”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sebaliknya, bila Allah menguji mereka dengan cara membatasi rezeki, mereka menyangka bahwa Allah telah membenci mereka. Pandangan itu tidak benar, karena Allah memberi siapa yang disukai-Nya atau tidak memberi siapa yang tidak disukai-Nya. Allah ingin menguji manusia, dan karena itu Ia menghendaki agar manusia itu selalu patuh kepada-Nya, baik dalam keadaan berkecukupan maupun kekurangan. Bila Allah memberi, maka manusia yang diberi harus bersyukur, dan bila Ia tidak memberi, manusia harus bersabar.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 17, 'كَلَّا بَلْ لَّا تُكْرِمُوْنَ الْيَتِيْمَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sekali-kali tidak! Bahkan kamu tidak memuliakan anak yatim,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Akan tetapi banyak manusia yang ingkar, mereka tidak mensyukuri nikmat yang diberikan kepadanya. Bersyukur adalah mengucapkan kata-kata syukur dan menggunakan nikmat itu sesuai dengan ketentuan Yang Memberinya. Salah satu ketentuan-Nya adalah bahwa orang yang diberi kelebihan rezeki harus memperhatikan mereka yang berkekurangan. Di antara mereka adalah anak-anak yatim. Anak yatim perlu diasuh sampai mereka dewasa. Manusia yang ingkar dan tak mau bersyukur tidak mau memperhatikan pengasuhan anak-anak yatim itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 18, 'وَلَا تَحٰۤضُّوْنَ عَلٰى طَعَامِ الْمِسْكِيْنِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan kamu tidak saling mengajak memberi makan orang miskin,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Di samping itu, mereka tidak menaruh kasihan pada penderitaan orang miskin. Jangankan untuk melepaskan mereka dari kemiskinan, membantu mencukupkan kebutuhan pokok mereka saja mereka tidak ada perhatian.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 19, 'وَتَأْكُلُوْنَ التُّرَاثَ اَكْلًا لَّمًّاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sedangkan kamu memakan harta warisan dengan cara mencampurbaurkan (yang halal dan yang haram),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Tambahan lagi manusia yang ingkar dan durhaka itu sangat tamak. Mereka tega merampas harta warisan yang menjadi hak anak yatim secara akal-akalan, misalnya mencampurkannya ke dalam kekayaan mereka lalu menyatakan bahwa yang mereka makan adalah harta mereka sendiri.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 20 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 20, 'وَّتُحِبُّوْنَ الْمَالَ حُبًّا جَمًّاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 20);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 20;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan kamu mencintai harta dengan kecintaan yang berlebihan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Orang yang durhaka itu terus mencari dan mengumpulkan kekayaan tanpa mengenal rasa lelah dan tidak peduli halal atau haram. Di samping itu, mereka sangat pelit, tidak mau mengeluarkan kewajiban berkenaan harta, yaitu membayar zakat dan membantu orang yang berkekurangan.\n\nAllah tidak mungkin sayang kepada orang kaya raya yang memperoleh kekayaan itu dengan cara yang tidak benar. Juga kepada orang yang tidak mau membantu orang lain. Mereka jangan mengira bahwa mereka memperoleh kekayaan itu sebagai tanda bahwa Allah menyayangi mereka. Sebaliknya, Allah sesungguhnya membenci mereka. Tidak mustahil mereka akan dijatuhi azab seperti yang telah ditimpakan-Nya kepada umat-umat terdahulu itu. Di akhirat nanti, Allah akan memasukkan mereka ke dalam neraka. Hakikat ini hendaknya disadari oleh kaum kafir Mekah yang masih juga membangkang. Hal itu hendaknya dijadikan pelajaran oleh seluruh umat manusia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 21 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 21, 'كَلَّآ اِذَا دُكَّتِ الْاَرْضُ دَكًّا دَكًّاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 21);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 21;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sekali-kali tidak! Apabila bumi diguncangkan berturut-turut (berbenturan),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah memberitahukan bahwa orang-orang kafir itu nanti di akhirat akan menyesal. Allah memberitahukan bahwa dunia ini akan hancur karena planet-planet ini akan bertubrukan satu sama lain dengan dahsyatnya dan semua makhluk akan mati. Setelah itu Allah menghidupkan semua makhluk itu kembali dan menghadapkan mereka di Padang Mahsyar. Kemudian Allah dan para malaikat yang membuat formasi-formasi khusus memeriksa setiap amal manusia. Waktu itulah neraka Jahanam dihadapkan kepada orang-orang yang durhaka ketika di dunia. Waktu itu mereka yang durhaka sadar atas kedurhakaannya. Akan tetapi, sadar pada waktu itu tidak ada gunanya, karena "nasi sudah jadi bubur", dunia tempat beramal sudah berakhir, dan yang ada hanyalah tempat melihat hasil amal di dunia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 22 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 22, 'وَّجَآءَ رَبُّكَ وَالْمَلَكُ صَفًّا صَفًّاۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 22);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 22;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan datanglah Tuhanmu; dan malaikat berbaris-baris,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah memberitahukan bahwa orang-orang kafir itu nanti di akhirat akan menyesal. Allah memberitahukan bahwa dunia ini akan hancur karena planet-planet ini akan bertubrukan satu sama lain dengan dahsyatnya dan semua makhluk akan mati. Setelah itu Allah menghidupkan semua makhluk itu kembali dan menghadapkan mereka di Padang Mahsyar. Kemudian Allah dan para malaikat yang membuat formasi-formasi khusus memeriksa setiap amal manusia. Waktu itulah neraka Jahanam dihadapkan kepada orang-orang yang durhaka ketika di dunia. Waktu itu mereka yang durhaka sadar atas kedurhakaannya. Akan tetapi, sadar pada waktu itu tidak ada gunanya, karena "nasi sudah jadi bubur", dunia tempat beramal sudah berakhir, dan yang ada hanyalah tempat melihat hasil amal di dunia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 23 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 23, 'وَجِايْۤءَ يَوْمَىِٕذٍۢ بِجَهَنَّمَۙ يَوْمَىِٕذٍ يَّتَذَكَّرُ الْاِنْسَانُ وَاَنّٰى لَهُ الذِّكْرٰىۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 23);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 23;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan pada hari itu diperlihatkan neraka Jahanam; pada hari itu sadarlah manusia, tetapi tidak berguna lagi baginya kesadaran itu.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah memberitahukan bahwa orang-orang kafir itu nanti di akhirat akan menyesal. Allah memberitahukan bahwa dunia ini akan hancur karena planet-planet ini akan bertubrukan satu sama lain dengan dahsyatnya dan semua makhluk akan mati. Setelah itu Allah menghidupkan semua makhluk itu kembali dan menghadapkan mereka di Padang Mahsyar. Kemudian Allah dan para malaikat yang membuat formasi-formasi khusus memeriksa setiap amal manusia. Waktu itulah neraka Jahanam dihadapkan kepada orang-orang yang durhaka ketika di dunia. Waktu itu mereka yang durhaka sadar atas kedurhakaannya. Akan tetapi, sadar pada waktu itu tidak ada gunanya, karena "nasi sudah jadi bubur", dunia tempat beramal sudah berakhir, dan yang ada hanyalah tempat melihat hasil amal di dunia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 24 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 24, 'يَقُوْلُ يٰلَيْتَنِيْ قَدَّمْتُ لِحَيَاتِيْۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 24);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 24;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dia berkata, “Alangkah baiknya sekiranya dahulu aku mengerjakan (kebajikan) untuk hidupku ini.”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ketika itu orang-orang yang durhaka menyesali diri mereka mengapa dulu di dunia tidak melakukan sesuatu yang berguna untuk kehidupannya di akhirat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 25 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 25, 'فَيَوْمَىِٕذٍ لَّا يُعَذِّبُ عَذَابَهٗٓ اَحَدٌ ۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 25);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 25;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka pada hari itu tidak ada seorang pun yang mengazab seperti azab-Nya (yang adil),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Di akhirat, yang ada hanya azab bagi orang yang durhaka. Azab itu tiada tara sehingga tidak ada bandingannya. Azab itu dijatuhkan sesuai dengan dosa-dosa mereka pada waktu di dunia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 26 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 26, 'وَّلَا يُوْثِقُ وَثَاقَهٗٓ اَحَدٌ ۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 26);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 26;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan tidak ada seorang pun yang mengikat seperti ikatan-Nya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada waktu itu tidak ada yang lebih dipercaya dalam melaksanakan tugasnya selain Malaikat Zabaniyah. Malaikat itu akan melaksanakan tugasnya persis sebagaimana yang diperintahkan Allah, yaitu bahwa orang-orang yang durhaka itu akan diazab di dalam neraka Jahanam sesuai dengan dosa-dosa mereka. Dengan demikian, terbuktilah bahwa kelimpahan nikmat yang mereka terima pada waktu di dunia itu bukanlah tanda bahwa Allah cinta kepada mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 27 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 27, 'يٰٓاَيَّتُهَا النَّفْسُ الْمُطْمَىِٕنَّةُۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 27);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 27;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Wahai jiwa yang tenang!', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah memanggil jiwa yang tenang dan damai ketika diwafatkan, yaitu jiwa yang suci karena iman dan amal saleh yang dikerjakannya, sehingga memperoleh apa yang dijanjikan Allah kepadanya. Jiwa itu diminta Allah untuk pulang memenuhi panggilan-Nya dengan menghadap kepada-Nya kembali dengan perasaan puas dan senang karena telah memenuhi perintah-perintah-Nya waktu hidup di dunia. Allah juga puas dan senang kepadanya karena sudah menjalankan perintah-perintah-Nya. Setelah datang kepada-Nya, jiwa itu dipersilakan Allah masuk ke dalam kelompok hamba-hamba-Nya, yaitu ke dalam surga-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 28 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 28, 'ارْجِعِيْٓ اِلٰى رَبِّكِ رَاضِيَةً مَّرْضِيَّةً ۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 28);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 28;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kembalilah kepada Tuhanmu dengan hati yang rida dan diridai-Nya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah memanggil jiwa yang tenang dan damai ketika diwafatkan, yaitu jiwa yang suci karena iman dan amal saleh yang dikerjakannya, sehingga memperoleh apa yang dijanjikan Allah kepadanya. Jiwa itu diminta Allah untuk pulang memenuhi panggilan-Nya dengan menghadap kepada-Nya kembali dengan perasaan puas dan senang karena telah memenuhi perintah-perintah-Nya waktu hidup di dunia. Allah juga puas dan senang kepadanya karena sudah menjalankan perintah-perintah-Nya. Setelah datang kepada-Nya, jiwa itu dipersilakan Allah masuk ke dalam kelompok hamba-hamba-Nya, yaitu ke dalam surga-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 29 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 29, 'فَادْخُلِيْ فِيْ عِبٰدِيْۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 29);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 29;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka masuklah ke dalam golongan hamba-hamba-Ku,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah memanggil jiwa yang tenang dan damai ketika diwafatkan, yaitu jiwa yang suci karena iman dan amal saleh yang dikerjakannya, sehingga memperoleh apa yang dijanjikan Allah kepadanya. Jiwa itu diminta Allah untuk pulang memenuhi panggilan-Nya dengan menghadap kepada-Nya kembali dengan perasaan puas dan senang karena telah memenuhi perintah-perintah-Nya waktu hidup di dunia. Allah juga puas dan senang kepadanya karena sudah menjalankan perintah-perintah-Nya. Setelah datang kepada-Nya, jiwa itu dipersilakan Allah masuk ke dalam kelompok hamba-hamba-Nya, yaitu ke dalam surga-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 30 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 89, 30, 'وَادْخُلِيْ جَنَّتِيْ ࣖࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 89 AND ayah_number = 30);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 89 AND ayah_number = 30;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan masuklah ke dalam surga-Ku.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah memanggil jiwa yang tenang dan damai ketika diwafatkan, yaitu jiwa yang suci karena iman dan amal saleh yang dikerjakannya, sehingga memperoleh apa yang dijanjikan Allah kepadanya. Jiwa itu diminta Allah untuk pulang memenuhi panggilan-Nya dengan menghadap kepada-Nya kembali dengan perasaan puas dan senang karena telah memenuhi perintah-perintah-Nya waktu hidup di dunia. Allah juga puas dan senang kepadanya karena sudah menjalankan perintah-perintah-Nya. Setelah datang kepada-Nya, jiwa itu dipersilakan Allah masuk ke dalam kelompok hamba-hamba-Nya, yaitu ke dalam surga-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

