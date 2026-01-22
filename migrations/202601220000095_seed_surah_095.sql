-- Seed Surah 95 (At-Tin) with 8 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/95.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (95, 'التين', 'At-Tin', 8, 'Makkiyah', 'Buah Tin')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 95, 1, 'وَالتِّيْنِ وَالزَّيْتُوْنِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 95 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 95 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Demi (buah) Tin dan (buah) Zaitun,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah bersumpah dengan tin dan zaitun. Ada yang berpendapat bahwa tin dan zaitun adalah nama buah yang dikenal sekarang, yang menunjukkan kelebihan kandungan yang dimiliki kedua buah itu. Ada pula yang berpendapat bahwa yang dimaksud adalah tempat banyaknya tin dan zaitun itu tumbuh, yaitu Yerusalem, tempat Nabi Isa lahir dan menerima wahyu.\n\nDua nama tumbuhan, ara (at-tin) dan zaitun (az-zaitun), dan dua tempat (Bukit Sinai”tempat Nabi Musa memerima wahyu; dan kota yang aman (Mekah)”tempat Nabi Muhammad menerima wahyu), digunakan Allah untuk menjadi semacam bukti kebenaran sumpah-Nya. Beberapa ulama menyatakan bahwa at-tin dan az-zaitun sebenarnya juga menunjuk pada dua tempat. At-Tin adalah bukit di sekitar Damaskus, Siria. Sementara az-zaitun adalah tempat Nabi Isa menerima wahyu.\n\nAda juga yang memahami at-tin dan az-zaitun sebagai jenis tumbuhan. Buah ara (at-tin) adalah buah dari sejenis pohon yang banyak tumbuh di kawasan Timur Tengah. Buahnya bila telah matang berwarna coklat, dan mempunyai biji seperti tomat. Rasanya manis dan dinilai memiliki gizi yang tinggi.\n\nPenelitian ilmiah menunjukkan bahwa buah ara memiliki kandungan serat yang sangat tinggi dibandingkan buah lainnya. Satu buah ara yang sudah dikeringkan mengandung 20% serat dari yang dianjurkan untuk dikonsumsi orang setiap harinya. Sebagaimana diketahui, penelitian yang dilakukan dalam beberapa dekade terakhir menunjukkan bahwa serat dari tumbuhan sangat penting agar alat pencernaan dapat berfungsi dengan baik. Serat akan membantu sistem pencernaan dan juga dapat mencegah seseorang terkena kanker usus.\n\nKandungan yang dimiliki oleh buah ara juga sangat menjanjikan. Buah ini mengandung antioksidan yang dapat mencegah timbulnya beberapa penyakit. Antioksidan berperan untuk menetralisir beberapa unsur yang merusak (free radicals), baik yang dihasilkan di dalam tubuh (karena beberapa reaksi kimia dalam pencernaan) atau masuk ke dalam tubuh dari luar. Kandungan Phenol pada buah ara juga tinggi. Bahan Phenol ini berfungsi sebagai antiseptik untuk membunuh mikroba.\n\nPenelitian di Universitas Rutgers di Amerika Serikat mengungkapkan bahwa kandungan yang tinggi dari omega-3, omega-6 dan phytosterol, maka buah ara sangat potensial untuk menurunkan kadar kolesterol dalam darah. Sebagaimana diketahui, omega-3 dan omega-6 tidak dapat diproduksi oleh tubuh. Keduanya hanya dapat diperoleh dari asupan makanan. Kedua jenis asam lemak ini juga sangat berpengaruh terhadap kinerja jantung, otak, dan sistem syaraf. Phytosterol sendiri berfungsi untuk menghilangkan kolesterol yang diperoleh dari daging, sebelum kolesterol tersebut masuk ke dalam sistem jaringan darah.\n\nPohon ara mengandung mineral yang cukup lengkap dibandingkan buah lainnya. Dari 40 gram buah ara mengandung 244 mg kalium (sebanyak 7% dari kebutuhan per hari), 53 mg kalsium (6% dari kebutuhan per hari), dan 1,2 mg besi (6% dari kebutuhan per hari). Tingginya kadar kalsium ini hanya dikalahkan oleh jeruk.\n\nBuah ara juga dipercaya mempercepat penyembuhan pada seseorang yang sedang sakit. Buah ini mengandung bahan-bahan yang diperlukan agar badan si pasien cepat segar dan berenergi. Komponen nutrisi utama yang dikandung buah ara adalah gula. Persentasenya cukup tinggi, yaitu sebanyak 51% sampai 74% dari seluruh bagian buah. \n\nDemikian pula halnya dengan zaitun. Sederetan penelitian telah mengungkapkan berbagai manfaat buah zaitun untuk kesehatan manusia. Zaitun, yang diberi pujian sebagai "pohon yang penuh berkah" dalam ayat 35 Surah an-Nur/24, adalah tumbuhan perdu. Jenis-jenisnya tersebar di kawasan sekitar Laut Tengah. Pohonnya dapat mencapai umur ratusan tahun. Buah zaitun dapat dipanen untuk masa yang sangat panjang.\n\nSebagai bahan makanan, buah zaitun mengandung beberapa unsur yang diperlukan manusia, seperti protein yang cukup tinggi, zat garam, besi dan fosfor, vitamin A dan B. Zaitun juga dikenal sebagai penghalus kulit dan digunakan dalam industri sabun. Minyaknya juga memiliki kelebihan-kelebihan yang tidak dimiliki minyak hewani atau minyak nabati lainnya. Diketahui bahwa minyak zaitun menyehatkan jantung dan pembuluh darah. \n\nBeberapa kegunaan minyak zaitun adalah untuk kesehatan jantung dan pembuluh darah, pencegahan kanker, arthistis, memperlambat proses penuaan, membantu pertumbuhan pada anak-anak, menurunkan tekanan darah tinggi, serta kegunaan lain bagi berbagai organ bagian dalam.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 95, 2, 'وَطُوْرِ سِيْنِيْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 95 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 95 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'demi gunung Sinai,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah itu, Allah bersumpah dengan Gunung Sinai, tempat Nabi Musa menerima wahyu (Taurat). Mengenai bahwa Nabi Musa menerima wahyu di tempat itu dikisahkan pula antara lain dalam Surah al-A''raf/7: 144. Allah berfirman: \n\n(Allah) berfirman, "Wahai Musa! Sesungguhnya Aku memilih (melebihkan) engkau dari manusia yang lain (pada masamu) untuk membawa risalah-Ku dan firman-Ku, sebab itu berpegang-teguhlah kepada apa yang Aku berikan kepadamu dan hendaklah engkau termasuk orang-orang yang bersyukur." (al-A''raf/7: 144)\n\nDalam ayat sebelumnya dikisahkan bagaimana Nabi Musa naik bukit Sinai untuk menerima wahyu. Dalam ayat ini dinyatakan pengangkatan Musa sebagai nabi dan menerima wahyu yaitu kitab Taurat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 95, 3, 'وَهٰذَا الْبَلَدِ الْاَمِيْنِۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 95 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 95 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan demi negeri (Mekah) yang aman ini.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selanjutnya Allah bersumpah dengan "negeri yang damai". Maksudnya adalah Mekah, tempat Nabi Muhammad lahir dan menerima wahyu. Bahwa Mekah adalah tempat asal Nabi Muhammad dinyatakan pula antara lain dalam Surah Muhammad/47: 13:\n\nDan betapa banyak negeri yang (penduduknya) lebih kuat dari (penduduk) negerimu (Muhammad) yang telah mengusirmu itu. Kami telah membinasakan mereka; maka tidak ada seorang pun yang menolong mereka. (Muhammad/47: 13)\n\nDalam ayat ini terdapat informasi bahwa beliau telah dipaksa meninggalkan negeri asalnya, yaitu tempat kelahirannya (Mekah) dan hijrah ke Medinah. \n\nBerdasarkan ayat-ayat lain lebih tepat dipahami bahwa ketiga ayat di atas menyatakan tempat ketiga nabi itu lahir atau menerima tugas kenabian mereka. Di dalam ayat-ayat lain, ketiga nabi itu memang sering disebutkan bersamaan, misalnya dalam Surah as-saff/61: 5-6:\n\nDan (ingatlah) ketika Musa berkata kepada kaumnya, "Wahai kaumku! Mengapa kamu menyakitiku, padahal kamu sungguh mengetahui bahwa sesungguhnya aku utusan Allah kepadamu?" Maka ketika mereka berpaling (dari kebenaran), Allah memalingkan hati mereka. Dan Allah tidak memberi petunjuk kepada kaum yang fasik. Dan (ingatlah) ketika Isa putra Maryam berkata, "Wahai Bani Israil! Sesungguhnya aku utusan Allah kepadamu, yang membenarkan kitab (yang turun) sebelumku, yaitu Taurat dan memberi kabar gembira dengan seorang rasul yang akan datang setelahku, yang namanya Ahmad (Muhammad)." Namun ketika rasul itu datang kepada mereka dengan membawa bukti-bukti yang nyata, mereka berkata, "Ini adalah sihir yang nyata." (as-saff/61: 5-6)\n\nDalam Perjanjian Lama, Kitab Ulangan 33 ayat 2 juga dinyatakan tempat ketiga nabi itu, "Tuhan telah datang dari Sina, dan terbit kepada mereka di Seir, kelihatan Dia dengan gemerlapan cahayanya dari Gunung Paran." Sina adalah Sinai tempat Nabi Musa menerima wahyu, Seir adalah pegunungan di Baitul Maqdis tempat Nabi Isa lahir dan menerima kenabian, dan pegunungan Paran adalah pegunungan Mekah, tempat Nabi Muhammad lahir dan menerima kenabiannya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 95, 4, 'لَقَدْ خَلَقْنَا الْاِنْسَانَ فِيْٓ اَحْسَنِ تَقْوِيْمٍۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 95 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 95 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, Kami telah menciptakan manusia dalam bentuk yang sebaik-baiknya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah bersumpah dengan buah-buahan yang bermanfaat atau tempat-tempat yang mulia itu, Allah menegaskan bahwa Dia telah menciptakan manusia dengan kondisi fisik dan psikis terbaik. Dari segi fisik, misalnya, hanya manusia yang berdiri tegak sehingga otaknya bebas berpikir, yang menghasilkan ilmu, dan tangannya juga bebas bergerak untuk merealisasikan ilmunya itu, sehingga melahirkan teknologi. Bentuk manusia adalah yang paling indah dari semua makhluk-Nya. Dari segi psikis, hanya manusia yang memiliki pikiran dan perasaan yang sempurna. Dan lebih-lebih lagi, hanya manusia yang beragama. Banyak lagi keistimewaan manusia dari segi fisik dan psikis itu yang tidak mungkin diuraikan di sini.\n\nPenegasan Allah bahwa Dia telah menciptakan manusia dengan kondisi fisik dan psikis terbaik itu mengandung arti bahwa fisik dan psikis manusia itu perlu dipelihara dan ditumbuhkembangkan. Fisik manusia dipelihara dan ditumbuhkembangkan dengan memberinya gizi yang cukup dan menjaga kesehatannya. Dan psikis manusia dipelihara dan ditumbuhkembangkan dengan memberinya agama dan pendidikan yang baik. Bila fisik dan psikis manusia dipelihara dan ditumbuhkembangkan, maka manusia akan dapat memberikan kemanfaatan yang besar kepada alam ini. Dengan demikianlah ia akan menjadi makhluk termulia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 95, 5, 'ثُمَّ رَدَدْنٰهُ اَسْفَلَ سَافِلِيْنَۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 95 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 95 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'kemudian Kami kembalikan dia ke tempat yang serendah-rendahnya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Manusia yang paling baik dan sempurna kejadiannya itu akan menjadi tidak berguna bila tidak dijaga pertumbuhannya dan tidak dipelihara kesehatannya. Manusia yang paling sempurna rohaninya itu akan menjadi jahat dan merusak di muka bumi ini bila tidak diberi agama dan pendidikan yang baik. Manusia yang lemah akan menjadi beban, dan manusia yang jahat akan merusak masyarakatnya. Akhirnya di akhirat ia akan masuk neraka. Dengan demikian, manusia itu akan menjadi makhluk terhina.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 95, 6, 'اِلَّا الَّذِيْنَ اٰمَنُوْا وَعَمِلُوا الصّٰلِحٰتِ فَلَهُمْ اَجْرٌ غَيْرُ مَمْنُوْنٍۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 95 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 95 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'kecuali orang-orang yang beriman dan mengerjakan kebajikan; maka mereka akan mendapat pahala yang tidak ada putus-putusnya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Yang terhindar dari kehinaan itu adalah orang-orang yang beriman dan berbuat baik. Dengan demikian, tolok ukur kemuliaan adalah iman dan perbuatan baik itu. Hal itu karena iman berarti mengakui adanya Allah dan nilai-nilai yang diajarkan-Nya. Pengakuan itu akan menjadi jalan hidup atau akidahnya, dan karena telah menjadi akidahnya, maka nilai-nilai itu akan dilaksanakannya dengan sepenuh hatinya. Karena nilai-nilai yang diajarkan Allah seluruhnya baik, maka manusia yang melaksanakannya akan menjadi manusia baik pula. Semakin tinggi akidah seseorang semakin baik perbuatannya, sehingga ia akan menjadi manusia terbaik dan termulia.\n\nManusia yang memiliki sikap hidup yang didasarkan atas iman dan perbuatan baik itu akan memperoleh balasan dari Allah tanpa putus-putusnya. Iman dan perbuatan baiknya itu akan berbuah di dunia, berupa kesentosaan hidup baginya dan bagi masyarakatnya, dan kebahagiaan hidup di akhirat di dalam surga.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 95, 7, 'فَمَا يُكَذِّبُكَ بَعْدُ بِالدِّيْنِۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 95 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 95 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka apa yang menyebabkan (mereka) mendustakanmu (tentang) hari pembalasan setelah (adanya keterangan-keterangan) itu?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah mempertanyakan bila masih ada manusia yang menganggap bohong apa yang disampaikan-Nya kepada Nabi Muhammad bahwa kemuliaan manusia itu diukur dari imannya dan perbuatan baiknya. Hal itu karena iman itulah yang akan membuahkan perbuatan baik, sedangkan keingkaran hanya akan membuahkan kejahatan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 95, 8, 'اَلَيْسَ اللّٰهُ بِاَحْكَمِ الْحٰكِمِيْنَ ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 95 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 95 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bukankah Allah hakim yang paling adil?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Allah menegaskan bahwa menerapkan ketentuan tentang kemuliaan manusia itu didasarkan atas iman dan perbuatan baiknya, itu adalah bukti bahwa Allah Mahabijaksana. Hal itu karena iman itulah yang akan membuahkan perbuatan baik, sedangkan keingkaran hanya akan membuahkan kejahatan, sebagaimana disampaikan di atas. Bila kemuliaan diletakkan pada kekafiran dan kejahatan, itu akan menghancurkan alam ini.'
    )
    ON CONFLICT DO NOTHING;
END $$;

