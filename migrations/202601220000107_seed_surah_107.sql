-- Seed Surah 107 (Al-Ma'un) with 7 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/107.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (107, 'الماعون', 'Al-Ma''un', 7, 'Makkiyah', 'Barang Yang Berguna')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 107, 1, 'اَرَءَيْتَ الَّذِيْ يُكَذِّبُ بِالدِّيْنِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 107 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 107 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Tahukah kamu (orang) yang mendustakan agama?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menghadapkan pertanyaan kepada Nabi Muhammad, "Apakah engkau mengetahui orang yang mendustakan agama dan yang dimaksud dengan orang yang mendustakan agama?" Pertanyaan ini dijawab pada ayat-ayat berikut.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 107, 2, 'فَذٰلِكَ الَّذِيْ يَدُعُّ الْيَتِيْمَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 107 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 107 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka itulah orang yang menghardik anak yatim,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah lalu menjelaskan bahwa sebagian dari sifat-sifat orang yang mendustakan agama ialah orang-orang yang menolak dan membentak anak-anak yatim yang datang kepadanya untuk memohon belas-kasihnya demi kebutuhan hidupnya. Penolakannya itu sebagai penghinaan dan takabur terhadap anak-anak yatim itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 107, 3, 'وَلَا يَحُضُّ عَلٰى طَعَامِ الْمِسْكِيْنِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 107 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 107 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan tidak mendorong memberi makan orang miskin.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menegaskan lebih lanjut sifat pendusta itu, yaitu dia tidak mengajak orang lain untuk membantu dan memberi makan orang miskin. Bila tidak mau mengajak orang memberi makan dan membantu orang miskin berarti ia tidak melakukannya sama sekali. Berdasarkan keterangan di atas, bila seorang tidak sanggup membantu orang-orang miskin maka hendaklah ia menganjurkan orang lain agar melakukan usaha yang mulia itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 107, 4, 'فَوَيْلٌ لِّلْمُصَلِّيْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 107 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 107 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka celakalah orang yang salat,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah mengungkapkan satu ancaman yaitu celakalah orang-orang yang mengerjakan salat dengan tubuh dan lidahnya, tidak sampai ke hatinya. Dia lalai dan tidak menyadari apa yang diucapkan lidahnya dan yang dikerjakan oleh anggota tubuhnya. Ia rukuk dan sujud dalam keadaan lalai, ia mengucapkan takbir tetapi tidak menyadari apa yang diucapkannya. Semua itu adalah hanya gerak biasa dan kata-kata hafalan semata-mata yang tidak mempengaruhi apa-apa, tidak ubahnya seperti robot.\n\nPerilaku tersebut ditujukan kepada orang-orang yang mendustakan agama, yaitu orang munafik. Ancaman itu tidak ditujukan kepada orang-orang muslim yang awam, tidak mengerti bahasa Arab, dan tidak tahu tentang arti dari apa yang dibacanya. Jadi orang-orang awam yang tidak memahami makna dari apa yang dibacanya dalam salat tidak termasuk orang-orang yang lalai seperti yang disebut dalam ayat ini.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 107, 5, 'الَّذِيْنَ هُمْ عَنْ صَلَاتِهِمْ سَاهُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 107 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 107 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(yaitu) orang-orang yang lalai terhadap salatnya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah mengungkapkan satu ancaman yaitu celakalah orang-orang yang mengerjakan salat dengan tubuh dan lidahnya, tidak sampai ke hatinya. Dia lalai dan tidak menyadari apa yang diucapkan lidahnya dan yang dikerjakan oleh anggota tubuhnya. Ia rukuk dan sujud dalam keadaan lalai, ia mengucapkan takbir tetapi tidak menyadari apa yang diucapkannya. Semua itu adalah hanya gerak biasa dan kata-kata hafalan semata-mata yang tidak mempengaruhi apa-apa, tidak ubahnya seperti robot.\n\nPerilaku tersebut ditujukan kepada orang-orang yang mendustakan agama, yaitu orang munafik. Ancaman itu tidak ditujukan kepada orang-orang muslim yang awam, tidak mengerti bahasa Arab, dan tidak tahu tentang arti dari apa yang dibacanya. Jadi orang-orang awam yang tidak memahami makna dari apa yang dibacanya dalam salat tidak termasuk orang-orang yang lalai seperti yang disebut dalam ayat ini.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 107, 6, 'الَّذِيْنَ هُمْ يُرَاۤءُوْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 107 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 107 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang berbuat ria,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah selanjutnya menambah penjelasan tentang sifat orang pendusta agama, yaitu mereka melakukan perbuatan-perbuatan lahir hanya semata karena ria, tidak terkesan pada jiwanya untuk meresapi rahasia dan hikmahnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 107, 7, 'وَيَمْنَعُوْنَ الْمَاعُوْنَ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 107 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 107 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan enggan (memberikan) bantuan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menambahkan lagi dalam ayat ini sifat pendusta itu, yaitu mereka tidak mau memberikan barang-barang yang diperlukan oleh orang-orang yang membutuhkannya, sedang barang itu tak pantas ditahan, seperti periuk, kapuk, cangkul, dan lain-lain. \n\nKeadaan orang yang membesarkan agama berbeda dengan keadaan orang yang mendustakan agama, karena yang pertama tampak dalam tata hidupnya yang jujur, adil, kasih sayang, pemurah, dan lain-lain. Sedangkan sifat pendusta agama ialah ria, curang, aniaya, takabur, kikir, memandang rendah orang lain, tidak mementingkan yang lain kecuali dirinya sendiri, bangga dengan harta dan kedudukan, serta tidak mau mengeluarkan sebahagian dari hartanya, baik untuk keperluan perseorangan maupun untuk masyarakat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

