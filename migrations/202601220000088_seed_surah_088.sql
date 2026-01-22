-- Seed Surah 88 (Al-Gasyiyah) with 26 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/88.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (88, 'الغاشية', 'Al-Gasyiyah', 26, 'Makkiyah', 'Hari Kiamat')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 1, 'هَلْ اَتٰىكَ حَدِيْثُ الْغَاشِيَةِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sudahkah sampai kepadamu berita tentang (hari Kiamat)?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menyindir penduduk neraka dengan mengatakan, "Sudahkah sampai kepada kamu berita tentang hari Kiamat."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 2, 'وُجُوْهٌ يَّوْمَىِٕذٍ خَاشِعَةٌ  ۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Pada hari itu banyak wajah yang tertunduk terhina,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kemudian Allah menjelaskan bahwa manusia ketika itu terbagi dua, yaitu golongan orang kafir dan golongan orang mukmin.\n\nGolongan orang kafir ketika melihat kedahsyatan yang terjadi ketika itu, menjadi tertunduk dan merasa terhina. Allah berfirman:\n\nDan (alangkah ngerinya), jika sekiranya kamu melihat orang-orang yang berdosa itu menundukkan kepalanya di hadapan Tuhannya, (mereka berkata), "Ya Tuhan kami, kami telah melihat dan mendengar, maka kembalikanlah kami (ke dunia), niscaya kami akan mengerjakan kebajikan. Sungguh, kami adalah orang-orang yang yakin." (as-Sajdah/32: 12)\n\nDan firman Allah:\n\nDan kamu akan melihat mereka dihadapkan ke neraka dalam keadaan tertunduk karena (merasa) hina, mereka melihat dengan pandangan yang lesu. Dan orang-orang yang beriman berkata, "Sesungguhnya orang-orang yang rugi ialah orang-orang yang merugikan diri mereka sendiri dan keluarganya pada hari Kiamat." Ingatlah, sesungguhnya orang-orang zalim itu berada dalam azab yang kekal. (asy-Syura/42: 45)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 3, 'عَامِلَةٌ نَّاصِبَةٌ  ۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(karena) bekerja keras lagi kepayahan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menerangkan bahwa orang-orang kafir itu semasa hidup di dunia bekerja dengan rajin dan sungguh-sungguh. Akan tetapi, perbuatan mereka itu tidak diterima karena mereka tidak beriman kepada Allah dan Rasul-Nya, yang merupakan syarat utama untuk diterimanya perbuatan dan mendapat ganjaran-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 4, 'تَصْلٰى نَارًا حَامِيَةً  ۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'mereka memasuki api yang sangat panas (neraka),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan bahwa orang-orang kafir akan dimasukkan ke dalam neraka. Bila mereka meminta air karena haus, maka mereka diberi air bersumber dari mata air yang sangat panas. Bila mereka meminta makan, maka diberi makanan yang jelek, yang tidak ada artinya. Allah berfirman:\n\nDan tidak ada makanan (baginya) kecuali dari darah dan nanah. (al-haqqah/69: 36)\n\nDan firman Allah:\n\nKemudian sesungguhnya kamu, wahai orang-orang yang sesat lagi mendustakan! pasti akan memakan pohon zaqqum. (al-Waqi''ah/56: 51-52)\n\nDalam ayat lain Allah berfirman:\n\nSungguh pohon zaqqum itu, makanan bagi orang yang banyak dosa. (ad-Dukhan/44: 43-44)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 5, 'تُسْقٰى مِنْ عَيْنٍ اٰنِيَةٍ ۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'diberi minum dari sumber mata air yang sangat panas.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan bahwa orang-orang kafir akan dimasukkan ke dalam neraka. Bila mereka meminta air karena haus, maka mereka diberi air bersumber dari mata air yang sangat panas. Bila mereka meminta makan, maka diberi makanan yang jelek, yang tidak ada artinya. Allah berfirman:\n\nDan tidak ada makanan (baginya) kecuali dari darah dan nanah. (al-haqqah/69: 36)\n\nDan firman Allah:\n\nKemudian sesungguhnya kamu, wahai orang-orang yang sesat lagi mendustakan! pasti akan memakan pohon zaqqum. (al-Waqi''ah/56: 51-52)\n\nDalam ayat lain Allah berfirman:\n\nSungguh pohon zaqqum itu, makanan bagi orang yang banyak dosa. (ad-Dukhan/44: 43-44)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 6, 'لَيْسَ لَهُمْ طَعَامٌ اِلَّا مِنْ ضَرِيْعٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Tidak ada makanan bagi mereka selain dari pohon yang berduri,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan bahwa orang-orang kafir akan dimasukkan ke dalam neraka. Bila mereka meminta air karena haus, maka mereka diberi air bersumber dari mata air yang sangat panas. Bila mereka meminta makan, maka diberi makanan yang jelek, yang tidak ada artinya. Allah berfirman:\n\nDan tidak ada makanan (baginya) kecuali dari darah dan nanah. (al-haqqah/69: 36)\n\nDan firman Allah:\n\nKemudian sesungguhnya kamu, wahai orang-orang yang sesat lagi mendustakan! pasti akan memakan pohon zaqqum. (al-Waqi''ah/56: 51-52)\n\nDalam ayat lain Allah berfirman:\n\nSungguh pohon zaqqum itu, makanan bagi orang yang banyak dosa. (ad-Dukhan/44: 43-44)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 7, 'لَّا يُسْمِنُ وَلَا يُغْنِيْ مِنْ جُوْعٍۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang tidak menggemukkan dan tidak menghilangkan lapar.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan bahwa orang-orang kafir akan dimasukkan ke dalam neraka. Bila mereka meminta air karena haus, maka mereka diberi air bersumber dari mata air yang sangat panas. Bila mereka meminta makan, maka diberi makanan yang jelek, yang tidak ada artinya. Allah berfirman:\n\nDan tidak ada makanan (baginya) kecuali dari darah dan nanah. (al-haqqah/69: 36)\n\nDan firman Allah:\n\nKemudian sesungguhnya kamu, wahai orang-orang yang sesat lagi mendustakan! pasti akan memakan pohon zaqqum. (al-Waqi''ah/56: 51-52)\n\nDalam ayat lain Allah berfirman:\n\nSungguh pohon zaqqum itu, makanan bagi orang yang banyak dosa. (ad-Dukhan/44: 43-44)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 8, 'وُجُوْهٌ يَّوْمَىِٕذٍ نَّاعِمَةٌ  ۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Pada hari itu banyak (pula) wajah yang berseri-seri,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menerangkan bahwa di dalam surga, muka orang mukmin berseri penuh kegembiraan. Mereka merasa senang melihat hasil usaha mereka yang mendapat keridaan Allah yang kemudian mendapat imbalan surga yang diidam-idamkan.\n\n(10-16) Dalam ayat-ayat berikut ini, Allah menerangkan keadaan surga:\n\n1.Surga tempatnya bernilai tinggi, lebih tinggi dari nilai tempat-tempat yang lain.\n\n2.Di dalamnya tidak terdengar perkataan yang tidak berguna, sebab tempat itu adalah tempat orang-orang yang dikasihi Allah.\n\n3.Di dalamnya terdapat mata air yang mengalirkan air bersih yang menarik pandangan bagi siapa saja yang melihatnya.\n\n4.Di dalamnya terdapat mahligai yang tinggi.\n\n5.Di dekat mereka tersedia gelas-gelas yang berisi minuman yang sudah siap diminum.\n\n6.Di dalamnya terdapat bantal-bantal tersusun yang dapat dipergunakan menurut selera mereka, duduk di atasnya atau dipakai untuk bersandar dan sebagainya.\n\n7.Di sana terdapat pula permadani yang indah dan terhampar pada setiap tempat.\n\n8.Terdapat segala macam kenikmatan rohani dan jasmani yang jauh dari yang dapat kita bayangkan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 9, 'لِّسَعْيِهَا رَاضِيَةٌ  ۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'merasa senang karena usahanya (sendiri),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menerangkan bahwa di dalam surga, muka orang mukmin berseri penuh kegembiraan. Mereka merasa senang melihat hasil usaha mereka yang mendapat keridaan Allah yang kemudian mendapat imbalan surga yang diidam-idamkan.\n\n(10-16) Dalam ayat-ayat berikut ini, Allah menerangkan keadaan surga:\n\n1.Surga tempatnya bernilai tinggi, lebih tinggi dari nilai tempat-tempat yang lain.\n\n2.Di dalamnya tidak terdengar perkataan yang tidak berguna, sebab tempat itu adalah tempat orang-orang yang dikasihi Allah.\n\n3.Di dalamnya terdapat mata air yang mengalirkan air bersih yang menarik pandangan bagi siapa saja yang melihatnya.\n\n4.Di dalamnya terdapat mahligai yang tinggi.\n\n5.Di dekat mereka tersedia gelas-gelas yang berisi minuman yang sudah siap diminum.\n\n6.Di dalamnya terdapat bantal-bantal tersusun yang dapat dipergunakan menurut selera mereka, duduk di atasnya atau dipakai untuk bersandar dan sebagainya.\n\n7.Di sana terdapat pula permadani yang indah dan terhampar pada setiap tempat.\n\n8.Terdapat segala macam kenikmatan rohani dan jasmani yang jauh dari yang dapat kita bayangkan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 10, 'فِيْ جَنَّةٍ عَالِيَةٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(mereka) dalam surga yang tinggi, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat berikut ini, Allah menerangkan keadaan surga:\n\n1.Surga tempatnya bernilai tinggi, lebih tinggi dari nilai tempat-tempat yang lain.\n\n2.Di dalamnya tidak terdengar perkataan yang tidak berguna, sebab tempat itu adalah tempat orang-orang yang dikasihi Allah.\n\n3.Di dalamnya terdapat mata air yang mengalirkan air bersih yang menarik pandangan bagi siapa saja yang melihatnya.\n\n4.Di dalamnya terdapat mahligai yang tinggi.\n\n5.Di dekat mereka tersedia gelas-gelas yang berisi minuman yang sudah siap diminum.\n\n6.Di dalamnya terdapat bantal-bantal tersusun yang dapat dipergunakan menurut selera mereka, duduk di atasnya atau dipakai untuk bersandar dan sebagainya.\n\n7.Di sana terdapat pula permadani yang indah dan terhampar pada setiap tempat.\n\n8.Terdapat segala macam kenikmatan rohani dan jasmani yang jauh dari yang dapat kita bayangkan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 11, 'لَّا تَسْمَعُ فِيْهَا لَاغِيَةً ۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'di sana (kamu) tidak mendengar perkataan yang tidak berguna.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat berikut ini, Allah menerangkan keadaan surga:\n\n1.Surga tempatnya bernilai tinggi, lebih tinggi dari nilai tempat-tempat yang lain.\n\n2.Di dalamnya tidak terdengar perkataan yang tidak berguna, sebab tempat itu adalah tempat orang-orang yang dikasihi Allah.\n\n3.Di dalamnya terdapat mata air yang mengalirkan air bersih yang menarik pandangan bagi siapa saja yang melihatnya.\n\n4.Di dalamnya terdapat mahligai yang tinggi.\n\n5.Di dekat mereka tersedia gelas-gelas yang berisi minuman yang sudah siap diminum.\n\n6.Di dalamnya terdapat bantal-bantal tersusun yang dapat dipergunakan menurut selera mereka, duduk di atasnya atau dipakai untuk bersandar dan sebagainya.\n\n7.Di sana terdapat pula permadani yang indah dan terhampar pada setiap tempat.\n\n8.Terdapat segala macam kenikmatan rohani dan jasmani yang jauh dari yang dapat kita bayangkan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 12, 'فِيْهَا عَيْنٌ جَارِيَةٌ  ۘ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Di sana ada mata air yang mengalir.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat berikut ini, Allah menerangkan keadaan surga:\n\n1.Surga tempatnya bernilai tinggi, lebih tinggi dari nilai tempat-tempat yang lain.\n\n2.Di dalamnya tidak terdengar perkataan yang tidak berguna, sebab tempat itu adalah tempat orang-orang yang dikasihi Allah.\n\n3.Di dalamnya terdapat mata air yang mengalirkan air bersih yang menarik pandangan bagi siapa saja yang melihatnya.\n\n4.Di dalamnya terdapat mahligai yang tinggi.\n\n5.Di dekat mereka tersedia gelas-gelas yang berisi minuman yang sudah siap diminum.\n\n6.Di dalamnya terdapat bantal-bantal tersusun yang dapat dipergunakan menurut selera mereka, duduk di atasnya atau dipakai untuk bersandar dan sebagainya.\n\n7.Di sana terdapat pula permadani yang indah dan terhampar pada setiap tempat.\n\n8.Terdapat segala macam kenikmatan rohani dan jasmani yang jauh dari yang dapat kita bayangkan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 13, 'فِيْهَا سُرُرٌ مَّرْفُوْعَةٌ  ۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Di sana ada dipan-dipan yang ditinggikan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat berikut ini, Allah menerangkan keadaan surga:\n\n1.Surga tempatnya bernilai tinggi, lebih tinggi dari nilai tempat-tempat yang lain.\n\n2.Di dalamnya tidak terdengar perkataan yang tidak berguna, sebab tempat itu adalah tempat orang-orang yang dikasihi Allah.\n\n3.Di dalamnya terdapat mata air yang mengalirkan air bersih yang menarik pandangan bagi siapa saja yang melihatnya.\n\n4.Di dalamnya terdapat mahligai yang tinggi.\n\n5.Di dekat mereka tersedia gelas-gelas yang berisi minuman yang sudah siap diminum.\n\n6.Di dalamnya terdapat bantal-bantal tersusun yang dapat dipergunakan menurut selera mereka, duduk di atasnya atau dipakai untuk bersandar dan sebagainya.\n\n7.Di sana terdapat pula permadani yang indah dan terhampar pada setiap tempat.\n\n8.Terdapat segala macam kenikmatan rohani dan jasmani yang jauh dari yang dapat kita bayangkan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 14, 'وَّاَكْوَابٌ مَّوْضُوْعَةٌ  ۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan gelas-gelas yang tersedia (di dekatnya),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat berikut ini, Allah menerangkan keadaan surga:\n\n1.Surga tempatnya bernilai tinggi, lebih tinggi dari nilai tempat-tempat yang lain.\n\n2.Di dalamnya tidak terdengar perkataan yang tidak berguna, sebab tempat itu adalah tempat orang-orang yang dikasihi Allah.\n\n3.Di dalamnya terdapat mata air yang mengalirkan air bersih yang menarik pandangan bagi siapa saja yang melihatnya.\n\n4.Di dalamnya terdapat mahligai yang tinggi.\n\n5.Di dekat mereka tersedia gelas-gelas yang berisi minuman yang sudah siap diminum.\n\n6.Di dalamnya terdapat bantal-bantal tersusun yang dapat dipergunakan menurut selera mereka, duduk di atasnya atau dipakai untuk bersandar dan sebagainya.\n\n7.Di sana terdapat pula permadani yang indah dan terhampar pada setiap tempat.\n\n8.Terdapat segala macam kenikmatan rohani dan jasmani yang jauh dari yang dapat kita bayangkan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 15, 'وَّنَمَارِقُ مَصْفُوْفَةٌ  ۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan bantal-bantal sandaran yang tersusun,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat berikut ini, Allah menerangkan keadaan surga:\n\n1.Surga tempatnya bernilai tinggi, lebih tinggi dari nilai tempat-tempat yang lain.\n\n2.Di dalamnya tidak terdengar perkataan yang tidak berguna, sebab tempat itu adalah tempat orang-orang yang dikasihi Allah.\n\n3.Di dalamnya terdapat mata air yang mengalirkan air bersih yang menarik pandangan bagi siapa saja yang melihatnya.\n\n4.Di dalamnya terdapat mahligai yang tinggi.\n\n5.Di dekat mereka tersedia gelas-gelas yang berisi minuman yang sudah siap diminum.\n\n6.Di dalamnya terdapat bantal-bantal tersusun yang dapat dipergunakan menurut selera mereka, duduk di atasnya atau dipakai untuk bersandar dan sebagainya.\n\n7.Di sana terdapat pula permadani yang indah dan terhampar pada setiap tempat.\n\n8.Terdapat segala macam kenikmatan rohani dan jasmani yang jauh dari yang dapat kita bayangkan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 16, 'وَّزَرَابِيُّ مَبْثُوْثَةٌ  ۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan permadani-permadani yang terhampar.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat berikut ini, Allah menerangkan keadaan surga:\n\n1.Surga tempatnya bernilai tinggi, lebih tinggi dari nilai tempat-tempat yang lain.\n\n2.Di dalamnya tidak terdengar perkataan yang tidak berguna, sebab tempat itu adalah tempat orang-orang yang dikasihi Allah.\n\n3.Di dalamnya terdapat mata air yang mengalirkan air bersih yang menarik pandangan bagi siapa saja yang melihatnya.\n\n4.Di dalamnya terdapat mahligai yang tinggi.\n\n5.Di dekat mereka tersedia gelas-gelas yang berisi minuman yang sudah siap diminum.\n\n6.Di dalamnya terdapat bantal-bantal tersusun yang dapat dipergunakan menurut selera mereka, duduk di atasnya atau dipakai untuk bersandar dan sebagainya.\n\n7.Di sana terdapat pula permadani yang indah dan terhampar pada setiap tempat.\n\n8.Terdapat segala macam kenikmatan rohani dan jasmani yang jauh dari yang dapat kita bayangkan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 17, 'اَفَلَا يَنْظُرُوْنَ اِلَى الْاِبِلِ كَيْفَ خُلِقَتْۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka tidakkah mereka memperhatikan unta, bagaimana diciptakan?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah mempertanyakan apakah mereka tidak memperhatikan bagaimana unta, yang ada di depan mata mereka dan dipergunakan setiap waktu, diciptakan. Bagaimana pula langit yang berada di tempat yang tinggi tanpa tiang; bagaimana gunung-gunung dipancangkan dengan kukuh, tidak bergoyang dan dijadikan petunjuk bagi orang yang dalam perjalanan. Di atasnya terdapat danau dan mata air yang dapat dipergunakan untuk keperluan manusia, mengairi tumbuh-tumbuhan, dan memberi minum binatang ternak. Bagaimana pula bumi dihamparkan sebagai tempat tinggal bagi manusia.\n\nApabila mereka telah memperhatikan semua itu dengan seksama, tentu mereka akan mengakui bahwa penciptanya dapat membangkitkan manusia kembali pada hari Kiamat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 18, 'وَاِلَى السَّمَاۤءِ كَيْفَ رُفِعَتْۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan langit, bagaimana ditinggikan?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah mempertanyakan apakah mereka tidak memperhatikan bagaimana unta, yang ada di depan mata mereka dan dipergunakan setiap waktu, diciptakan. Bagaimana pula langit yang berada di tempat yang tinggi tanpa tiang; bagaimana gunung-gunung dipancangkan dengan kukuh, tidak bergoyang dan dijadikan petunjuk bagi orang yang dalam perjalanan. Di atasnya terdapat danau dan mata air yang dapat dipergunakan untuk keperluan manusia, mengairi tumbuh-tumbuhan, dan memberi minum binatang ternak. Bagaimana pula bumi dihamparkan sebagai tempat tinggal bagi manusia.\n\nApabila mereka telah memperhatikan semua itu dengan seksama, tentu mereka akan mengakui bahwa penciptanya dapat membangkitkan manusia kembali pada hari Kiamat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 19, 'وَاِلَى الْجِبَالِ كَيْفَ نُصِبَتْۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan gunung-gunung bagaimana ditegakkan?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah mempertanyakan apakah mereka tidak memperhatikan bagaimana unta, yang ada di depan mata mereka dan dipergunakan setiap waktu, diciptakan. Bagaimana pula langit yang berada di tempat yang tinggi tanpa tiang; bagaimana gunung-gunung dipancangkan dengan kukuh, tidak bergoyang dan dijadikan petunjuk bagi orang yang dalam perjalanan. Di atasnya terdapat danau dan mata air yang dapat dipergunakan untuk keperluan manusia, mengairi tumbuh-tumbuhan, dan memberi minum binatang ternak. Bagaimana pula bumi dihamparkan sebagai tempat tinggal bagi manusia.\n\nApabila mereka telah memperhatikan semua itu dengan seksama, tentu mereka akan mengakui bahwa penciptanya dapat membangkitkan manusia kembali pada hari Kiamat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 20 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 20, 'وَاِلَى الْاَرْضِ كَيْفَ سُطِحَتْۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 20);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 20;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan bumi bagaimana dihamparkan?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah mempertanyakan apakah mereka tidak memperhatikan bagaimana unta, yang ada di depan mata mereka dan dipergunakan setiap waktu, diciptakan. Bagaimana pula langit yang berada di tempat yang tinggi tanpa tiang; bagaimana gunung-gunung dipancangkan dengan kukuh, tidak bergoyang dan dijadikan petunjuk bagi orang yang dalam perjalanan. Di atasnya terdapat danau dan mata air yang dapat dipergunakan untuk keperluan manusia, mengairi tumbuh-tumbuhan, dan memberi minum binatang ternak. Bagaimana pula bumi dihamparkan sebagai tempat tinggal bagi manusia.\n\nApabila mereka telah memperhatikan semua itu dengan seksama, tentu mereka akan mengakui bahwa penciptanya dapat membangkitkan manusia kembali pada hari Kiamat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 21 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 21, 'فَذَكِّرْۗ اِنَّمَآ اَنْتَ مُذَكِّرٌۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 21);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 21;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka berilah peringatan, karena sesungguhnya engkau (Muhammad) hanyalah pemberi peringatan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah memerintahkan Nabi Muhammad agar memberi peringatan dan petunjuk serta menyampaikan agama-Nya kepada umat manusia, karena tugasnya tidak lain hanyalah memberi peringatan dengan menyampaikan kabar gembira dan kabar yang menakutkan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 22 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 22, 'لَّسْتَ عَلَيْهِمْ بِمُصَيْطِرٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 22);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 22;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Engkau bukanlah orang yang berkuasa atas mereka,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan bahwa Nabi Muhammad tidak berkuasa menjadikan seseorang beriman. Akan tetapi, Allah-lah yang berkuasa menjadikan manusia beriman. Sementara itu, barang siapa yang berpaling dengan mengingkari kebenaran petunjuk Nabi-Nya, niscaya Allah menghukumnya. Allah berfirman:\n\nDan jika Tuhanmu menghendaki, tentulah beriman semua orang di bumi seluruhnya. Tetapi apakah kamu (hendak) memaksa manusia agar mereka menjadi orang-orang yang beriman? (Yunus/10: 99)\n\nDan Allah berfirman:\n\nKami lebih mengetahui tentang apa yang mereka katakan, dan engkau (Muhammad) bukanlah seorang pemaksa terhadap mereka. Maka berilah peringatan dengan Al-Qur''an kepada siapa pun yang takut kepada ancaman-Ku. (Qaf/50: 45)\n\nBerkaitan dengan hal itu, para juru dakwah cukup menyampaikan pesan-pesan Al-Qur''an dan hadis Nabi sambil mengajak setiap manusia untuk beriman dan beramal saleh, serta masuk ke dalam agama Islam secara keseluruhan (kaffah). Penampilan dan metode dakwah perlu dengan cara yang baik dan tidak boleh bersikap memaksa, sebagaimana firman Allah:\n\nTidak ada paksaan dalam (menganut) agama (Islam), sesungguhnya telah jelas (perbedaan) antara jalan yang benar dengan jalan yang sesat. (al-Baqarah/2: 256)\n\nDan Allah berfirman:\n\nSerulah (manusia) kepada jalan Tuhanmu dengan hikmah dan pengajaran yang baik, dan berdebatlah dengan mereka dengan cara yang baik. Sesungguhnya Tuhanmu, Dialah yang lebih mengetahui siapa yang sesat dari jalan-Nya dan Dialah yang lebih mengetahui siapa yang mendapat petunjuk. (an-Nahl/16: 125)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 23 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 23, 'اِلَّا مَنْ تَوَلّٰى وَكَفَرَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 23);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 23;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'kecuali (jika ada) orang yang berpaling dan kafir,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan bahwa Nabi Muhammad tidak berkuasa menjadikan seseorang beriman. Akan tetapi, Allah-lah yang berkuasa menjadikan manusia beriman. Sementara itu, barang siapa yang berpaling dengan mengingkari kebenaran petunjuk Nabi-Nya, niscaya Allah menghukumnya. Allah berfirman:\n\nDan jika Tuhanmu menghendaki, tentulah beriman semua orang di bumi seluruhnya. Tetapi apakah kamu (hendak) memaksa manusia agar mereka menjadi orang-orang yang beriman? (Yunus/10: 99)\n\nDan Allah berfirman:\n\nKami lebih mengetahui tentang apa yang mereka katakan, dan engkau (Muhammad) bukanlah seorang pemaksa terhadap mereka. Maka berilah peringatan dengan Al-Qur''an kepada siapa pun yang takut kepada ancaman-Ku. (Qaf/50: 45)\n\nBerkaitan dengan hal itu, para juru dakwah cukup menyampaikan pesan-pesan Al-Qur''an dan hadis Nabi sambil mengajak setiap manusia untuk beriman dan beramal saleh, serta masuk ke dalam agama Islam secara keseluruhan (kaffah). Penampilan dan metode dakwah perlu dengan cara yang baik dan tidak boleh bersikap memaksa, sebagaimana firman Allah:\n\nTidak ada paksaan dalam (menganut) agama (Islam), sesungguhnya telah jelas (perbedaan) antara jalan yang benar dengan jalan yang sesat. (al-Baqarah/2: 256)\n\nDan Allah berfirman:\n\nSerulah (manusia) kepada jalan Tuhanmu dengan hikmah dan pengajaran yang baik, dan berdebatlah dengan mereka dengan cara yang baik. Sesungguhnya Tuhanmu, Dialah yang lebih mengetahui siapa yang sesat dari jalan-Nya dan Dialah yang lebih mengetahui siapa yang mendapat petunjuk. (an-Nahl/16: 125)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 24 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 24, 'فَيُعَذِّبُهُ اللّٰهُ الْعَذَابَ الْاَكْبَرَۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 24);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 24;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'maka Allah akan mengazabnya dengan azab yang besar.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan bahwa Nabi Muhammad tidak berkuasa menjadikan seseorang beriman. Akan tetapi, Allah-lah yang berkuasa menjadikan manusia beriman. Sementara itu, barang siapa yang berpaling dengan mengingkari kebenaran petunjuk Nabi-Nya, niscaya Allah menghukumnya. Allah berfirman:\n\nDan jika Tuhanmu menghendaki, tentulah beriman semua orang di bumi seluruhnya. Tetapi apakah kamu (hendak) memaksa manusia agar mereka menjadi orang-orang yang beriman? (Yunus/10: 99)\n\nDan Allah berfirman:\n\nKami lebih mengetahui tentang apa yang mereka katakan, dan engkau (Muhammad) bukanlah seorang pemaksa terhadap mereka. Maka berilah peringatan dengan Al-Qur''an kepada siapa pun yang takut kepada ancaman-Ku. (Qaf/50: 45)\n\nBerkaitan dengan hal itu, para juru dakwah cukup menyampaikan pesan-pesan Al-Qur''an dan hadis Nabi sambil mengajak setiap manusia untuk beriman dan beramal saleh, serta masuk ke dalam agama Islam secara keseluruhan (kaffah). Penampilan dan metode dakwah perlu dengan cara yang baik dan tidak boleh bersikap memaksa, sebagaimana firman Allah:\n\nTidak ada paksaan dalam (menganut) agama (Islam), sesungguhnya telah jelas (perbedaan) antara jalan yang benar dengan jalan yang sesat. (al-Baqarah/2: 256)\n\nDan Allah berfirman:\n\nSerulah (manusia) kepada jalan Tuhanmu dengan hikmah dan pengajaran yang baik, dan berdebatlah dengan mereka dengan cara yang baik. Sesungguhnya Tuhanmu, Dialah yang lebih mengetahui siapa yang sesat dari jalan-Nya dan Dialah yang lebih mengetahui siapa yang mendapat petunjuk. (an-Nahl/16: 125)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 25 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 25, 'اِنَّ اِلَيْنَآ اِيَابَهُمْ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 25);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 25;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, kepada Kamilah mereka kembali,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan bahwa mereka akan kembali kepada-Nya. Tidak ada jalan bagi mereka untuk lari daripada-Nya. Dialah yang akan menghisab mereka atas perbuatan yang telah mereka perbuat di dunia dan kemudian menjatuhkan hukuman-Nya. Ayat-ayat ini adalah penghibur hati bagi Nabi Muhammad dan sebagai obat bagi kesedihan dan kepedihan hatinya atas keingkaran orang-orang kafir itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 26 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 88, 26, 'ثُمَّ اِنَّ عَلَيْنَا حِسَابَهُمْ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 88 AND ayah_number = 26);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 88 AND ayah_number = 26;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'kemudian sesungguhnya (kewajiban) Kamilah membuat perhitungan atas mereka.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menerangkan bahwa mereka akan kembali kepada-Nya. Tidak ada jalan bagi mereka untuk lari daripada-Nya. Dialah yang akan menghisab mereka atas perbuatan yang telah mereka perbuat di dunia dan kemudian menjatuhkan hukuman-Nya. Ayat-ayat ini adalah penghibur hati bagi Nabi Muhammad dan sebagai obat bagi kesedihan dan kepedihan hatinya atas keingkaran orang-orang kafir itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

