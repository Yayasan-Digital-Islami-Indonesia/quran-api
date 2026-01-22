-- Seed Surah 102 (At-Takasur) with 8 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/102.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (102, 'التكاثر', 'At-Takasur', 8, 'Makkiyah', 'Bermegah-Megahan')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 102, 1, 'اَلْهٰىكُمُ التَّكَاثُرُۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 102 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 102 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bermegah-megahan telah melalaikan kamu,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah mengungkapkan bahwa manusia sibuk bermegah-megahan dengan harta, teman, dan pengikut yang banyak, sehingga melalaikannya dari kegiatan beramal. Mereka asyik dengan berbicara saja, teperdaya oleh keturunan mereka dan teman sejawat tanpa memikirkan amal perbuatan yang bermanfaat untuk diri dan keluarga mereka.\n\nDiriwayatkan dari Mutharrif dari ayahnya, ia berkata:\n\nSaya menemui Nabi saw ketika beliau sedang membaca al-hakumut-takatsur, beliau bersabda, "Anak Adam berkata, ''Inilah harta saya, inilah harta saya. Nabi bersabda, "Wahai anak Adam! Engkau tidak memiliki dari hartamu kecuali apa yang engkau makan dan telah engkau habiskan, atau pakaian yang engkau pakai hingga lapuk, atau yang telah kamu sedekahkan sampai habis." (Riwayat Muslim) \n\nDiriwayatkan pula bahwa Nabi saw bersabda:\n\nSeandainya anak Adam memiliki satu lembah harta, sungguh ia ingin memiliki dua lembah harta, dan seandainya ia memiliki dua lembah harta, sungguh ia ingin memiliki tiga lembah harta dan tidak memenuhi perut manusia (tidak merasa puas) kecuali perutnya diisi dengan tanah dan Allah akan menerima tobat (memberi ampunan) kepada orang yang bertobat. (Riwayat Ahmad, al-Bukhari, Muslim, dan at-Tirmidhi dari Anas)\n\nAhli tafsir ada yang berpendapat bahwa maksud ayat ini adalah bangga dalam berlebih-lebihan. Seseorang berusaha memiliki lebih banyak dari yang lain baik harta ataupun kedudukan dengan tujuan semata-mata untuk mencapai ketinggian dan kebanggaan, bukan untuk digunakan pada jalan kebaikan atau untuk membantu menegakkan keadilan dan maksud baik lainnya.\n\nKetahuilah, sesungguhnya kehidupan dunia itu hanyalah permainan dan sendagurauan, perhiasan dan saling berbangga di antara kamu serta berlomba dalam kekayaan dan anak keturunan, seperti hujan yang tanam-tanamannya mengagumkan para petani; kemudian (tanaman) itu menjadi kering dan kamu lihat warnanya kuning kemudian menjadi hancur. Dan di akhirat (nanti) ada azab yang keras dan ampunan dari Allah serta keridaan-Nya. Dan kehidupan dunia tidak lain hanyalah kesenangan yang palsu. (al-hadid/57: 20)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 102, 2, 'حَتّٰى زُرْتُمُ الْمَقَابِرَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 102 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 102 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sampai kamu masuk ke dalam kubur.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah menjelaskan keadaan bermegah-megah di antara manusia atau dengan usaha untuk memiliki lebih banyak dari orang lain akan terus berlanjut hingga mereka masuk lubang kubur. Dengan demikian, mereka telah menyia-nyiakan umur untuk hal yang tidak berfaedah, baik dalam hidup di dunia maupun untuk kehidupan akhirat.\n\nPara ulama berpendapat bahwa menziarahi kuburan adalah obat penawar yang paling ampuh untuk melunakkan hati, karena dengan ziarah kubur itu manusia akan ingat mati dan hari akhirat, maka dengan sendirinya akan membatasi keinginan-keinginan yang bukan-bukan.\n\nNabi Muhammad bersabda:\n\nSaya pernah melarang kamu menziarahi kubur, maka sekarang ziarahilah kubur itu, karena menziarahi kubur itu akan menjadikan zuhud dari kemewahan dunia dan mengingatkan kamu kepada kehidupan akhirat. (Riwayat Ibnu Majah dari Ibnu Mas''ud).'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 102, 3, 'كَلَّا سَوْفَ تَعْلَمُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 102 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 102 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sekali-kali tidak! Kelak kamu akan mengetahui (akibat perbuatanmu itu),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian Allah dengan ayat ini memperingatkan bahwa bermegah-megahan itu tidak pantas dikerjakan karena akibatnya buruk serta menimbulkan kekacauan dan permusuhan. Sebaliknya Allah menganjurkan agar diciptakan kerukunan hidup, bantu-membantu dalam menegakkan kebenaran dan tolong-menolong dalam kebajikan dan dalam melestarikan hidup bermasyarakat, dengan membina akhlak yang luhur serta budi pekerti yang baik.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 102, 4, 'ثُمَّ كَلَّا سَوْفَ تَعْلَمُوْنَ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 102 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 102 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'kemudian sekali-kali tidak! Kelak kamu akan mengetahui.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah mengulang ancaman-Nya melalui ayat ini dan merupakan ancaman sesudah ancaman, bagaikan seorang tuan berkata kepada hamba sahayanya bahwa agar tidak mengerjakan sesuatu, kemudian tuan itu mengulangi ucapannya itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 102, 5, 'كَلَّا لَوْ تَعْلَمُوْنَ عِلْمَ الْيَقِيْنِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 102 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 102 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sekali-kali tidak! Sekiranya kamu mengetahui dengan pasti,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini merupakan peringatan Allah dalam bentuk perintah agar waspada terhadap tingkah laku yang buruk itu. Keinginan untuk berlebih-lebihan dapat menyibukkan seseorang untuk mengerjakan pekerjaan yang tidak bermanfaat. Pendirian yang dianggapnya benar itu sebenarnya adalah salah. Itu hanya sangkaan belaka yang pasti berubah, karena tidak sesuai dengan kenyataan. Yang harus menjadi pendirian adalah yang sesuai dengan kenyataan yang dapat disaksikan oleh mata, oleh perasaan atau berdasarkan dalil sahih.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 102, 6, 'لَتَرَوُنَّ الْجَحِيْمَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 102 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 102 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'niscaya kamu benar-benar akan melihat neraka Jahim,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan sebagian azab yang akan dialami oleh orang yang bermegah-megahan itu karena kelalaian tersebut. Mereka akan ditimpa azab di akhirat, dan pasti akan melihat tempat itu dengan mata kepala mereka sendiri. Oleh sebab itu, mereka hendaknya selalu merenungkan kedahsyatan azab itu dalam pikiran agar membawa mereka kepada perbuatan yang baik dan bermanfaat. Maksud perkataan "melihat neraka Jahim" adalah merasakan azabnya, sesuai dengan tujuan Al-Qur''an dalam pemakaian kata-kata tersebut.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 102, 7, 'ثُمَّ لَتَرَوُنَّهَا عَيْنَ الْيَقِيْنِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 102 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 102 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'kemudian kamu benar-benar akan melihatnya dengan mata kepala sendiri,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian dengan ayat ini, Allah menguatkan isi ayat sebelumnya, bahwa azab itu benar-benar akan dirasakan oleh orang yang teperdaya itu. Oleh karena itu, siapa saja dan dari golongan apa saja hendaklah bertakwa kepada Tuhannya serta menghindari perbuatan-perbuatan yang menyebabkan mereka disiksa. Hendaknya seseorang itu memperhatikan nikmat-nikmat Allah yang ada padanya untuk dipelihara dan dipergunakan sesuai dengan fungsi nikmat tersebut. Juga hendaknya mereka tidak melakukan kejahatan, mengada-adakan kemungkaran, dan mengharap-harapkan ampunan Allah hanya semata-mata dengan pengakuan beragama Islam dengan memakai nama dan gelar yang muluk-muluk, sedangkan ia menyalahi hukum-hukum Al-Qur''an dan melakukan tindakan yang sama dengan musuh Islam.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 102, 8, 'ثُمَّ لَتُسْـَٔلُنَّ يَوْمَىِٕذٍ عَنِ النَّعِيْمِ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 102 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 102 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'kemudian kamu benar-benar akan ditanya pada hari itu tentang kenikmatan (yang megah di dunia itu).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah lebih memperkuat lagi celaan-Nya terhadap mereka dengan mengatakan bahwa sesungguhnya mereka akan ditanyai pada hari itu tentang kenikmatan-kenikmatan yang mereka megah-megahkan di dunia, apa yang mereka perbuat dengan nikmat-nikmat itu. Apakah mereka telah menunaikan hak Allah daripadanya, atau apakah mereka menjaga batas-batas hukum Allah yang telah ditentukan dalam bersenang-senang dengan nikmat tersebut. Jika mereka tidak melakukannya, ketahuilah bahwa nikmat-nikmat itu adalah puncak kecelakaan di hari akhirat.\n\nDiriwayatkan dari Nabi Muhammad, beliau berkata:\n\nBarangsiapa di antara kamu yang bangun pagi dalam keadaan aman sentosa pada dirinya atau aman di tempatnya, sehat wal afiat badannya serta mempunyai bekal hidup untuk harinya, maka seolah-olah dunia dengan segala kekayaannya telah diserahkan kepadanya. (Riwayat al-Bukhari, Abu Dawud, at-Tirmidhi, dan Ibnu Majah dari ''Ubaidillah bin Muhsan).'
    )
    ON CONFLICT DO NOTHING;
END $$;

