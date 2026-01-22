-- Seed Surah 91 (Asy-Syams) with 15 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/91.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (91, 'الشمس', 'Asy-Syams', 15, 'Makkiyah', 'Matahari')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 91, 1, 'وَالشَّمْسِ وَضُحٰىهَاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 91 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 91 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demi matahari dan sinarnya pada pagi hari,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bersumpah dengan matahari dan cahayanya pada waktu duha yang sangat terang dan kontras dengan sesaat sebelumnya di mana kegelapan menutup alam ini. Kemudian Allah bersumpah dengan bulan yang bertolak belakang dengan matahari, sebab ia bukan sumber cahaya tetapi hanya menerima cahaya dari matahari.\n\nMenurut kajian ilmiah, cahaya di pagi hari adalah yang paling lengkap kekayaan panjang gelombangnya. Oleh karena itu, cahaya matahari pagi paling baik khasiatnya bagi manusia. Matahari adalah sumber energi utama bagi manusia, sedang cahayanya terdiri dari cahaya tampak, inframerah, dan ultraviolet. Cahaya tampak memiliki tujuh spektrum yang berbeda dan masing-masing memiliki kegunaan yang berbeda bagi tubuh manusia. Adapun inframerah bermanfaat untuk mengurangi rasa sakit pada otot-otot, dan ultraviolet berfungsi sebagai fitokatalis yang mempercepat perubahan pro-vitamin D yang ada pada kulit manusia menjadi vitamin D.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 91, 2, 'وَالْقَمَرِ اِذَا تَلٰىهَاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 91 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 91 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'demi bulan apabila mengiringinya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah bersumpah dengan matahari dan cahayanya pada waktu duha yang sangat terang dan kontras dengan sesaat sebelumnya di mana kegelapan menutup alam ini. Kemudian Allah bersumpah dengan bulan yang bertolak belakang dengan matahari, sebab ia bukan sumber cahaya tetapi hanya menerima cahaya dari matahari.\n\nMenurut kajian ilmiah, cahaya di pagi hari adalah yang paling lengkap kekayaan panjang gelombangnya. Oleh karena itu, cahaya matahari pagi paling baik khasiatnya bagi manusia. Matahari adalah sumber energi utama bagi manusia, sedang cahayanya terdiri dari cahaya tampak, inframerah, dan ultraviolet. Cahaya tampak memiliki tujuh spektrum yang berbeda dan masing-masing memiliki kegunaan yang berbeda bagi tubuh manusia. Adapun inframerah bermanfaat untuk mengurangi rasa sakit pada otot-otot, dan ultraviolet berfungsi sebagai fitokatalis yang mempercepat perubahan pro-vitamin D yang ada pada kulit manusia menjadi vitamin D.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 91, 3, 'وَالنَّهَارِ اِذَا جَلّٰىهَاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 91 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 91 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'demi siang apabila menampakkannya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah bersumpah dengan siang dan malam. Siang menampakkan matahari, sedangkan malam menyembunyikan matahari. Dengan ini, Allah memberikan isyarat tentang sistem perputaran bulan dan bumi terhadap matahari sebagai penanda waktu bagi manusia. Perputaran bumi terhadap matahari menimbulkan sistem penanda waktu syamsiah sedang perputaran bulan terhadap bumi menimbulkan penanda waktu qomariyah. Pergerakan ketiga benda langit ini yang begitu terstruktur tersebut menunjukkan betapa kuasa Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 91, 4, 'وَالَّيْلِ اِذَا يَغْشٰىهَاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 91 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 91 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'demi malam apabila menutupinya (gelap gulita),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah bersumpah dengan siang dan malam. Siang menampakkan matahari, sedangkan malam menyembunyikan matahari. Dengan ini, Allah memberikan isyarat tentang sistem perputaran bulan dan bumi terhadap matahari sebagai penanda waktu bagi manusia. Perputaran bumi terhadap matahari menimbulkan sistem penanda waktu syamsiah sedang perputaran bulan terhadap bumi menimbulkan penanda waktu qomariyah. Pergerakan ketiga benda langit ini yang begitu terstruktur tersebut menunjukkan betapa kuasa Allah.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 91, 5, 'وَالسَّمَاۤءِ وَمَا بَنٰىهَاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 91 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 91 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'demi langit serta pembinaannya (yang menakjubkan),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya lagi, Allah bersumpah dengan langit dan bumi. Langit, yaitu kosmos beserta segala isinya, menyangga langit itu sehingga tetap berfungsi sebagai atap bumi. Dan bumi itu terhampar sehingga menyediakan potensi-potensi yang dapat dimanfaatkan manusia untuk hidup di atasnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 91, 6, 'وَالْاَرْضِ وَمَا طَحٰىهَاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 91 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 91 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'demi bumi serta penghamparannya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya lagi, Allah bersumpah dengan langit dan bumi. Langit, yaitu kosmos beserta segala isinya, menyangga langit itu sehingga tetap berfungsi sebagai atap bumi. Dan bumi itu terhampar sehingga menyediakan potensi-potensi yang dapat dimanfaatkan manusia untuk hidup di atasnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 91, 7, 'وَنَفْسٍ وَّمَا سَوّٰىهَاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 91 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 91 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'demi jiwa serta penyempurnaan (ciptaan)nya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Terakhir, Allah bersumpah dengan diri manusia yang telah Ia ciptakan dengan kondisi fisik dan psikis yang sempurna. Setelah menciptakannya secara sempurna, Allah memasukkan ke dalam diri manusia potensi jahat dan baik.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 91, 8, 'فَاَلْهَمَهَا فُجُوْرَهَا وَتَقْوٰىهَاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 91 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 91 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'maka Dia mengilhamkan kepadanya (jalan) kejahatan dan ketakwaannya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Terakhir, Allah bersumpah dengan diri manusia yang telah Ia ciptakan dengan kondisi fisik dan psikis yang sempurna. Setelah menciptakannya secara sempurna, Allah memasukkan ke dalam diri manusia potensi jahat dan baik.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 91, 9, 'قَدْ اَفْلَحَ مَنْ زَكّٰىهَاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 91 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 91 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sungguh beruntung orang yang menyucikannya (jiwa itu),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menegaskan pesan yang begitu pentingnya sehingga untuk itu Ia perlu bersumpah. Pesan itu adalah bahwa orang yang membersihkan dirinya, yaitu mengendalikan dirinya sehingga hanya mengerjakan perbuatan-perbuatan baik, akan beruntung, yaitu bahagia di dunia dan terutama di akhirat. Sedangkan orang yang mengotori dirinya, yaitu mengikuti hawa nafsunya sehingga melakukan perbuatan-perbuatan dosa, akan celaka, yaitu tidak bahagia di dunia dan di akhirat masuk neraka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 91, 10, 'وَقَدْ خَابَ مَنْ دَسّٰىهَاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 91 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 91 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan sungguh rugi orang yang mengotorinya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat-ayat ini, Allah menegaskan pesan yang begitu pentingnya sehingga untuk itu Ia perlu bersumpah. Pesan itu adalah bahwa orang yang membersihkan dirinya, yaitu mengendalikan dirinya sehingga hanya mengerjakan perbuatan-perbuatan baik, akan beruntung, yaitu bahagia di dunia dan terutama di akhirat. Sedangkan orang yang mengotori dirinya, yaitu mengikuti hawa nafsunya sehingga melakukan perbuatan-perbuatan dosa, akan celaka, yaitu tidak bahagia di dunia dan di akhirat masuk neraka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 91, 11, 'كَذَّبَتْ ثَمُوْدُ بِطَغْوٰىهَآ  ۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 91 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 91 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(Kaum) samud telah mendustakan (rasulnya) karena mereka melampaui batas (zalim),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kaum Samud adalah umat Nabi Saleh. Mereka telah mendustakan dan mengingkari kenabian dan ajaran-ajaran yang dibawa Nabi Saleh dari Allah. Nabi Saleh diberi mukjizat oleh Allah sebagai ujian bagi kaumnya, yaitu seekor unta betina yang dijelmakan dari sebuah batu besar, untuk menandingi keahlian kaum itu yang sangat piawai dalam seni patung dari batu. Bila mereka piawai dalam seni patung sehingga patung itu terlihat bagaikan hidup, maka mukjizat Nabi Saleh adalah menjelmakan seekor unta betina yang benar-benar hidup dari sebuah batu. Akan tetapi, mereka tidak mengakuinya, dan berusaha membunuh unta itu.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 91, 12, 'اِذِ انْۢبَعَثَ اَشْقٰىهَاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 91 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 91 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'ketika bangkit orang yang paling celaka di antara mereka,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Awal kecelakaan bagi kaum Samud adalah ketika tampil seorang yang paling jahat dari mereka, yaitu Qudar bin Salif. Ia adalah seorang yang sangat berani, perkasa, dan bengis. Ia datang memprovokasi kaumnya untuk membunuh unta betina mukjizat Nabi Saleh.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 91, 13, 'فَقَالَ لَهُمْ رَسُوْلُ اللّٰهِ نَاقَةَ اللّٰهِ وَسُقْيٰهَاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 91 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 91 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'lalu Rasul Allah (Saleh) berkata kepada mereka, “(Biarkanlah) unta betina dari Allah ini dengan minumannya.”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Nabi Saleh memperingatkan kaumnya agar tidak mengganggu unta itu. Ia memperingatkan bahwa unta itu adalah mukjizat dari Allah, dan haknya untuk memperoleh minum berselang hari dengan mereka, harus dihormati. Ia memperingatkan pula bahwa bila mereka mengganggunya, mereka akan mendapat bahaya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 91, 14, 'فَكَذَّبُوْهُ فَعَقَرُوْهَاۖ فَدَمْدَمَ عَلَيْهِمْ رَبُّهُمْ بِذَنْۢبِهِمْ فَسَوّٰىهَاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 91 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 91 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Namun mereka mendustakannya dan menyembelihnya, karena itu Tuhan membinasakan mereka karena dosanya, lalu diratakan-Nya (dengan tanah),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Akan tetapi, kaumnya memandang Nabi Saleh bohong, begitu juga unta itu sebagai mukjizat, dan menganggap sepi peringatan Nabi Saleh tersebut. Unta itu mereka tangkap beramai-ramai, lalu Qudar bin Salif membunuhnya dengan cara memotong-motongnya. Akhirnya Allah meratakan negeri mereka dengan tanah, dengan mengirim petir yang menggelegar yang diiringi gempa yang dahsyat, sebagai balasan pembangkangan dan dosa-dosa mereka.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 91, 15, 'وَلَا يَخَافُ عُقْبٰهَا ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 91 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 91 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan Dia tidak takut terhadap akibatnya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah tidak peduli bencana yang Ia timpakan kepada mereka dengan korban yang begitu besar. Hal itu karena pembangkangan mereka yang sudah sangat keterlaluan, yaitu membunuh unta betina (mukjizat) yang diturunkan-Nya kepada nabi-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

