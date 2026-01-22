-- Seed Surah 73 (Al-Muzzammil) with 20 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/73.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (73, 'المزّمّل', 'Al-Muzzammil', 20, 'Makkiyah', 'Orang Yang Berselimut')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 1, 'يٰٓاَيُّهَا الْمُزَّمِّلُۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Wahai orang yang berselimut (Muhammad)!', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah memerintahkan Nabi Muhammad yang sedang berselimut supaya mendirikan salat pada sebagian malam. Seruan Allah kepada Nabi Muhammad ini didahului dengan kata-kata "Hai orang yang berselimut'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 2, 'قُمِ الَّيْلَ اِلَّا قَلِيْلًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bangunlah (untuk salat) pada malam hari, kecuali sebagian kecil,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah memerintahkan Nabi Muhammad yang sedang berselimut supaya mendirikan salat pada sebagian malam. Seruan Allah kepada Nabi Muhammad ini didahului dengan kata-kata "Hai orang yang berselimut'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 3, 'نِّصْفَهٗٓ اَوِ انْقُصْ مِنْهُ قَلِيْلًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(yaitu) separuhnya atau kurang sedikit dari itu,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menerangkan maksud perkataan sebagian yang terdapat dalam ayat sebelumnya, yaitu separuh atau lebih. Allah menyerahkan kepada Nabi Muhammad untuk memilih waktu melakukan salat malam. Ia dapat memilih antara sepertiga, seperdua, atau dua pertiga malam. Allah memberi kebebasan kepada Nabi Muhammad untuk memilih waktu-waktu tersebut. \n\nSepertiga malam menurut waktu Indonesia ialah kira-kira antara jam 10 dan jam 11 malam, seperdua malam ialah waktu antara jam 12 dan 1 malam dan dua pertiga malam ialah waktu antara jam 2 dan 3 sampai sebelum fajar.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 4, 'اَوْ زِدْ عَلَيْهِ وَرَتِّلِ الْقُرْاٰنَ تَرْتِيْلًاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'atau lebih dari (seperdua) itu, dan bacalah Al-Qur''an itu dengan perlahan-lahan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah memerintahkan Nabi Muhammad supaya membaca Al-Qur''an secara seksama (tartil). Maksudnya ialah membaca Al-Qur''an dengan pelan-pelan, bacaan yang fasih, dan merasakan arti dan maksud dari ayat-ayat yang dibaca itu, sehingga berkesan di hati. Perintah ini dilaksanakan oleh Nabi saw. ''Aisyah meriwayatkan bahwa Rasulullah saw membaca Al-Qur''an dengan tartil, sehingga surah yang dibacanya menjadi lebih lama dari ia membaca biasa.\n\nDalam hubungan ayat ini, al-Bukhari dan Muslim meriwayatkan dari ''Abdullah bin Mugaffal, bahwa ia berkata:\n\nAku melihat Rasulullah saw pada hari penaklukan kota Mekah, sedang menunggang unta beliau membaca Surah al-Fath di mana dalam bacaan itu beliau melakukan tarji'' (bacaan lambat dengan mengulang-ulang). (Riwayat al-Bukhari dan Muslim dari ''Abdullah bin Mugaffal)\n\nPengarang buku Fathul Bayan berkata, "Yang dimaksud dengan tartil ialah kehadiran hati ketika membaca, bukan asal mengeluarkan bunyi dari tenggorokan dengan memoncong-moncongkan muka dan mulut dengan alunan lagu, sebagaimana kebiasaan yang dilakukan pembaca-pembaca Al-Qur''an zaman sekarang. Membaca yang seperti itu adalah suatu bacaan yang dilakukan orang-orang yang tidak mengerti agama."\n\nMembaca Al-Qur''an secara tartil mengandung hikmah, yaitu terbukanya kesempatan untuk memperhatikan isi ayat-ayat yang dibaca dan di waktu menyebut nama Allah, si pembaca akan merasakan kemahaagungan-Nya. Ketika tiba pada ayat yang mengandung janji, pembaca akan timbul harapan-harapan, demikian juga ketika membaca ayat ancaman, pembaca akan merasa cemas.\n\nSebaliknya membaca Al-Qur''an secara tergesa-gesa atau dengan lagu yang baik, tetapi tidak memahami artinya adalah suatu indikasi bahwa si pembaca tidak memperhatikan isi yang terkandung dalam ayat yang dibacanya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 5, 'اِنَّا سَنُلْقِيْ عَلَيْكَ قَوْلًا ثَقِيْلًا', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sesungguhnya Kami akan menurunkan perkataan yang berat kepadamu.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa Allah akan menurunkan Al-Qur''an kepada Muhammad saw yang di dalamnya terdapat perintah dan larangan-Nya. Hal ini merupakan beban yang berat, baik terhadap Muhammad saw maupun pengikutnya. Tidak ada yang mau memikul beban yang berat itu kecuali orang yang mendapatkan petunjuk dari Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 6, 'اِنَّ نَاشِئَةَ الَّيْلِ هِيَ اَشَدُّ وَطْـًٔا وَّاَقْوَمُ قِيْلًاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, bangun malam itu lebih kuat (mengisi jiwa); dan (bacaan pada waktu itu) lebih berkesan. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menegaskan bahwa ibadah yang dilakukan pada malam hari terasa lebih berkesan dan mantap, baik di hati maupun di lidah, sebab bacaan ayat-ayat itu lebih jelas dibandingkan bacaan pada siang hari di saat manusia sedang disibukkan oleh urusan-urusan kehidupan duniawi.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 7, 'اِنَّ لَكَ فِى النَّهَارِ سَبْحًا طَوِيْلًاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sesungguhnya pada siang hari engkau sangat sibuk dengan urusan-urusan yang panjang.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini memerintahkan supaya Nabi Muhammad dapat membedakan antara suasana melakukan ibadah pada siang hari dan malamnya, saat ketenangan jiwa bermunajat kepada Tuhan, menghendaki kebebasan pikiran. Kesibukan yang terdapat pada siang hari membuat perhatian beliau tidak terfokus kepada kesibukan menjalankan risalah Tuhan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 8, 'وَاذْكُرِ اسْمَ رَبِّكَ وَتَبَتَّلْ اِلَيْهِ تَبْتِيْلًاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan sebutlah nama Tuhanmu, dan beribadahlah kepada-Nya dengan sepenuh hati.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah memerintahkan Nabi Muhammad supaya senantiasa mengingat-Nya, baik siang maupun malam, dengan bertasbih, bertahmid, bertakbir, salat, dan membaca Al-Qur''an. Dengan demikian, ia dapat melenyapkan dari hatinya segala sesuatu yang melalaikan perintah-perintah Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 9, 'رَبُّ الْمَشْرِقِ وَالْمَغْرِبِ لَآ اِلٰهَ اِلَّا هُوَ فَاتَّخِذْهُ وَكِيْلًا', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Dialah) Tuhan timur dan barat, tidak ada tuhan selain Dia, maka jadikanlah Dia sebagai pelindung.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya dijelaskan bahwa Allah adalah pemilik timur dan barat. Tidak ada Tuhan selain Dia. Oleh karena itu, hendaklah Muhammad saw menyerahkan segala urusan kepada-Nya. Firman Allah:\n\nMaka sembahlah Dia dan bertawakallah kepada-Nya. (Hud/11: 123)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 10, 'وَاصْبِرْ عَلٰى مَا يَقُوْلُوْنَ وَاهْجُرْهُمْ هَجْرًا جَمِيْلًا ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan bersabarlah (Muhammad) terhadap apa yang mereka katakan dan tinggalkanlah mereka dengan cara yang baik.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah memerintahkan kepada Nabi Muhammad supaya sabar dan menahan diri menghadapi orang-orang musyrik yang melontarkan kata-kata yang tidak senonoh terhadap dirinya dan Tuhannya, karena kesabaran membawa kepada tercapainya cita-cita. Allah juga memerintahkan supaya Muhammad saw memutuskan pergaulan dengan orang-orang yang seperti itu dengan bijaksana tanpa melontarkan cercaan terhadap mereka. Dalam ayat lain, Allah berfirman:\n\nApabila engkau (Muhammad) melihat orang-orang memperolok-olokkan ayat-ayat Kami, maka tinggalkanlah mereka hingga mereka beralih ke pembicaraan lain. (al-An''am/6: 68)\n\nDan firman-Nya:\n\nMaka tinggalkanlah (Muhammad) orang yang berpaling dari peringatan Kami, dan dia hanya menginginkan kehidupan dunia. (an-Najm/53: 29)\n\nAllah juga berfirman:\n\nKarena itu berpalinglah kamu dari mereka, dan berilah mereka nasihat, dan katakanlah kepada mereka perkataan yang membekas pada jiwanya. (an-Nisa''/4: 63)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 11, 'وَذَرْنِيْ وَالْمُكَذِّبِيْنَ اُولِى النَّعْمَةِ وَمَهِّلْهُمْ قَلِيْلًا ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan biarkanlah Aku (yang bertindak) terhadap orang-orang yang mendustakan, yang memiliki segala kenikmatan hidup, dan berilah mereka penangguhan sebentar.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini memerintahkan supaya Muhammad saw mengembalikan urusannya kepada Allah dalam menghadapi pendusta-pendusta agama yang kaya raya dan bermegah-megahan dengan kekayaan itu. Allah-lah yang akan menyiksa mereka dengan azab yang telah disiapkan-Nya untuk mereka. Oleh karenanya, hendaklah Muhammad saw membiarkan mereka bermegah-megahan dengan kekayaan mereka dalam waktu sementara, karena Allah pasti akan memenuhi janji-Nya mengazab mereka sebagaimana telah diperlihatkan-Nya kepada orang-orang mukmin pada hari peperangan Badar yang peristiwanya terjadi tidak lama setelah turun ayat ini. Allah berfirman:\n\nKami biarkan mereka bersenang-senang sebentar, kemudian Kami paksa mereka (masuk) ke dalam azab yang keras. (Luqman/31: 24)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 12, 'اِنَّ لَدَيْنَآ اَنْكَالًا وَّجَحِيْمًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, di sisi Kami ada belenggu-belenggu (yang berat) dan neraka yang menyala-nyala,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menggambarkan tentang berbagai macam azab Tuhan di akhirat nanti terhadap pendusta-pendusta tersebut. Allah berkuasa mengazab mereka karena Dia mempunyai belenggu untuk mengikat kaki mereka sebagai penghinaan terhadap mereka dan tidak ada kekhawatiran kalau-kalau mereka melarikan diri. Allah mempunyai api neraka yang menyala-nyala dan dapat menghanguskan serta merusak kulit muka dan badan serta melemahkan sendi-sendi tulang mereka. Allah mempunyai makanan-makanan dalam api neraka yang sifatnya mencekik kerongkongan yang tidak dapat dikeluarkan dan tidak dapat pula ditelan. Hal ini merupakan azab Tuhan yang memedihkan seluruh bagian tubuh mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 13, 'وَّطَعَامًا ذَا غُصَّةٍ وَّعَذَابًا اَلِيْمًا ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan (ada) makanan yang menyumbat di kerongkongan dan azab yang pedih.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menggambarkan tentang berbagai macam azab Tuhan di akhirat nanti terhadap pendusta-pendusta tersebut. Allah berkuasa mengazab mereka karena Dia mempunyai belenggu untuk mengikat kaki mereka sebagai penghinaan terhadap mereka dan tidak ada kekhawatiran kalau-kalau mereka melarikan diri. Allah mempunyai api neraka yang menyala-nyala dan dapat menghanguskan serta merusak kulit muka dan badan serta melemahkan sendi-sendi tulang mereka. Allah mempunyai makanan-makanan dalam api neraka yang sifatnya mencekik kerongkongan yang tidak dapat dikeluarkan dan tidak dapat pula ditelan. Hal ini merupakan azab Tuhan yang memedihkan seluruh bagian tubuh mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 14, 'يَوْمَ تَرْجُفُ الْاَرْضُ وَالْجِبَالُ وَكَانَتِ الْجِبَالُ كَثِيْبًا مَّهِيْلًا ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Ingatlah) pada hari (ketika) bumi dan gunung-gunung berguncang keras, dan menjadilah gunung-gunung itu seperti onggokan pasir yang dicurahkan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa azab tersebut terjadi pada hari di mana bumi dan gunung berguncang sekeras-kerasnya sehingga gunung dan bukit menjadi berserakan, bercerai-berai seperti tumpukan pasir yang beterbangan. Firman Allah dalam ayat lain:\n\nDan gunung-gunung seperti bulu yang dihambur-hamburkan. (al-Qari''ah/101: 5)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 15, 'اِنَّآ اَرْسَلْنَآ اِلَيْكُمْ رَسُوْلًا ەۙ شَاهِدًا عَلَيْكُمْ كَمَآ اَرْسَلْنَآ اِلٰى فِرْعَوْنَ رَسُوْلًا ۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sesungguhnya Kami telah mengutus seorang Rasul (Muhammad) kepada kamu, yang menjadi saksi terhadapmu, sebagaimana Kami telah mengutus seorang Rasul kepada Fir‘aun.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa Allah telah mengutus kepada penduduk Mekah seorang rasul yaitu Muhammad saw untuk membawa mereka ke jalan yang benar dan menjadi saksi bagi mereka pada hari Kiamat tentang sikap mereka terhadap ajakan Rasul, apakah mereka menerima atau menolaknya, sebagaimana Allah mengutus seorang rasul kepada Fir''aun dan kaumnya. Akan tetapi, Fir''aun menentang kerasulan Musa sehingga Allah membinasakannya beserta pengikut-pengikutnya dengan menenggelamkan mereka ke dalam lautan. Oleh sebab itu, hendaklah penduduk Mekah mengambil pelajaran dari peristiwa ini.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 16, 'فَعَصٰى فِرْعَوْنُ الرَّسُوْلَ فَاَخَذْنٰهُ اَخْذًا وَّبِيْلًاۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Namun Fir‘aun mendurhakai Rasul itu, maka Kami siksa dia dengan siksaan yang berat.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menerangkan bahwa Allah telah mengutus kepada penduduk Mekah seorang rasul yaitu Muhammad saw untuk membawa mereka ke jalan yang benar dan menjadi saksi bagi mereka pada hari Kiamat tentang sikap mereka terhadap ajakan Rasul, apakah mereka menerima atau menolaknya, sebagaimana Allah mengutus seorang rasul kepada Fir''aun dan kaumnya. Akan tetapi, Fir''aun menentang kerasulan Musa sehingga Allah membinasakannya beserta pengikut-pengikutnya dengan menenggelamkan mereka ke dalam lautan. Oleh sebab itu, hendaklah penduduk Mekah mengambil pelajaran dari peristiwa ini.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 17, 'فَكَيْفَ تَتَّقُوْنَ اِنْ كَفَرْتُمْ يَوْمًا يَّجْعَلُ الْوِلْدَانَ شِيْبًاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Lalu bagaimanakah kamu akan dapat menjaga dirimu jika kamu tetap kafir kepada hari yang menjadikan anak-anak beruban.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menegaskan bahwa orang-orang kafir tidak takut kepada datangnya hari Kiamat. Padahal pada hari itu, mereka tidak akan merasa aman karena kekufuran mereka. Mereka tidak sanggup menolak azab Tuhan pada hari yang sangat dahsyat yang menjadikan anak-anak muda beruban. Langit pun pada hari itu terpecah-belah. Hal itu menunjukkan sangat dahsyatnya hari tersebut. Kedatangan hari tersebut, yaitu turunnya azab Tuhan kepada orang kafir dan pahala Tuhan berupa nikmat kepada orang mukmin, adalah janji Tuhan yang pasti dipenuhi-Nya. Allah tidak akan memungkiri janji-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 18, ' ۨالسَّمَاۤءُ مُنْفَطِرٌۢ بِهٖۗ كَانَ وَعْدُهٗ مَفْعُوْلًا', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Langit terbelah pada hari itu. Janji Allah pasti terlaksana.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini menegaskan bahwa orang-orang kafir tidak takut kepada datangnya hari Kiamat. Padahal pada hari itu, mereka tidak akan merasa aman karena kekufuran mereka. Mereka tidak sanggup menolak azab Tuhan pada hari yang sangat dahsyat yang menjadikan anak-anak muda beruban. Langit pun pada hari itu terpecah-belah. Hal itu menunjukkan sangat dahsyatnya hari tersebut. Kedatangan hari tersebut, yaitu turunnya azab Tuhan kepada orang kafir dan pahala Tuhan berupa nikmat kepada orang mukmin, adalah janji Tuhan yang pasti dipenuhi-Nya. Allah tidak akan memungkiri janji-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 19, 'اِنَّ هٰذِهٖ تَذْكِرَةٌ ۚ فَمَنْ شَاۤءَ اتَّخَذَ اِلٰى رَبِّهٖ سَبِيْلًا ࣖ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, ini adalah peringatan. Barangsiapa menghendaki, niscaya dia mengambil jalan (yang lurus) kepada Tuhannya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menegaskan bahwa sesungguhnya hal-hal yang lalu yang mengungkapkan berbagai hal tentang siksaan yang disediakan Allah bagi orang yang mendustakan-Nya, dan bahwa manusia tidak dapat menyelamatkan diri dari azab-Nya, merupakan pengajaran atau peringatan, khususnya bagi orang yang ingin kembali kepada jalan Tuhannya.\n\nMenempuh jalan kepada Tuhan berarti mengimani-Nya, mengerjakan perbuatan yang bersifat menaati-Nya, serta menundukkan diri kepada-Nya. Itulah upaya seseorang untuk mencapai mardhatillah (keridaan Allah). Itulah jalan hidup yang lurus dan kokoh.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 20 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 73, 20, '۞ اِنَّ رَبَّكَ يَعْلَمُ اَنَّكَ تَقُوْمُ اَدْنٰى مِنْ ثُلُثَيِ الَّيْلِ وَنِصْفَهٗ وَثُلُثَهٗ وَطَاۤىِٕفَةٌ مِّنَ الَّذِيْنَ مَعَكَۗ وَاللّٰهُ يُقَدِّرُ الَّيْلَ وَالنَّهَارَۗ عَلِمَ اَنْ لَّنْ تُحْصُوْهُ فَتَابَ عَلَيْكُمْ فَاقْرَءُوْا مَا تَيَسَّرَ مِنَ الْقُرْاٰنِۗ عَلِمَ اَنْ سَيَكُوْنُ مِنْكُمْ مَّرْضٰىۙ وَاٰخَرُوْنَ يَضْرِبُوْنَ فِى الْاَرْضِ يَبْتَغُوْنَ مِنْ فَضْلِ اللّٰهِ ۙوَاٰخَرُوْنَ يُقَاتِلُوْنَ فِيْ سَبِيْلِ اللّٰهِ ۖفَاقْرَءُوْا مَا تَيَسَّرَ مِنْهُۙ وَاَقِيْمُوا الصَّلٰوةَ وَاٰتُوا الزَّكٰوةَ وَاَقْرِضُوا اللّٰهَ قَرْضًا حَسَنًاۗ وَمَا تُقَدِّمُوْا لِاَنْفُسِكُمْ مِّنْ خَيْرٍ تَجِدُوْهُ عِنْدَ اللّٰهِ ۙهُوَ خَيْرًا وَّاَعْظَمَ اَجْرًاۗ وَاسْتَغْفِرُوا اللّٰهَ ۗاِنَّ اللّٰهَ غَفُوْرٌ رَّحِيْمٌ ࣖ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 73 AND ayah_number = 20);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 73 AND ayah_number = 20;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sesungguhnya Tuhanmu mengetahui bahwa engkau (Muhammad) berdiri (salat) kurang dari dua pertiga malam, atau seperdua malam atau sepertiganya dan (demikian pula) segolongan dari orang-orang yang bersamamu. Allah menetapkan ukuran malam dan siang. Allah mengetahui bahwa kamu tidak dapat menentukan batas-batas waktu itu, maka Dia memberi keringanan kepadamu, karena itu bacalah apa yang mudah (bagimu) dari Al-Qur''an; Dia mengetahui bahwa akan ada di antara kamu orang-orang yang sakit, dan yang lain berjalan di bumi mencari sebagian karunia Allah; dan yang lain berperang di jalan Allah, maka bacalah apa yang mudah (bagimu) dari Al-Qur''an dan laksanakanlah salat, tunaikanlah zakat dan berikanlah pinjaman kepada Allah pinjaman yang baik. Kebaikan apa saja yang kamu perbuat untuk dirimu niscaya kamu memperoleh (balasan)nya di sisi Allah sebagai balasan yang paling baik dan yang paling besar pahalanya. Dan mohonlah ampunan kepada Allah; sungguh, Allah Maha Pengampun, Maha Penyayang.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat yang lalu, Allah memerintahkan kepada Nabi Muhammad untuk salat malam, maka dalam ayat ini, Allah menunjukkan kemahapengasihan-Nya kepada hamba-hamba-Nya. Dia memberikan keringanan pada hamba-Nya dengan tidak mewajibkan salat Tahajud setiap malam.\n\nTuhan menegaskan bahwa Dia mengetahui sebagian kaum muslimin bersama Nabi mengerjakan salat malam itu sepanjang 2/3 malam, atau 1/2-nya atau 1/3-nya. Waktu itu masih merupakan perintah wajib yang tentu saja terkadang-kadang terasa berat.\n\nKetika ayat pertama Surah al-Muzzammil turun, para sahabat mengerjakan salat sesuai dengan petunjuk dalam ayat 2 sampai dengan 4. Hal itu kadang-kadang memberatkan, sekalipun salat Tahajud itu khusus difardukan atau diwajibkan kepada Rasulullah saw, dan disunatkan bagi umatnya. Banyak di antara para sahabat tidak mengetahui dengan pasti berapa ukuran 1/2 atau 1/3 malam itu, hingga karena takut luput dari waktu salat malam yang diperintahkan itu, sehingga ada di antara mereka yang berjaga-jaga sepanjang malam. Hal ini sangat melelahkan badan mereka, sebab mereka bangun sampai fajar. Tentu saja bangun dan berjaga-jaga demikian melemahkan fisik. Untuk meringankan itu, Allah menurunkan ayat ini:\n\n¦Allah mengetahui bahwa kamu tidak dapat menentukan batas-batas waktu itu, maka Dia memberi keringanan kepadamu¦ (al-Muzzammil/73: 20)\n\nDari ayat 20 ini dapat pula diambil pelajaran bahwa mengerjakan perintah fardu itu tidak boleh melebihi batas ukuran yang ditentukan agar tidak memberatkan diri sendiri. Oleh karena itu, Allah memerintahkan bagi yang biasa salat malam apabila terasa agak memberatkan boleh dikurangi waktunya, sehingga dikerjakan tidak dalam keadaan terpaksa. Begitulah Allah memudahkan sesuatu yang berat menjadi ringan, agar seseorang selalu mengerjakan yang mudah itu.\n\nBegitu pula dalam bacaan salat malam (termasuk Magrib dan Isya), hendaklah dibaca ayat-ayat yang pendek-pendek, sebagaimana yang diriwayatkan oleh al-Baihaqi dan ad-Daruquthni dari Qais bin hazim bahwa ia salat berjamaah yang diimami oleh Ibnu ''Abbas. Qais mengatakan bahwa Ibnu ''Abbas membaca beberapa ayat dari permulaan Surah al-Baqarah setelah al-Fatihah. Selesai salat, Ibnu ''Abbas mengajarkan kepada yang mengikutinya:\n\nSelesai salat, Ibnu ''Abbas menghampiri kami seraya berkata, Allah berfirman "Bacalah olehmu mana yang mudah dari (ayat-ayat Al-Qur''an itu)" (Riwayat al-Baihaqi dan ad-Daruquthni)\n\nBerapa ukuran ayat-ayat yang mudah itu tidak dijelaskan lebih lanjut, demikian pula apakah untuk salat fardu atau salat Tahajud dan sunah-sunah lainnya. Boleh jadi membaca mana yang mudah dari ayat-ayat Al-Qur''an berlaku untuk beberapa salat wajib dan beberapa salat sunah (seperti salat Tahajud).\n\nKemudian disebutkan pula uzur (halangan) yang kedua yakni karena sakit, sehingga diringankan tuntutan mengerjakan salat malam. Uzur yang ketiga adalah karena sibuk mencari rezeki di siang hari. Keempat karena sedang berjuang dengan senjata (fisik) membela dan mempertahankan agama Allah dari serangan musuh.\n\nFaktor sakit, sibuk mencari rezeki, dan sedang berjihad di jalan Allah menyebabkan seseorang sulit baginya untuk bangun pada malam hari mengerjakan salat Tahajud. Demikianlah pula ternyata ayat ini tidak membeda-bedakan usaha berjihad mengangkat senjata melawan musuh dengan berusaha mencari rezeki, sebab keduanya bermanfaat bagi kaum muslimin, asal dikerjakan menurut perintah Allah. Berjuang berarti mempertahankan agama, sedang berdagang atau berusaha dapat membiayai keluarga dan kegiatan agama (dengan zakat, sedekah, dan lain-lain).\n\nSetelah menyebutkan tiga sebab yang mendatangkan rukhsah (keringanan) dalam beribadah pada malam hari yang berarti pula terhapusnya kewajiban salat malam (mansukh), maka ayat ini menyebutkan pula apa yang mereka kerjakan setelah mendapat keringanan tersebut yakni hendaklah membaca Al-Qur''an dalam salat mana yang mudah-mudah saja.\n\nSelanjutnya Allah memerintahkan untuk menegakkan salat dan mengeluarkan zakat. Selain itu dianjurkan pula untuk memberikan pinjaman kepada Allah, dalam bentuk memberikan nafkah (bantuan) bagi kepentingan sabilillah, baik sendiri-sendiri maupun secara bersama-sama. Dengan qiradh (pinjaman) itulah agama ini bisa ditegakkan, dan urusan sosial kemasyarakatan dapat ditegakkan. Dalam ayat lain dinyatakan:\n\nBarang siapa meminjami Allah dengan pinjaman yang baik maka Allah melipatgandakan ganti kepadanya dengan banyak. Allah menahan dan melapangkan (rezeki) dan kepada-Nyalah kamu dikembalikan. (al-Baqarah/2: 245)\n\nKemudian Tuhan menganjurkan supaya memperbanyak sedekah (memberikan harta kepada yang memerlukannya di luar zakat yang wajib) dan memperbanyak amal saleh. Apa yang dinafkahkan dan dikorbankan dengan bersedekah di jalan Allah, adalah lebih baik dibandingkan dengan apa yang dihabiskan untuk kepentingan duniawi, dan dengan demikian seseorang semakin memperbesar persiapannya untuk menuju kampung yang kekal dan abadi. \n\nAyat ini diakhiri dengan anjuran agar kita memperbanyak istigfar (mohon ampun kepada Allah), karena dosa dan kesalahan yang kita kerjakan terlalu banyak. Istigfar yang diterima Allah itulah yang akan menutup aib seseorang tatkala diadakan perhitungan dan pertanggungjawaban amal manusia di hadapan-Nya kelak. Allah-lah Yang Maha Pengampun; Dialah yang menutupi dosa seseorang atau menguranginya. Dialah yang Maha Pengasih, yang seseorang tidak akan disiksa bilamana tobatnya telah diterima.'
    )
    ON CONFLICT DO NOTHING;
END $$;

