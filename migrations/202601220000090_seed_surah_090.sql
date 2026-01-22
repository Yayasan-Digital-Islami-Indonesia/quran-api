-- Seed Surah 90 (Al-Balad) with 20 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/90.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (90, 'البلد', 'Al-Balad', 20, 'Makkiyah', 'Negeri')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 1, 'لَآ اُقْسِمُ بِهٰذَا الْبَلَدِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Aku bersumpah dengan negeri ini (Mekah),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini secara harfiah terjemahannya, "Aku tidak bersumpah dengan negeri ini." Kata "tidak" (lA) dalam ayat itu berfungsi menguatkan, karena itu maksudnya, "Aku benar-benar bersumpah dengan negeri ini." Atau ayat itu dibaca, "Tidak! Aku bersumpah dengan negeri ini," yang juga bermakna menekankan. \n\nAllah bersumpah dengan kota Mekah, tempat di mana terdapat Ka''bah yang dituju oleh manusia dari segala penjuru semenjak didirikan oleh Nabi Ibrahim sampai sekarang untuk melaksanakan ibadah haji. Di samping itu, kota ini juga menjadi pusat perdagangan semenjak lama sekali. Karena didatangi setiap tahun dari segenap penjuru itu, maka kota itu dinamai juga Ummul-Qura (Induk Negeri-negeri). Kota itu makmur sekalipun sekelilingnya padang pasir.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 2, 'وَاَنْتَ حِلٌّۢ بِهٰذَا الْبَلَدِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan engkau (Muhammad), bertempat di negeri (Mekah) ini,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kata hill dalam ayat itu berarti "bertempat". Maksudnya adalah bahwa kota ini adalah juga tempat lahir Nabi Muhammad yang merupakan nabi terbesar dan terakhir yang membawa agama Islam. Dengan demikian, Allah bersumpah dengan kota Mekah yang agung karena tempat kelahiran manusia agung, yaitu Muhammad saw. Ada pula yang menafsirkan hill dalam ayat itu "halal", yaitu halal bagi Nabi berperang dalam kota itu bila diperangi, apa yang tidak dihalalkan bagi orang lain.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 3, 'وَوَالِدٍ وَّمَا وَلَدَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan demi (pertalian) bapak dan anaknya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bersumpah dengan seorang ayah, yaitu Ibrahim, dan anaknya, yaitu Ismail yang nanti menurunkan Nabi Muhammad. Dengan demikian, Allah bersumpah dengan nenek moyang Nabi Muhammad setelah sebelumnya Allah bersumpah dengan beliau dan kota kelahiran beliau, yang menunjukkan pertalian kedua nabi tersebut. Ada pula yang menafsirkan "ayah" dengan Adam yang merupakan ayah umat manusia dan anak cucunya yang lahir sesudah itu siapa saja.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 4, 'لَقَدْ خَلَقْنَا الْاِنْسَانَ فِيْ كَبَدٍۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, Kami telah menciptakan manusia berada dalam susah payah.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah bersumpah, Allah menyampaikan pesan penting yang hendak dikemukakan-Nya yang karena itu Ia perlu terlebih dahulu bersumpah. Pesan itu adalah bahwa manusia terlahir dalam kesulitan. Maksudnya, manusia tidak bisa lagi hidup tanpa susah payah sebagaimana dialami oleh nenek moyang mereka, Adam dan Hawa, di surga, karena semuanya tersedia. Tetapi mereka harus hidup dengan terlebih dahulu bersusah payah: berusaha, mencari rezeki, mengatasi berbagai rintangan, dan sebagainya. Berdasarkan perjuangan itulah, Allah menilai manusia tersebut. Semakin besar perjuangan yang dilakukan manusia dan semakin besar manfaat yang diberikan hasil perjuangannya itu bagi umat manusia, semakin tinggi nilai manusia itu dalam pandangan Allah. Begitu pulalah Nabi Muhammad di kota ini, beliau perlu berjuang agar kebenaran menjadi nyata dan kebatilan menjadi sirna. Demikian pula seluruh manusia. Oleh karena itu, manusia mati seharusnya meninggalkan jasa.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 5, 'اَيَحْسَبُ اَنْ لَّنْ يَّقْدِرَ عَلَيْهِ اَحَدٌ ۘ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Apakah dia (manusia) itu mengira bahwa tidak ada sesuatu pun yang berkuasa atasnya?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah bertanya apakah manusia yang selalu berada dalam kesulitan, dan untuk bisa hidup harus mampu mengatasi kesulitan itu, dapat menyombongkan dirinya setelah berhasil dalam perjuangan itu. Menyombongkan diri itu misalnya menyangka dirinya begitu kuasanya sehingga berpandangan bahwa tidak akan ada seorang pun yang akan mampu menyaingi dan mengalahkannya, termasuk Allah sendiri. Ia tidak boleh berpandangan demikian karena bila ada seorang yang hebat, pasti akan ada lagi orang yang lebih hebat darinya. Di atas segala yang hebat itu, Allah adalah yang terhebat dari segala yang hebat, sebagaimana difirmankan-Nya:\n\nDan di atas setiap orang yang berpengetahuan ada yang lebih mengetahui. (Yusuf/12: 76)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 6, 'يَقُوْلُ اَهْلَكْتُ مَالًا لُّبَدًاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dia mengatakan, “Aku telah menghabiskan harta yang banyak.” ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kesombongannya itu misalnya berkenaan pengeluarannya untuk membantu orang lain. Pengeluaran itu dalam pandangannya sudah begitu besar, sehingga dianggapnya sia-sia. Ia merasa pengeluaran itu sudah sangat banyak sehingga tidak akan ada seorang pun yang akan mampu menandinginya, karena itu ia menjadi sombong.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 7, 'اَيَحْسَبُ اَنْ لَّمْ يَرَهٗٓ اَحَدٌۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Apakah dia mengira bahwa tidak ada sesuatu pun yang melihatnya?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bertanya mengenai orang yang sombong dengan pengeluarannya itu, "Apakah ia mengira bahwa tidak seorang pun yang melihat perbuatannya itu?" Artinya, bila ia sombong dengan pengeluarannya itu, berarti ia mengorbankan kekayaannya hanya untuk mencari nama, maka pengorbanan itu tidak akan diterima-Nya. Jangan ia menyangka bahwa Allah tidak melihat perbuatannya itu dan tidak mengetahui motif di balik perbuatan baiknya itu, yang tidak diketahui oleh manusia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 8, 'اَلَمْ نَجْعَلْ لَّهٗ عَيْنَيْنِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bukankah Kami telah menjadikan untuknya sepasang mata,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah selanjutnya bertanya mengenai orang itu, "Tidakkah Kami beri ia dua mata?" Artinya, untuk dapat mencari kekayaan, ia perlu dua mata, lalu siapakah yang memberinya dua mata itu bila bukan Allah? Untuk mencari rezeki ia perlu berbicara, lalu siapakah yang telah memberinya lidah dan dua bibir untuk mampu bicara? Dalam membesarkannya, ia telah menyusu pada kedua susu ibunya, siapakah yang telah menyediakan air susu ibunya itu bila bukan Allah? Dengan demikian, keberhasilannya adalah karena bantuan dan kasih sayang Allah. Oleh karena itu, ia tidak perlu menyombongkan dirinya karena hartanya.\n\nDi samping itu, mata, lidah, dan nafsu adalah nikmat Allah kepadanya yang tiada taranya. Ia akan bertemu dengan dua jalan yang disediakan Allah, yaitu jalan yang benar dan jalan yang salah. Ia perlu menggunakan mata, lidah, dan nafsu itu untuk jalan yang diridai oleh Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 9, 'وَلِسَانًا وَّشَفَتَيْنِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan lidah dan sepasang bibir?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah selanjutnya bertanya mengenai orang itu, "Tidakkah Kami beri ia dua mata?" Artinya, untuk dapat mencari kekayaan, ia perlu dua mata, lalu siapakah yang memberinya dua mata itu bila bukan Allah? Untuk mencari rezeki ia perlu berbicara, lalu siapakah yang telah memberinya lidah dan dua bibir untuk mampu bicara? Dalam membesarkannya, ia telah menyusu pada kedua susu ibunya, siapakah yang telah menyediakan air susu ibunya itu bila bukan Allah? Dengan demikian, keberhasilannya adalah karena bantuan dan kasih sayang Allah. Oleh karena itu, ia tidak perlu menyombongkan dirinya karena hartanya.\n\nDi samping itu, mata, lidah, dan nafsu adalah nikmat Allah kepadanya yang tiada taranya. Ia akan bertemu dengan dua jalan yang disediakan Allah, yaitu jalan yang benar dan jalan yang salah. Ia perlu menggunakan mata, lidah, dan nafsu itu untuk jalan yang diridai oleh Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 10, 'وَهَدَيْنٰهُ النَّجْدَيْنِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan Kami telah menunjukkan kepadanya dua jalan (kebajikan dan kejahatan),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah selanjutnya bertanya mengenai orang itu, "Tidakkah Kami beri ia dua mata?" Artinya, untuk dapat mencari kekayaan, ia perlu dua mata, lalu siapakah yang memberinya dua mata itu bila bukan Allah? Untuk mencari rezeki ia perlu berbicara, lalu siapakah yang telah memberinya lidah dan dua bibir untuk mampu bicara? Dalam membesarkannya, ia telah menyusu pada kedua susu ibunya, siapakah yang telah menyediakan air susu ibunya itu bila bukan Allah? Dengan demikian, keberhasilannya adalah karena bantuan dan kasih sayang Allah. Oleh karena itu, ia tidak perlu menyombongkan dirinya karena hartanya.\n\nDi samping itu, mata, lidah, dan nafsu adalah nikmat Allah kepadanya yang tiada taranya. Ia akan bertemu dengan dua jalan yang disediakan Allah, yaitu jalan yang benar dan jalan yang salah. Ia perlu menggunakan mata, lidah, dan nafsu itu untuk jalan yang diridai oleh Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 11, 'فَلَا اقْتَحَمَ الْعَقَبَةَ ۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'tetapi dia tidak menempuh jalan yang mendaki dan sukar?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah bertanya, "Apakah tidak sebaiknya ia merapikan jalan mendaki yang terjal?" Artinya, manusia seharusnya bekerja keras dan berjuang semaksimal mungkin mengatasi segala rintangan supaya berhasil menyelesaikan pekerjaan-pekerjaan besar dan meninggalkan jasa-jasa besar.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 12, 'وَمَآ اَدْرٰىكَ مَا الْعَقَبَةُ ۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan tahukah kamu apakah jalan yang mendaki dan sukar itu?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bertanya kepada manusia untuk memotivasi mereka, "Apakah jalan mendaki yang terjal itu?" Artinya, pekerjaan-pekerjaan besar itu memang sulit dikerjakan tetapi harus diatasi.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 13, 'فَكُّ رَقَبَةٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(yaitu) melepaskan perbudakan (hamba sahaya),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menegaskan bahwa pekerjaan besar yang sulit dilaksanakan itu adalah memerdekakan budak. Hal itu karena perbudakan pada waktu itu sudah sangat dalam merasuk ke dalam kehidupan masyarakat sehari-hari, baik di dunia Arab maupun di luarnya. Segala aktivitas manusia, seperti perdagangan, pertanian, kemiliteran, bahkan kehidupan sehari-hari, dan sebagainya, tidak akan bisa berjalan dengan baik pada waktu itu tanpa adanya budak yang mengerjakan pekerjaan-pekerjaan berat. Namun Allah meminta umat Islam agar menghapus perbudakan. Pelaksanaannya memang tidak sekaligus, tetapi berangsur-angsur. Seorang tuan seharusnya dapat memerdekakan budaknya, inilah yang dirasakan mereka sangat berat. Pemerdekaan budak juga dilakukan melalui cara-cara lain, misalnya dengan sanksi pelanggaran-pelanggaran yang hukumannya adalah memerdekakan budak. Juga dengan cara memberi kesempatan kepada budak itu untuk menebus dirinya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 14, 'اَوْ اِطْعَامٌ فِيْ يَوْمٍ ذِيْ مَسْغَبَةٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'atau memberi makan pada hari terjadi kelaparan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pekerjaan besar dan berat lainnya yang sulit dikerjakan adalah memberi makan orang pada musim kelaparan, ekonomi morat-marit, dan sebagainya. Hal itu karena yang memberi juga membutuhkannya. Namun demikian, Allah menguji umat Islam, apakah mereka mau dan mampu mengerjakannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 15, 'يَّتِيْمًا ذَا مَقْرَبَةٍۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(kepada) anak yatim yang ada hubungan kerabat,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Memberi makan orang yang lapar pada masa kelaparan pertama sekali ditujukan pada anak-anak yatim yang ada hubungan keluarga dengan pemberi. Siapa lagi yang akan mau memperhatikan mereka bila bukan keluarga sendiri karena orang tuanya sudah tiada? Perhatian pada keluarga memang harus didahulukan sebagaimana sabda Rasulullah saw berikut:\n\nSedekah kepada orang miskin adalah sedekah (satu amal), sedekah kepada orang yang punya hubungan keluarga ada dua amal, sedekah dan silaturrahim. (Riwayat Ahmad, at-Tirmidhi, dan an-Nasa''i).\n\nSelanjutnya yang perlu mendapat perhatian utama adalah orang-orang miskin yang terhempas ke tanah, yaitu orang-orang yang begitu miskinnya sehingga tidak punya tempat untuk berteduh. Mereka misalnya tunawisma, gelandangan, anak jalanan, dan sebagainya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 16, 'اَوْ مِسْكِيْنًا ذَا مَتْرَبَةٍۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'atau orang miskin yang sangat fakir.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Memberi makan orang yang lapar pada masa kelaparan pertama sekali ditujukan pada anak-anak yatim yang ada hubungan keluarga dengan pemberi. Siapa lagi yang akan mau memperhatikan mereka bila bukan keluarga sendiri karena orang tuanya sudah tiada? Perhatian pada keluarga memang harus didahulukan sebagaimana sabda Rasulullah saw berikut:\n\nSedekah kepada orang miskin adalah sedekah (satu amal), sedekah kepada orang yang punya hubungan keluarga ada dua amal, sedekah dan silaturrahim. (Riwayat Ahmad, at-Tirmidhi, dan an-Nasa''i).\n\nSelanjutnya yang perlu mendapat perhatian utama adalah orang-orang miskin yang terhempas ke tanah, yaitu orang-orang yang begitu miskinnya sehingga tidak punya tempat untuk berteduh. Mereka misalnya tunawisma, gelandangan, anak jalanan, dan sebagainya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 17, 'ثُمَّ كَانَ مِنَ الَّذِيْنَ اٰمَنُوْا وَتَوَاصَوْا بِالصَّبْرِ وَتَوَاصَوْا بِالْمَرْحَمَةِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Kemudian dia termasuk orang-orang yang beriman dan saling berpesan untuk bersabar dan saling berpesan untuk berkasih sayang.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pekerjaan berat lainnya adalah beriman dan saling menasihati untuk sabar dan menyayangi antara sesama Muslim. Sabar adalah kemampuan menahan diri, tabah menghadapi kesulitan, dan usaha keras mengatasi kesulitan tersebut. Kaum Muslimin harus mampu membuktikan imannya dengan melaksanakan sikap sabar itu, dan mendorong kaum Muslimin lainnya untuk melaksanakannya.\n\nJuga yang berat melaksanakannya adalah menyayangi orang lain seperti menyayangi diri sendiri atau keluarga sendiri. Akan tetapi, umat Islam harus mampu membuktikan imannya dengan melaksanakan sikap saling menyayangi itu, sebagaimana juga diperintahkan Rasulullah:\n\nOrang yang penyayang disayang oleh Yang Maha Penyayang. Sayangilah orang yang ada di bumi, maka yang ada di langit akan menyayangi kalian. (Riwayat at-Tirmidhi, Abu Dawud, dan Ahmad dari Abdullah bin ''Amr).'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 18, 'اُولٰۤىِٕكَ اَصْحٰبُ الْمَيْمَنَةِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mereka (orang-orang yang beriman dan saling berpesan itu) adalah golongan kanan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kaum Muslimin yang berhasil melaksanakan pekerjaan-pekerjaan sulit di atas digolongkan sebagai "golongan kanan". Balasan bagi "golongan kanan" tersebut adalah surga yang penuh nikmat, sebagaimana dinyatakan dalam Surah al-Waqi''ah/56: 27-40.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 19, 'وَالَّذِيْنَ كَفَرُوْا بِاٰيٰتِنَا هُمْ اَصْحٰبُ الْمَشْئَمَةِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan orang-orang yang kafir kepada ayat-ayat Kami, mereka itu adalah golongan kiri.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Mereka yang ingkar tidak mau melaksanakan pekerjaan-pekerjaan besar dan sulit itu. Mereka disebut ashabul-masy''amah, yaitu golongan kiri. Tempat mereka adalah neraka yang tertutup rapat, sehingga neraka begitu luar biasa panasnya. Mereka itu tentu akan sangat menderita di dalamnya. Dengan demikian, ia menemukan kesulitan hidup yang tiada taranya di akhirat, tidak sebanding dengan kesulitan mengerjakan perbuat-perbuatan baik waktu di dunia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 20 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 90, 20, 'عَلَيْهِمْ نَارٌ مُّؤْصَدَةٌ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 90 AND ayah_number = 20);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 90 AND ayah_number = 20;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mereka berada dalam neraka yang ditutup rapat.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Mereka yang ingkar tidak mau melaksanakan pekerjaan-pekerjaan besar dan sulit itu. Mereka disebut ashabul-masy''amah, yaitu golongan kiri. Tempat mereka adalah neraka yang tertutup rapat, sehingga neraka begitu luar biasa panasnya. Mereka itu tentu akan sangat menderita di dalamnya. Dengan demikian, ia menemukan kesulitan hidup yang tiada taranya di akhirat, tidak sebanding dengan kesulitan mengerjakan perbuat-perbuatan baik waktu di dunia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

