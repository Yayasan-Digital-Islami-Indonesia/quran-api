-- Seed Surah 78 (An-Naba') with 40 ayats, Indonesian translations, and full Kemenag tafsir
-- Source: https://raw.githubusercontent.com/rioastamal/quran-json/master/surah/78.json

-- Insert Surah
INSERT INTO surah (number, name_arabic, name_latin, total_ayat, surah_type, meaning)
VALUES (78, 'النبأ', 'An-Naba''', 40, 'Makkiyah', 'Berita Besar')
ON CONFLICT (number) DO NOTHING;

-- Insert Ayat 1 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 1, 'عَمَّ يَتَسَاۤءَلُوْنَۚ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 1);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 1;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Tentang apakah mereka saling bertanya-tanya?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Orang-orang musyrik Mekah ketika berkumpul di tempat pertemuan mereka yang berada di dekat Baitullah, sering membicarakan keadaan Nabi Muhammad dan Kitab Al-Qur''an yang dibawanya. Mereka sering bertanya satu sama lain bahwa apakah Muhammad itu seorang tukang sihir, penyair, atau seorang dukun tukang tenung yang terkena pengaruh buruk oleh berhala-berhala mereka? Mereka juga bertanya-tanya apakah Al-Qur''an itu sihir, syair, atau mantra-mantra saja? Masing-masing mengemukakan pendapat sesuai dengan hawa nafsu dan angan-angan mereka, sedangkan Nabi Muhammad sendiri dengan sikap yang tenang menyampaikan seruannya berdasarkan ayat-ayat Al-Qur''an yang memberi sinar penerangan kepada manusia menuju jalan kebenaran dan petunjuk yang lurus.\n\nSelain itu mereka sering bercakap-cakap tentang hari kebangkitan sehingga sering menimbulkan perdebatan, sebab di antara mereka ada yang mengingkarinya dan beranggapan bahwa setelah mati habislah urusan mereka. Tidak ada lagi kebangkitan setelah mati. Mereka berpendapat bahwa manusia itu lahir ke dunia lalu ia mati dan ditelan bumi karena tidak ada yang membinasakan mereka kecuali masa atau waktu saja. Di sisi lain, ada pula di antara mereka yang berpendapat bahwa yang dibangkitkan itu hanya arwah saja dan bukan jasad yang telah habis dimakan bumi. Ada pula di antara mereka yang menjumpai salah seorang sahabat Nabi dan menanyakan tentang hal itu dengan sikap mencemoohkan.\n\nSehubungan dengan sikap mereka yang demikian itu, surah ini turun untuk menolak keingkaran mereka, dan mengemukakan argumen yang nyata bahwa Allah benar-benar Mahakuasa membangkitkan mereka kembali setelah mati, walaupun mereka telah menjadi tanah, dimakan binatang buas, ditelan ikan di laut, terbakar api dan diterbangkan angin, atau sebab lainnya.\n\nDalam ayat ini, Allah mencela perselisihan orang-orang kafir Mekah mengenai hari kebangkitan dengan mengatakan, "Tentang apakah orang-orang musyrik di kalangan penduduk Mekah itu saling bertanya-tanya?"\n\nAllah menjawab pertanyaan mereka itu dengan firman-Nya. Yang dimaksud dengan berita yang sangat besar dalam ayat ini ialah berita tentang hari Kiamat. Disebut berita yang sangat besar karena hari Kiamat itu amat besar huru-haranya sebagaimana disebutkan dalam firman Allah:\n\nWahai manusia! Bertakwalah kepada Tuhanmu; sungguh, guncangan (hari) Kiamat itu adalah suatu (kejadian) yang sangat besar. (Ingatlah) pada hari ketika kamu melihatnya (guncangan itu), semua perempuan yang menyusui anaknya akan lalai terhadap anak yang disusuinya, dan setiap perempuan yang hamil akan keguguran kandungannya, dan kamu melihat manusia dalam keadaan mabuk, padahal sebenarnya mereka tidak mabuk, tetapi azab Allah itu sangat keras. (al-hajj/22: 1-2)\n\nMeskipun begitu, orang-orang musyrik masih meragukan bahkan banyak yang tidak percaya, sebagaimana diterangkan Allah dalam firman-Nya:\n\n(Kehidupan itu) tidak lain hanyalah kehidupan kita di dunia ini, (di sanalah) kita mati dan hidup dan tidak akan dibangkitkan (lagi). (al-Mu''minun/23: 37)\n\nFirman Allah:\n\nKami tidak tahu apakah hari Kiamat itu, kami hanyalah menduga-duga saja, dan kami tidak yakin. (al-Jatsiyah/45: 32)\n\nAdapun hikmah Ilahi menyampaikan persoalan ini dalam bentuk pertanyaan dan jawaban adalah agar lebih mendekatkan kepada pengertian dan penjelasan, seperti tercantum dalam firman Allah:\n\n(Lalu Allah berfirman), "Milik siapakah kerajaan pada hari ini?" Milik Allah Yang Maha Esa, Maha Mengalahkan. (Gafir/40: 16)\n\nKemudian Allah menjawab pertanyaan mereka dengan nada ancaman, "Sekali-kali tidak. Jauh sekali dari kebenaran apa yang mereka anggap itu. Nanti mereka akan mengetahui pada waktu menyaksikan keadaan yang sebenarnya pada hari Kiamat yang selalu mereka ingkari."\n\nSebaiknya mereka jangan memperolok-olokkan karena mereka kelak pasti akan mengetahui keadaan yang sebenarnya. Apa-apa yang diragukan itu pasti akan mereka alami. Allah menguatkan firman-Nya itu dengan mengulang pernyataan itu sekali lagi.\n\nKemudian Allah menerangkan kekuasaan-Nya yang Mahaagung dan tanda-tanda rahmat-Nya yang sering dilupakan oleh mereka. Padahal tanda-tanda itu tampak jelas di hadapan mata. Allah mengemukakan sembilan perkara yang dapat mereka saksikan dengan mata sebagai bukti-bukti yang menunjukkan kekuasaan-Nya, seperti disebutkan pada ayat-ayat berikut, yaitu dari ayat 6 sampai ayat 14.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 2 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 2, 'عَنِ النَّبَاِ الْعَظِيْمِۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 2);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 2;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Tentang berita yang besar (hari kebangkitan),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Orang-orang musyrik Mekah ketika berkumpul di tempat pertemuan mereka yang berada di dekat Baitullah, sering membicarakan keadaan Nabi Muhammad dan Kitab Al-Qur''an yang dibawanya. Mereka sering bertanya satu sama lain bahwa apakah Muhammad itu seorang tukang sihir, penyair, atau seorang dukun tukang tenung yang terkena pengaruh buruk oleh berhala-berhala mereka? Mereka juga bertanya-tanya apakah Al-Qur''an itu sihir, syair, atau mantra-mantra saja? Masing-masing mengemukakan pendapat sesuai dengan hawa nafsu dan angan-angan mereka, sedangkan Nabi Muhammad sendiri dengan sikap yang tenang menyampaikan seruannya berdasarkan ayat-ayat Al-Qur''an yang memberi sinar penerangan kepada manusia menuju jalan kebenaran dan petunjuk yang lurus.\n\nSelain itu mereka sering bercakap-cakap tentang hari kebangkitan sehingga sering menimbulkan perdebatan, sebab di antara mereka ada yang mengingkarinya dan beranggapan bahwa setelah mati habislah urusan mereka. Tidak ada lagi kebangkitan setelah mati. Mereka berpendapat bahwa manusia itu lahir ke dunia lalu ia mati dan ditelan bumi karena tidak ada yang membinasakan mereka kecuali masa atau waktu saja. Di sisi lain, ada pula di antara mereka yang berpendapat bahwa yang dibangkitkan itu hanya arwah saja dan bukan jasad yang telah habis dimakan bumi. Ada pula di antara mereka yang menjumpai salah seorang sahabat Nabi dan menanyakan tentang hal itu dengan sikap mencemoohkan.\n\nSehubungan dengan sikap mereka yang demikian itu, surah ini turun untuk menolak keingkaran mereka, dan mengemukakan argumen yang nyata bahwa Allah benar-benar Mahakuasa membangkitkan mereka kembali setelah mati, walaupun mereka telah menjadi tanah, dimakan binatang buas, ditelan ikan di laut, terbakar api dan diterbangkan angin, atau sebab lainnya.\n\nDalam ayat ini, Allah mencela perselisihan orang-orang kafir Mekah mengenai hari kebangkitan dengan mengatakan, "Tentang apakah orang-orang musyrik di kalangan penduduk Mekah itu saling bertanya-tanya?"\n\nAllah menjawab pertanyaan mereka itu dengan firman-Nya. Yang dimaksud dengan berita yang sangat besar dalam ayat ini ialah berita tentang hari Kiamat. Disebut berita yang sangat besar karena hari Kiamat itu amat besar huru-haranya sebagaimana disebutkan dalam firman Allah:\n\nWahai manusia! Bertakwalah kepada Tuhanmu; sungguh, guncangan (hari) Kiamat itu adalah suatu (kejadian) yang sangat besar. (Ingatlah) pada hari ketika kamu melihatnya (guncangan itu), semua perempuan yang menyusui anaknya akan lalai terhadap anak yang disusuinya, dan setiap perempuan yang hamil akan keguguran kandungannya, dan kamu melihat manusia dalam keadaan mabuk, padahal sebenarnya mereka tidak mabuk, tetapi azab Allah itu sangat keras. (al-hajj/22: 1-2)\n\nMeskipun begitu, orang-orang musyrik masih meragukan bahkan banyak yang tidak percaya, sebagaimana diterangkan Allah dalam firman-Nya:\n\n(Kehidupan itu) tidak lain hanyalah kehidupan kita di dunia ini, (di sanalah) kita mati dan hidup dan tidak akan dibangkitkan (lagi). (al-Mu''minun/23: 37)\n\nFirman Allah:\n\nKami tidak tahu apakah hari Kiamat itu, kami hanyalah menduga-duga saja, dan kami tidak yakin. (al-Jatsiyah/45: 32)\n\nAdapun hikmah Ilahi menyampaikan persoalan ini dalam bentuk pertanyaan dan jawaban adalah agar lebih mendekatkan kepada pengertian dan penjelasan, seperti tercantum dalam firman Allah:\n\n(Lalu Allah berfirman), "Milik siapakah kerajaan pada hari ini?" Milik Allah Yang Maha Esa, Maha Mengalahkan. (Gafir/40: 16)\n\nKemudian Allah menjawab pertanyaan mereka dengan nada ancaman, "Sekali-kali tidak. Jauh sekali dari kebenaran apa yang mereka anggap itu. Nanti mereka akan mengetahui pada waktu menyaksikan keadaan yang sebenarnya pada hari Kiamat yang selalu mereka ingkari."\n\nSebaiknya mereka jangan memperolok-olokkan karena mereka kelak pasti akan mengetahui keadaan yang sebenarnya. Apa-apa yang diragukan itu pasti akan mereka alami. Allah menguatkan firman-Nya itu dengan mengulang pernyataan itu sekali lagi.\n\nKemudian Allah menerangkan kekuasaan-Nya yang Mahaagung dan tanda-tanda rahmat-Nya yang sering dilupakan oleh mereka. Padahal tanda-tanda itu tampak jelas di hadapan mata. Allah mengemukakan sembilan perkara yang dapat mereka saksikan dengan mata sebagai bukti-bukti yang menunjukkan kekuasaan-Nya, seperti disebutkan pada ayat-ayat berikut, yaitu dari ayat 6 sampai ayat 14.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 3 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 3, 'الَّذِيْ هُمْ فِيْهِ مُخْتَلِفُوْنَۗ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 3);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 3;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'yang dalam hal itu mereka berselisih.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Orang-orang musyrik Mekah ketika berkumpul di tempat pertemuan mereka yang berada di dekat Baitullah, sering membicarakan keadaan Nabi Muhammad dan Kitab Al-Qur''an yang dibawanya. Mereka sering bertanya satu sama lain bahwa apakah Muhammad itu seorang tukang sihir, penyair, atau seorang dukun tukang tenung yang terkena pengaruh buruk oleh berhala-berhala mereka? Mereka juga bertanya-tanya apakah Al-Qur''an itu sihir, syair, atau mantra-mantra saja? Masing-masing mengemukakan pendapat sesuai dengan hawa nafsu dan angan-angan mereka, sedangkan Nabi Muhammad sendiri dengan sikap yang tenang menyampaikan seruannya berdasarkan ayat-ayat Al-Qur''an yang memberi sinar penerangan kepada manusia menuju jalan kebenaran dan petunjuk yang lurus.\n\nSelain itu mereka sering bercakap-cakap tentang hari kebangkitan sehingga sering menimbulkan perdebatan, sebab di antara mereka ada yang mengingkarinya dan beranggapan bahwa setelah mati habislah urusan mereka. Tidak ada lagi kebangkitan setelah mati. Mereka berpendapat bahwa manusia itu lahir ke dunia lalu ia mati dan ditelan bumi karena tidak ada yang membinasakan mereka kecuali masa atau waktu saja. Di sisi lain, ada pula di antara mereka yang berpendapat bahwa yang dibangkitkan itu hanya arwah saja dan bukan jasad yang telah habis dimakan bumi. Ada pula di antara mereka yang menjumpai salah seorang sahabat Nabi dan menanyakan tentang hal itu dengan sikap mencemoohkan.\n\nSehubungan dengan sikap mereka yang demikian itu, surah ini turun untuk menolak keingkaran mereka, dan mengemukakan argumen yang nyata bahwa Allah benar-benar Mahakuasa membangkitkan mereka kembali setelah mati, walaupun mereka telah menjadi tanah, dimakan binatang buas, ditelan ikan di laut, terbakar api dan diterbangkan angin, atau sebab lainnya.\n\nDalam ayat ini, Allah mencela perselisihan orang-orang kafir Mekah mengenai hari kebangkitan dengan mengatakan, "Tentang apakah orang-orang musyrik di kalangan penduduk Mekah itu saling bertanya-tanya?"\n\nAllah menjawab pertanyaan mereka itu dengan firman-Nya. Yang dimaksud dengan berita yang sangat besar dalam ayat ini ialah berita tentang hari Kiamat. Disebut berita yang sangat besar karena hari Kiamat itu amat besar huru-haranya sebagaimana disebutkan dalam firman Allah:\n\nWahai manusia! Bertakwalah kepada Tuhanmu; sungguh, guncangan (hari) Kiamat itu adalah suatu (kejadian) yang sangat besar. (Ingatlah) pada hari ketika kamu melihatnya (guncangan itu), semua perempuan yang menyusui anaknya akan lalai terhadap anak yang disusuinya, dan setiap perempuan yang hamil akan keguguran kandungannya, dan kamu melihat manusia dalam keadaan mabuk, padahal sebenarnya mereka tidak mabuk, tetapi azab Allah itu sangat keras. (al-hajj/22: 1-2)\n\nMeskipun begitu, orang-orang musyrik masih meragukan bahkan banyak yang tidak percaya, sebagaimana diterangkan Allah dalam firman-Nya:\n\n(Kehidupan itu) tidak lain hanyalah kehidupan kita di dunia ini, (di sanalah) kita mati dan hidup dan tidak akan dibangkitkan (lagi). (al-Mu''minun/23: 37)\n\nFirman Allah:\n\nKami tidak tahu apakah hari Kiamat itu, kami hanyalah menduga-duga saja, dan kami tidak yakin. (al-Jatsiyah/45: 32)\n\nAdapun hikmah Ilahi menyampaikan persoalan ini dalam bentuk pertanyaan dan jawaban adalah agar lebih mendekatkan kepada pengertian dan penjelasan, seperti tercantum dalam firman Allah:\n\n(Lalu Allah berfirman), "Milik siapakah kerajaan pada hari ini?" Milik Allah Yang Maha Esa, Maha Mengalahkan. (Gafir/40: 16)\n\nKemudian Allah menjawab pertanyaan mereka dengan nada ancaman, "Sekali-kali tidak. Jauh sekali dari kebenaran apa yang mereka anggap itu. Nanti mereka akan mengetahui pada waktu menyaksikan keadaan yang sebenarnya pada hari Kiamat yang selalu mereka ingkari."\n\nSebaiknya mereka jangan memperolok-olokkan karena mereka kelak pasti akan mengetahui keadaan yang sebenarnya. Apa-apa yang diragukan itu pasti akan mereka alami. Allah menguatkan firman-Nya itu dengan mengulang pernyataan itu sekali lagi.\n\nKemudian Allah menerangkan kekuasaan-Nya yang Mahaagung dan tanda-tanda rahmat-Nya yang sering dilupakan oleh mereka. Padahal tanda-tanda itu tampak jelas di hadapan mata. Allah mengemukakan sembilan perkara yang dapat mereka saksikan dengan mata sebagai bukti-bukti yang menunjukkan kekuasaan-Nya, seperti disebutkan pada ayat-ayat berikut, yaitu dari ayat 6 sampai ayat 14.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 4 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 4, 'كَلَّا سَيَعْلَمُوْنَۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 4);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 4;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Tidak! Kelak mereka akan mengetahui,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Orang-orang musyrik Mekah ketika berkumpul di tempat pertemuan mereka yang berada di dekat Baitullah, sering membicarakan keadaan Nabi Muhammad dan Kitab Al-Qur''an yang dibawanya. Mereka sering bertanya satu sama lain bahwa apakah Muhammad itu seorang tukang sihir, penyair, atau seorang dukun tukang tenung yang terkena pengaruh buruk oleh berhala-berhala mereka? Mereka juga bertanya-tanya apakah Al-Qur''an itu sihir, syair, atau mantra-mantra saja? Masing-masing mengemukakan pendapat sesuai dengan hawa nafsu dan angan-angan mereka, sedangkan Nabi Muhammad sendiri dengan sikap yang tenang menyampaikan seruannya berdasarkan ayat-ayat Al-Qur''an yang memberi sinar penerangan kepada manusia menuju jalan kebenaran dan petunjuk yang lurus.\n\nSelain itu mereka sering bercakap-cakap tentang hari kebangkitan sehingga sering menimbulkan perdebatan, sebab di antara mereka ada yang mengingkarinya dan beranggapan bahwa setelah mati habislah urusan mereka. Tidak ada lagi kebangkitan setelah mati. Mereka berpendapat bahwa manusia itu lahir ke dunia lalu ia mati dan ditelan bumi karena tidak ada yang membinasakan mereka kecuali masa atau waktu saja. Di sisi lain, ada pula di antara mereka yang berpendapat bahwa yang dibangkitkan itu hanya arwah saja dan bukan jasad yang telah habis dimakan bumi. Ada pula di antara mereka yang menjumpai salah seorang sahabat Nabi dan menanyakan tentang hal itu dengan sikap mencemoohkan.\n\nSehubungan dengan sikap mereka yang demikian itu, surah ini turun untuk menolak keingkaran mereka, dan mengemukakan argumen yang nyata bahwa Allah benar-benar Mahakuasa membangkitkan mereka kembali setelah mati, walaupun mereka telah menjadi tanah, dimakan binatang buas, ditelan ikan di laut, terbakar api dan diterbangkan angin, atau sebab lainnya.\n\nDalam ayat ini, Allah mencela perselisihan orang-orang kafir Mekah mengenai hari kebangkitan dengan mengatakan, "Tentang apakah orang-orang musyrik di kalangan penduduk Mekah itu saling bertanya-tanya?"\n\nAllah menjawab pertanyaan mereka itu dengan firman-Nya. Yang dimaksud dengan berita yang sangat besar dalam ayat ini ialah berita tentang hari Kiamat. Disebut berita yang sangat besar karena hari Kiamat itu amat besar huru-haranya sebagaimana disebutkan dalam firman Allah:\n\nWahai manusia! Bertakwalah kepada Tuhanmu; sungguh, guncangan (hari) Kiamat itu adalah suatu (kejadian) yang sangat besar. (Ingatlah) pada hari ketika kamu melihatnya (guncangan itu), semua perempuan yang menyusui anaknya akan lalai terhadap anak yang disusuinya, dan setiap perempuan yang hamil akan keguguran kandungannya, dan kamu melihat manusia dalam keadaan mabuk, padahal sebenarnya mereka tidak mabuk, tetapi azab Allah itu sangat keras. (al-hajj/22: 1-2)\n\nMeskipun begitu, orang-orang musyrik masih meragukan bahkan banyak yang tidak percaya, sebagaimana diterangkan Allah dalam firman-Nya:\n\n(Kehidupan itu) tidak lain hanyalah kehidupan kita di dunia ini, (di sanalah) kita mati dan hidup dan tidak akan dibangkitkan (lagi). (al-Mu''minun/23: 37)\n\nFirman Allah:\n\nKami tidak tahu apakah hari Kiamat itu, kami hanyalah menduga-duga saja, dan kami tidak yakin. (al-Jatsiyah/45: 32)\n\nAdapun hikmah Ilahi menyampaikan persoalan ini dalam bentuk pertanyaan dan jawaban adalah agar lebih mendekatkan kepada pengertian dan penjelasan, seperti tercantum dalam firman Allah:\n\n(Lalu Allah berfirman), "Milik siapakah kerajaan pada hari ini?" Milik Allah Yang Maha Esa, Maha Mengalahkan. (Gafir/40: 16)\n\nKemudian Allah menjawab pertanyaan mereka dengan nada ancaman, "Sekali-kali tidak. Jauh sekali dari kebenaran apa yang mereka anggap itu. Nanti mereka akan mengetahui pada waktu menyaksikan keadaan yang sebenarnya pada hari Kiamat yang selalu mereka ingkari."\n\nSebaiknya mereka jangan memperolok-olokkan karena mereka kelak pasti akan mengetahui keadaan yang sebenarnya. Apa-apa yang diragukan itu pasti akan mereka alami. Allah menguatkan firman-Nya itu dengan mengulang pernyataan itu sekali lagi.\n\nKemudian Allah menerangkan kekuasaan-Nya yang Mahaagung dan tanda-tanda rahmat-Nya yang sering dilupakan oleh mereka. Padahal tanda-tanda itu tampak jelas di hadapan mata. Allah mengemukakan sembilan perkara yang dapat mereka saksikan dengan mata sebagai bukti-bukti yang menunjukkan kekuasaan-Nya, seperti disebutkan pada ayat-ayat berikut, yaitu dari ayat 6 sampai ayat 14.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 5 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 5, 'ثُمَّ كَلَّا سَيَعْلَمُوْنَ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 5);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 5;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sekali lagi tidak! Kelak mereka akan mengetahui. ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Orang-orang musyrik Mekah ketika berkumpul di tempat pertemuan mereka yang berada di dekat Baitullah, sering membicarakan keadaan Nabi Muhammad dan Kitab Al-Qur''an yang dibawanya. Mereka sering bertanya satu sama lain bahwa apakah Muhammad itu seorang tukang sihir, penyair, atau seorang dukun tukang tenung yang terkena pengaruh buruk oleh berhala-berhala mereka? Mereka juga bertanya-tanya apakah Al-Qur''an itu sihir, syair, atau mantra-mantra saja? Masing-masing mengemukakan pendapat sesuai dengan hawa nafsu dan angan-angan mereka, sedangkan Nabi Muhammad sendiri dengan sikap yang tenang menyampaikan seruannya berdasarkan ayat-ayat Al-Qur''an yang memberi sinar penerangan kepada manusia menuju jalan kebenaran dan petunjuk yang lurus.\n\nSelain itu mereka sering bercakap-cakap tentang hari kebangkitan sehingga sering menimbulkan perdebatan, sebab di antara mereka ada yang mengingkarinya dan beranggapan bahwa setelah mati habislah urusan mereka. Tidak ada lagi kebangkitan setelah mati. Mereka berpendapat bahwa manusia itu lahir ke dunia lalu ia mati dan ditelan bumi karena tidak ada yang membinasakan mereka kecuali masa atau waktu saja. Di sisi lain, ada pula di antara mereka yang berpendapat bahwa yang dibangkitkan itu hanya arwah saja dan bukan jasad yang telah habis dimakan bumi. Ada pula di antara mereka yang menjumpai salah seorang sahabat Nabi dan menanyakan tentang hal itu dengan sikap mencemoohkan.\n\nSehubungan dengan sikap mereka yang demikian itu, surah ini turun untuk menolak keingkaran mereka, dan mengemukakan argumen yang nyata bahwa Allah benar-benar Mahakuasa membangkitkan mereka kembali setelah mati, walaupun mereka telah menjadi tanah, dimakan binatang buas, ditelan ikan di laut, terbakar api dan diterbangkan angin, atau sebab lainnya.\n\nDalam ayat ini, Allah mencela perselisihan orang-orang kafir Mekah mengenai hari kebangkitan dengan mengatakan, "Tentang apakah orang-orang musyrik di kalangan penduduk Mekah itu saling bertanya-tanya?"\n\nAllah menjawab pertanyaan mereka itu dengan firman-Nya. Yang dimaksud dengan berita yang sangat besar dalam ayat ini ialah berita tentang hari Kiamat. Disebut berita yang sangat besar karena hari Kiamat itu amat besar huru-haranya sebagaimana disebutkan dalam firman Allah:\n\nWahai manusia! Bertakwalah kepada Tuhanmu; sungguh, guncangan (hari) Kiamat itu adalah suatu (kejadian) yang sangat besar. (Ingatlah) pada hari ketika kamu melihatnya (guncangan itu), semua perempuan yang menyusui anaknya akan lalai terhadap anak yang disusuinya, dan setiap perempuan yang hamil akan keguguran kandungannya, dan kamu melihat manusia dalam keadaan mabuk, padahal sebenarnya mereka tidak mabuk, tetapi azab Allah itu sangat keras. (al-hajj/22: 1-2)\n\nMeskipun begitu, orang-orang musyrik masih meragukan bahkan banyak yang tidak percaya, sebagaimana diterangkan Allah dalam firman-Nya:\n\n(Kehidupan itu) tidak lain hanyalah kehidupan kita di dunia ini, (di sanalah) kita mati dan hidup dan tidak akan dibangkitkan (lagi). (al-Mu''minun/23: 37)\n\nFirman Allah:\n\nKami tidak tahu apakah hari Kiamat itu, kami hanyalah menduga-duga saja, dan kami tidak yakin. (al-Jatsiyah/45: 32)\n\nAdapun hikmah Ilahi menyampaikan persoalan ini dalam bentuk pertanyaan dan jawaban adalah agar lebih mendekatkan kepada pengertian dan penjelasan, seperti tercantum dalam firman Allah:\n\n(Lalu Allah berfirman), "Milik siapakah kerajaan pada hari ini?" Milik Allah Yang Maha Esa, Maha Mengalahkan. (Gafir/40: 16)\n\nKemudian Allah menjawab pertanyaan mereka dengan nada ancaman, "Sekali-kali tidak. Jauh sekali dari kebenaran apa yang mereka anggap itu. Nanti mereka akan mengetahui pada waktu menyaksikan keadaan yang sebenarnya pada hari Kiamat yang selalu mereka ingkari."\n\nSebaiknya mereka jangan memperolok-olokkan karena mereka kelak pasti akan mengetahui keadaan yang sebenarnya. Apa-apa yang diragukan itu pasti akan mereka alami. Allah menguatkan firman-Nya itu dengan mengulang pernyataan itu sekali lagi.\n\nKemudian Allah menerangkan kekuasaan-Nya yang Mahaagung dan tanda-tanda rahmat-Nya yang sering dilupakan oleh mereka. Padahal tanda-tanda itu tampak jelas di hadapan mata. Allah mengemukakan sembilan perkara yang dapat mereka saksikan dengan mata sebagai bukti-bukti yang menunjukkan kekuasaan-Nya, seperti disebutkan pada ayat-ayat berikut, yaitu dari ayat 6 sampai ayat 14.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 6 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 6, 'اَلَمْ نَجْعَلِ الْاَرْضَ مِهٰدًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 6);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 6;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Bukankah Kami telah menjadikan bumi sebagai hamparan, ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pertama, bukankah Allah telah menjadikan bumi sebagai hamparan yang mudah didiami oleh manusia dan hewan ternak yang berguna bagi manusia. Sebetulnya bumi ini bundar seperti bola, tetapi karena begitu besarnya, maka permukaannya tampak datar seperti hamparan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 7 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 7, 'وَّالْجِبَالَ اَوْتَادًاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 7);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 7;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan gunung-gunung sebagai pasak?', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kedua, Allah jadikan gunung-gunung sebagai pasak untuk mengokohkan bumi, sehingga tidak bergoyang karena guncangan-guncangan yang ada di bawahnya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 8 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 8, 'وَّخَلَقْنٰكُمْ اَزْوَاجًاۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 8);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 8;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan Kami menciptakan kamu berpasang-pasangan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ketiga, yang tidak kalah hebatnya Allah menciptakan manusia berpasang-pasangan, laki-laki dan perempuan, agar timbul kecintaan dan kesayangan di antara suami-istri untuk menempuh hidup bahagia dan memelihara keturunan yang baik, mempertahankan kelangsungan jenis manusia sehingga tidak punah.\n\nAyat ini sejalan dengan maksud firman Allah:\n\nDan di antara tanda-tanda (kebesaran)-Nya ialah Dia menciptakan pasangan-pasangan untukmu dari jenismu sendiri, agar kamu cenderung dan merasa tenteram kepadanya, dan Dia menjadikan di antaramu rasa kasih dan sayang. (ar-Rum/30: 21)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 9 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 9, 'وَّجَعَلْنَا نَوْمَكُمْ سُبَاتًاۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 9);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 9;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan Kami menjadikan tidurmu untuk istirahat,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Keempat, Allah menjadikan tidur pada malam hari untuk beristirahat dari kesibukan pekerjaan pada siang hari, agar menghasilkan berbagai mata pencaharian. Dengan istirahat waktu tidur itu, manusia dapat mengembalikan daya dan kekuatan untuk melangsungkan pekerjaan pada keesokan harinya. Seandainya tidak diselingi oleh istirahat tidur tentu kekuatan siapa pun akan merosot sehingga tidak dapat melangsungkan tugas sehari-hari.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 10 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 10, 'وَّجَعَلْنَا الَّيْلَ لِبَاسًاۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 10);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 10;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan Kami menjadikan malam sebagai pakaian,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kelima, Allah menjadikan malam sebagai pakaian. Maksudnya malam itu gelap menutupi permukaan bumi sebagaimana pakaian menutup tubuh manusia. Hal itu berarti bahwa malam itu berfungsi sebagai pakaian bagi manusia yang dapat menutupi auratnya pada waktu tidur dari pandangan orang-orang yang mungkin melihatnya. Demikian pula sebagai pakaian, maka gelap malam itu dapat melindungi dan menyembunyikan seseorang yang tidur dari bahaya atau musuh yang sedang mengancam.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 11 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 11, 'وَّجَعَلْنَا النَّهَارَ مَعَاشًاۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 11);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 11;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan Kami menjadikan siang untuk mencari penghidupan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Keenam, Allah menjadikan siang untuk berusaha dan mencari rezeki yang diperlukan dalam kehidupan dan untuk hidup bermasyarakat.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 12 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 12, 'وَبَنَيْنَا فَوْقَكُمْ سَبْعًا شِدَادًاۙ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 12);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 12;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan Kami membangun di atas kamu tujuh (langit) yang kokoh,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ketujuh, Allah membangun di atas manusia tujuh langit yang kokoh tanpa memiliki tiang dan tunduk kepada hukum Allah.\n\nSecara ilmiah, tujuh langit yang kokoh kemungkinan dapat diartikan dengan lapisan-lapisan atmosfer yang dekat dengan bumi ini, seperti: (1) Troposphere (Troposfer), (2) Tropopause (Tropopaus), (3) Stratosphere (Stratosfer), (4) Stratopause (Stratopaus), (5) Mesosphere (Mesosfer), (6) Mesopause (Mesopause), dan (7) Thermosphere (Termosfer). Pembagian ini berdasarkan temperatur (suhu) dari lapisan-lapisan atmosfer dan jaraknya dari permukaan bumi. Kekokohan lapisan-lapisan tersebut, dalam pengertian kokoh dalam menyelimuti bola bumi kita, karena adanya gaya gravitasi bumi. (lihat pula telaah ilmiah dalam Surah ar-Ra''d/13:2, Juz-13). Pada telaah ilmiah Surah ar-Ra''d/13: 2 tersebut, pembagian lapisan atmosfer sedikit berbeda dengan yang dijelaskan pada telaah ilmiah ini, di mana Ionosfer dan Eksosfer disatukan dalam Termosfer. \n\nNamun apabila pengertian tujuh langit ini dikaitkan dengan Mi''raj Rasulullah Muhammad saw, tampak kurang tepat. Tujuh langit dalam Surah an-Naba''/78: 12 ini mungkin dapat diartikan sebagai Tujuh Dimensi Ruang-Waktu dalam Kaluza-Klein Theory (KKT). Seperti dinyatakan dalam fisika bahwa terdapat empat (4) Gaya Fundamental yang ada di jagad raya ini, yaitu Gaya Elektromagnetik, Gaya Nuklir Lemah, Gaya Nuklir Kuat, dan Gaya Gravitasi. Jika keempat gaya ini terbentuk dari Ledakan Besar (Big Bang) dari suatu Singularity, maka mestinya keempat gaya ini dahulunya ''menyatu sebagai Satu Gaya Tunggal (Grand Unified Force), ini yang dikenal dalam Grand Unified Theory (GUT, Teori Ketersatuan Agung?). KKT menjelaskan bahwa untuk dapat menerangkan ketersatuan gaya-gaya yang empat itu, maka adanya geometri ruang-waktu yang kita berada di dalamnya sekarang ini tidaklah cukup. Geometri ruang-waktu yang kita berada di dalamnya sekarang ini hanya mampu menjelaskan sedikit tentang gaya-gaya Elektromagnetik dan dalam beberapa hal Gaya Gravitasi. Untuk bisa menjelaskan keempat gaya tersebut, maka KKT menyatakan harus ada tujuh dimensi ruang-waktu (time-space dimensions) yang lain. Dengan demikian bersama empat dimensi yang sudah dikenal, yaitu: garis, bidang, ruang dan waktu; maka total dimensi ada sebelas (11) dimensi. Pernyataan ini berbasiskan pada perhitungan Matematika-Fisika. Berbasiskan pada KKT ini, para saintis telah mampu pula menghitung ''garis tengah salah satu dimensi ruang-waktu itu, yaitu sebesar 10-32 cm, jadi dimensi itu sangat kecil sekali. Dengan demikian, tidaklah mungkin dengan instrument yang ada sekarang ini kita dapat menembus tujuh dimensi ruang-waktu yang lain itu. Kaluza-Klein Theory telah memberikan gambaran adanya Tujuh Dimensi Ruang-Waktu, yang kesemuanya ini akan mengokohkan geometri jagad-raya dengan empat gaya-gaya fundamentalnya. Mungkinkah tujuh langit yang kokoh tersebut adalah tujuh dimensi ruang-waktu menurut Kaluza-Klein Theory ? Wallahu a''lam bis-sawab.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 13 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 13, 'وَّجَعَلْنَا سِرَاجًا وَّهَّاجًاۖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 13);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 13;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan Kami menjadikan pelita yang terang-benderang (matahari),', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kedelapan, Allah menjadikan matahari sebagai pelita yang terang benderang, menyebarkan cahaya dan panasnya ke seluruh angkasa.\n\nAllah telah menjadikan matahari yang sinarnya mengandung obat untuk membunuh kuman-kuman dan mengusir penyakit-penyakit yang dapat mengganggu makhluk yang hidup seandainya tidak cukup mendapat sinar.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 14 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 14, 'وَّاَنْزَلْنَا مِنَ الْمُعْصِرٰتِ مَاۤءً ثَجَّاجًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 14);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 14;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan Kami turunkan dari awan, air hujan yang tercurah dengan hebatnya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kesembilan, Allah menurunkan dari awan air hujan yang banyak dan memberi manfaat, terutama untuk menumbuhkan tumbuh-tumbuhan yang berguna bagi manusia dan binatang.\n\nHal itu bertujuan agar dapat menumbuhkan biji-bijian seperti gandum, sayur, padi, dan tumbuh-tumbuhan untuk bahan makanan manusia dan hewan ternak. Demikian pula kebun-kebun dan taman-taman yang lebat dengan daun-daunnya yang rimbun.\n\nDalam ayat ini, Allah menyebut bermacam-macam tanaman yang tumbuh di bumi, di antaranya ada yang mempunyai batang dan ada yang tidak. Ada yang menghasilkan buah-buahan dan ada pula yang menghasilkan biji-bijian seperti gandum, padi, dan lain-lain untuk makanan manusia. Ada pula tanaman-tanaman untuk makanan binatang ternak. Semuanya itu merupakan makanan-makanan pokok dan tambahan bagi manusia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 15 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 15, 'لِّنُخْرِجَ بِهٖ حَبًّا وَّنَبَاتًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 15);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 15;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'untuk Kami tumbuhkan dengan air itu biji-bijian dan tanam-tanaman,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kesembilan, Allah menurunkan dari awan air hujan yang banyak dan memberi manfaat, terutama untuk menumbuhkan tumbuh-tumbuhan yang berguna bagi manusia dan binatang.\n\nHal itu bertujuan agar dapat menumbuhkan biji-bijian seperti gandum, sayur, padi, dan tumbuh-tumbuhan untuk bahan makanan manusia dan hewan ternak. Demikian pula kebun-kebun dan taman-taman yang lebat dengan daun-daunnya yang rimbun.\n\nDalam ayat ini, Allah menyebut bermacam-macam tanaman yang tumbuh di bumi, di antaranya ada yang mempunyai batang dan ada yang tidak. Ada yang menghasilkan buah-buahan dan ada pula yang menghasilkan biji-bijian seperti gandum, padi, dan lain-lain untuk makanan manusia. Ada pula tanaman-tanaman untuk makanan binatang ternak. Semuanya itu merupakan makanan-makanan pokok dan tambahan bagi manusia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 16 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 16, 'وَّجَنّٰتٍ اَلْفَافًاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 16);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 16;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan kebun-kebun yang rindang.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Kesembilan, Allah menurunkan dari awan air hujan yang banyak dan memberi manfaat, terutama untuk menumbuhkan tumbuh-tumbuhan yang berguna bagi manusia dan binatang.\n\nHal itu bertujuan agar dapat menumbuhkan biji-bijian seperti gandum, sayur, padi, dan tumbuh-tumbuhan untuk bahan makanan manusia dan hewan ternak. Demikian pula kebun-kebun dan taman-taman yang lebat dengan daun-daunnya yang rimbun.\n\nDalam ayat ini, Allah menyebut bermacam-macam tanaman yang tumbuh di bumi, di antaranya ada yang mempunyai batang dan ada yang tidak. Ada yang menghasilkan buah-buahan dan ada pula yang menghasilkan biji-bijian seperti gandum, padi, dan lain-lain untuk makanan manusia. Ada pula tanaman-tanaman untuk makanan binatang ternak. Semuanya itu merupakan makanan-makanan pokok dan tambahan bagi manusia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 17 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 17, 'اِنَّ يَوْمَ الْفَصْلِ كَانَ مِيْقَاتًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 17);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 17;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, hari keputusan adalah suatu waktu yang telah ditetapkan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa hari kebangkitan itu pasti terjadi pada waktu yang telah ditetapkan. Pada hari itu diputuskan siksa yang akan diterima orang yang kafir di dalam neraka dan pahala yang akan diterima orang-orang mukmin di dalam surga, baik orang-orang terdahulu, sekarang, maupun yang kemudian. Di sana akan sangat jauh beda nasib dan kehidupan mereka sesuai dengan derajat amal perbuatan mereka ketika di dunia. Allah telah menjadikan hari itu sebagai batas antara dunia dan akhirat, tempat seluruh makhluk akan dihimpun di Padang Mahsyar agar masing-masing dapat melihat dan menyaksikan apa yang telah mereka perbuat selama hidup di dunia, sehingga orang yang berbuat kebajikan akan menerima pahalanya dan orang yang berbuat kejahatan akan menerima siksaan. Kemudian Allah menerangkan tanda-tanda hari itu dan kedahsyatannya dengan firman-Nya dalam ayat berikut ini.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 18 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 18, 'يَّوْمَ يُنْفَخُ فِى الصُّوْرِ فَتَأْتُوْنَ اَفْوَاجًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 18);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 18;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(yaitu) pada hari (ketika) sangkakala ditiup, lalu kamu datang berbondong-bondong,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Pada hari Kiamat itu, ditiup sangkakala yang kedua oleh malaikat Israfil yang menyebabkan seluruh makhluk akan dibangkitkan kembali, bangkit dari kuburnya masing-masing dan berkumpul di Padang Mahsyar. Tiap-tiap umat dipimpin oleh rasulnya, sehingga datang berkelompok-kelompok seperti dalam firman Allah.\n\n(Ingatlah), pada hari (ketika) Kami panggil setiap umat dengan pemimpinnya. (al-Isra''/17: 71)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 19 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 19, 'وَّفُتِحَتِ السَّمَاۤءُ فَكَانَتْ اَبْوَابًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 19);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 19;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan langit pun dibukalah, maka terdapatlah beberapa pintu,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa pada hari keputusan itu langit terbuka dan mempunyai pintu-pintu yang memisahkan satu bagian dengan bagian yang lain. Maksudnya langit itu terbelah-belah sehingga mempunyai celah-celah seakan-akan terbuka dan mempunyai pintu-pintu. Hal ini dijelaskan oleh firman Allah yang lain:\n\nApabila langit terbelah. (al-Insyiqaq/84: 1)\n\nHal demikian terjadi karena muncul perubahan besar dalam susunan planet-planet di alam raya, yang menyebabkan perubahan dalam daya tarik dan perjalanan orbitnya. Kejadian itu menjurus ke arah kehancuran alam raya, dan juga kehancuran alam dunia.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 20 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 20, 'وَّسُيِّرَتِ الْجِبَالُ فَكَانَتْ سَرَابًاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 20);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 20;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan gunung-gunung pun dijalankan sehingga menjadi fatamorgana.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini dijelaskan bawah gunung-gunung pada hari itu tidak lagi seperti sediakala, tetapi akan diguncang sehingga hancur lebur seperti kabut yang dari jauh kelihatan seperti bayangan air. Akan tetapi jika didekati, ternyata tidak ada apa-apa karena bagian-bagiannya telah terpecah belah, dihancurkan, dan beterbangan ke mana-mana.\n\nFirman Allah dalam hal ini:\n\nDan diangkatlah bumi dan gunung-gunung, lalu dibenturkan keduanya sekali benturan. (al-haqqah/69: 14)\n\nKemudian dalam ayat yang lain Allah berfirman:\n\nDan gunung-gunung dihancurluluhkan sehancur-hancurnya, maka jadilah ia debu yang beterbangan. (al-Waqi''ah/56: 5-6)\n\nKemudian gunung-gunung itu akan dihancurleburkan seperti debu yang beterbangan seperti dijelaskan dalam firman Allah:\n\nDan gunung-gunung seperti bulu yang dihambur-hamburkan. (al-Qari''ah/101: 5)\n\nAyat 17-20 dari Surah an-Naba''/78 di atas tampaknya berbicara mengenai terjadinya kiamat. Pada ayat yang dibahas, ada penggambaran mengenai tiupan sangkakala. Ada ayat lain yang juga menggunakan kata sangkakala atau trompet dalam menggambarkan kiamat, seperti Surah an-Nazi''at/79: 6-9, "(Sungguh, kamu akan dibangkitkan) pada hari ketika tiupan pertama mengguncangkan alam, (tiupan pertama) itu diiringi dengan tiupan kedua. Hati manusia pada waktu itu merasa sangat takut, pandangannya tunduk."\n\nKeempat ayat di atas membahas tentang apa yang akan terjadi saat terjadinya hari kiamat. Salah satu kejadian pada hari itu adalah gempa bumi yang sangat dahsyat. Pada ayat 6-9 Surah an-Nazi''at/79, peristiwa gempa, mungkin saja bumi, digambarkan dengan kata "tiupan". \n\nApabila kita perhatikan ayat 6 dan 7 dari Surah an-Nazi''at/79 di atas tampak adanya kemiripan dalam gambaran tentang hari kiamat. Namun ada dua pendapat mengenai penggambarannya. Di satu pihak, para ulama menginterpretasikan kata ar-rajifah sebagai bunyi trompet yang pertama, dan ar-radifah adalah tiupan trompet yang kedua. Di pihak lain, ar-rajifah dinyatakan sebagai bumi, dan ar-radifah sebagai saat terjadinya pengadilan. Ada juga yang menginterpretasikan ar-rajifah sebagai kekacauan dari unsur-unsur bumi, sedangkan ar-radifah adalah gempa buminya. Tampaknya pendapat terakhir yang lebih realistis. Tidak ada beda antara kekacauan unsur-unsur bumi dan gempa bumi.\n\nAkan tetapi tampaknya ada pendapat lain yang lebih masuk akal. Mungkin kedua kata yang coba diinterpretasikan oleh banyak ulama sebenarnya menunjukkan adanya gempa utama dan gempa susulan, seperti dapat dilihat pada terjemahan dan tafsir ayat 6 dan 7 Surah an-Nazi''at/79 dalam Tafsir Al-Misbah, "Pada hari ketika berguncang-guncangan yang dahsyat, diikuti oleh yang mengiringi (nya)." \n\nSebelum terjadinya gempa utama (main shock), beberapa gempa kecil (fore shock) akan mengawalinya. Setelah gempa utama terjadi maka diikuti oleh gempa susulan (after shocks) yang kekuatannya lebih kecil dan jumlahnya banyak sekali. Lambat laun gempa susulan ini menurun baik jumlah maupun kekuatannya. \n\nPerlu diketahui bahwa gempa awal sulit diidentifikasi. Umumnya gempa utama langsung datang, dan memorak-porandakan segalanya tanpa memperlihatkan adanya gempa awal. Sebagai gambaran adalah gempa Aceh yang terjadi pada tanggal 26 Desember 2004 dengan magnitudo Mw=9,3 datang tanpa gempa awal. Gempa yang mematahkan dasar laut sepanjang hampir 1000 km ini menimbulkan tsunami dan menghancurkan wilayah yang berada di sekitar Lautan Hindia. Gempa Aceh ini kemudian memicu gempa Nias dengan kekuatan sangat besar pula, yakni Mw=8,7. Jadi, pada hakikatnya gempa Nias bukan gempa susulan melainkan gempa yang dipicu oleh gempa besar yang pertama. Baik gempa Aceh maupun gempa Nias diikuti gempa susulan masing-masing. Dengan gambaran tersebut, gempa bumi yang datang pada hari kiamat akan jauh lebih dahsyat dan mampu memicu gempa-gempa yang sama dahsyatnya sehingga bumi hancur lebur.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 21 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 21, 'اِنَّ جَهَنَّمَ كَانَتْ مِرْصَادًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 21);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 21;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, (neraka) Jahanam itu (sebagai) tempat mengintai (bagi penjaga yang mengawasi isi neraka), ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Sesungguhnya tempat pelaksanaan azab Allah yaitu neraka Jahanam, yang selalu dalam posisi menunggu kedatangan orang-orang kafir untuk disiksa di dalamnya. Diriwayatkan oleh Ibnu Jarir dan Ibnu Mundhir dari al-hasan al-Basri, "Tidak seorang pun masuk surga kecuali setelah melalui neraka. Apabila dia sudah melewatinya, selamatlah dia dan jika tidak, dia akan tertahan."'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 22 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 22, 'لِّلطّٰغِيْنَ مَاٰبًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 22);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 22;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'menjadi tempat kembali bagi orang-orang yang melampaui batas.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dijelaskan di sini bahwa neraka Jahanam itu menjadi tempat kembali bagi orang-orang yang durhaka dan melampaui batas, yang tidak mau mendengar ajakan para rasul yang membawa petunjuk dan kebenaran.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 23 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 23, 'لّٰبِثِيْنَ فِيْهَآ اَحْقَابًاۚ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 23);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 23;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Mereka tinggal di sana dalam masa yang lama,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Mereka tinggal di dalam neraka dalam waktu yang lama sebagaimana diterangkan pula dalam firman Allah:\n\nMereka ingin keluar dari neraka, tetapi tidak akan dapat keluar dari sana. Dan mereka mendapat azab yang kekal. (al-Ma''idah/5: 37)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 24 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 24, 'لَا يَذُوْقُوْنَ فِيْهَا بَرْدًا وَّلَا شَرَابًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 24);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 24;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'mereka tidak merasakan kesejukan di dalamnya dan tidak (pula mendapat) minuman,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Di dalam neraka Jahanam itu mereka tidak merasakan kesejukan yang dapat mengurangi panas yang sangat menghanguskan dan tidak pula mendapat minuman yang dapat menghilangkan rasa haus.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 25 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 25, 'اِلَّا حَمِيْمًا وَّغَسَّاقًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 25);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 25;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'selain air yang mendidih dan nanah,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Selain air yang mendidih yang sampai kepada puncak panas, ada pula nanah yang sangat busuk baunya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 26 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 26, 'جَزَاۤءً وِّفَاقًاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 26);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 26;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'sebagai pembalasan yang setimpal.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Neraka Jahanam itu disediakan sebagai balasan dari Allah yang setimpal dengan dosa dan pelanggaran yang mereka lakukan di dunia, karena setiap kejahatan dan keburukan akan dibalas dengan kejahatan dan keburukan yang setimpal. Azab yang setimpal itu diberikan karena dosa yang sangat berat yang telah mereka lakukan yaitu mempersekutukan Allah. Mereka dibakar dalam neraka Jahanam dalam waktu yang lama sekali.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 27 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 27, 'اِنَّهُمْ كَانُوْا لَا يَرْجُوْنَ حِسَابًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 27);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 27;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sesungguhnya dahulu mereka tidak pernah mengharapkan perhitungan.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah menerangkan azab neraka secara garis besar dalam ayat-ayat yang lalu, maka dalam ayat-ayat berikut ini Allah menyebutkan perincian terhadap dosa itu, yaitu terbagi atas dua bagian: pertama, mereka tidak takut kepada hari perhitungan karena mengingkari kedatangannya. Oleh karena itu, mereka tidak takut melakukan pelanggaran-pelanggaran itu sesuai dengan ajakan hawa nafsunya. Kedua, mereka mendustakan ayat-ayat Allah dan apa yang disebutkan dalam Al-Qur''an tentang kewajiban mentauhidkan Allah sesuai dengan seruan para rasul serta mempercayai hari kebangkitan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 28 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 28, 'وَّكَذَّبُوْا بِاٰيٰتِنَا كِذَّابًاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 28);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 28;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan mereka benar-benar mendustakan ayat-ayat Kami.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah menerangkan azab neraka secara garis besar dalam ayat-ayat yang lalu, maka dalam ayat-ayat berikut ini Allah menyebutkan perincian terhadap dosa itu, yaitu terbagi atas dua bagian: pertama, mereka tidak takut kepada hari perhitungan karena mengingkari kedatangannya. Oleh karena itu, mereka tidak takut melakukan pelanggaran-pelanggaran itu sesuai dengan ajakan hawa nafsunya. Kedua, mereka mendustakan ayat-ayat Allah dan apa yang disebutkan dalam Al-Qur''an tentang kewajiban mentauhidkan Allah sesuai dengan seruan para rasul serta mempercayai hari kebangkitan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 29 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 29, 'وَكُلَّ شَيْءٍ اَحْصَيْنٰهُ كِتٰبًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 29);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 29;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Dan segala sesuatu telah Kami catat dalam suatu Kitab (buku catatan amalan manusia). ', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Setelah menerangkan amal perbuatan mereka yang buruk dan akidah yang sesat, maka Allah dalam ayat ini menerangkan bahwa segala sesuatu yang mereka kerjakan itu telah dihitung sesuai dengan catatan yang ada pada sisi-Nya. Segala amalan manusia secara keseluruhan telah tercatat dalam catatan-Nya itu, tidak ada yang ketinggalan sedikit pun.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 30 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 30, 'فَذُوْقُوْا فَلَنْ نَّزِيْدَكُمْ اِلَّا عَذَابًا ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 30);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 30;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Maka karena itu rasakanlah! Maka tidak ada yang akan Kami tambahkan kepadamu selain azab.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa akibat dari kekafiran dan kedurhakaan itu, mereka akan merasakan siksaan-Nya. Allah tidak akan menambah kecuali dengan azab yang lebih pedih lagi.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 31 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 31, 'اِنَّ لِلْمُتَّقِيْنَ مَفَازًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 31);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 31;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sungguh, orang-orang yang bertakwa mendapat kemenangan,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa orang-orang yang bertakwa itu benar-benar akan mendapat kemenangan dan kebahagiaan dengan penghormatan dan pahala yang besar di dalam surga.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 32 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 32, 'حَدَاۤىِٕقَ وَاَعْنَابًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 32);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 32;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', '(yaitu) kebun-kebun dan buah anggur,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Di dalamnya terdapat berbagai nikmat, antara lain berupa kebun-kebun kurma dan buah anggur yang sangat lezat rasanya, cocok dengan selera, dan sedap dalam pandangan mata.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 33 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 33, 'وَّكَوَاعِبَ اَتْرَابًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 33);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 33;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan gadis-gadis montok yang sebaya,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Lalu diterangkan pula bahwa di dalam surga itu terdapat pula banyak bidadari yang cantik, montok, dan sebaya usianya. Kesenangan bergaul dengan kaum wanita yang biasanya merupakan kesenangan yang memuncak di dunia, akan dialami pula oleh ahli surga dengan cara yang lebih sempurna, tetapi tidak dapat dibayangkan bagaimana terjadinya nanti.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 34 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 34, 'وَّكَأْسًا دِهَاقًاۗ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 34);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 34;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'dan gelas-gelas yang penuh (berisi minuman).', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Di dalamnya juga terdapat hidangan-hidangan minuman yang dikemas dalam gelas-gelas yang penuh. Dalam firman Allah yang lain dinyatakan:\n\nDan di sana mereka diberi segelas minuman bercampur jahe. (al-Insan/76: 17)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 35 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 35, 'لَا يَسْمَعُوْنَ فِيْهَا لَغْوًا وَّلَا كِذَّابًا', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 35);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 35;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Di sana mereka tidak mendengar percakapan yang sia-sia maupun (perkataan) dusta.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Di dalam surga itu, mereka tidak mendengar perkataan yang tidak berarti atau sia-sia dan tidak pula perkataan yang dusta walaupun mereka meminum arak, sebagaimana diterangkan dalam firman Allah:\n\n(Di dalam surga itu) mereka saling mengulurkan gelas yang isinya tidak (menimbulkan) ucapan yang tidak berfaedah ataupun perbuatan dosa. (ath-thur/52: 23)'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 36 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 36, 'جَزَاۤءً مِّنْ رَّبِّكَ عَطَاۤءً حِسَابًاۙ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 36);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 36;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sebagai balasan dan pemberian yang cukup banyak dari Tuhanmu,', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini diterangkan bahwa kemenangan dan kebahagiaan yang besar itu adalah pemberian yang banyak dari Allah, sebagai rahmat dan karunia-Nya kepada hamba yang taat kepada-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 37 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 37, 'رَّبِّ السَّمٰوٰتِ وَالْاَرْضِ وَمَا بَيْنَهُمَا الرَّحْمٰنِ لَا يَمْلِكُوْنَ مِنْهُ خِطَابًاۚ ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 37);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 37;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Tuhan (yang memelihara) langit dan bumi dan apa yang ada di antara keduanya; Yang Maha Pengasih, mereka tidak mampu berbicara dengan Dia.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa Dialah Tuhan Yang memelihara langit dan bumi dan segala yang berada di antaranya dengan sifat-Nya sebagai Tuhan Yang Maha Pemurah. Keagungan Allah pada hari Kiamat itu tampak sekali, tidak seorang pun yang akan berbicara dengan Allah, melainkan dengan izin-Nya.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 38 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 38, 'يَوْمَ يَقُوْمُ الرُّوْحُ وَالْمَلٰۤىِٕكَةُ صَفًّاۙ  لَّا يَتَكَلَّمُوْنَ اِلَّا مَنْ اَذِنَ لَهُ الرَّحْمٰنُ وَقَالَ صَوَابًا', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 38);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 38;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Pada hari, ketika ruh dan para malaikat berdiri bersaf-saf, mereka tidak berkata-kata, kecuali siapa yang telah diberi izin kepadanya oleh Tuhan Yang Maha Pengasih dan dia hanya mengatakan yang benar.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa pada hari Kiamat itu Malaikat Jibril dan para malaikat lainnya berdiri bersaf-saf menunggu perintah Allah. Mereka tidak berkata apa pun kecuali setelah diberi izin oleh Allah Yang Maha Pemurah. Kata-kata yang mereka ucapkan pun ketika itu hanya kata-kata yang benar.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 39 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 39, 'ذٰلِكَ الْيَوْمُ الْحَقُّۚ فَمَنْ شَاۤءَ اتَّخَذَ اِلٰى رَبِّهٖ مَاٰبًا', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 39);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 39;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Itulah hari yang pasti terjadi. Maka barang siapa menghendaki, niscaya dia menempuh jalan kembali kepada Tuhannya.', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Dalam ayat ini, Allah menerangkan bahwa hari Kiamat itu pasti terjadi dan persoalan-persoalan yang tadinya tertutup atau tersembunyi pasti akan diungkapkan. Begitu pula apa-apa yang tersimpan dalam hati manusia, pada hari itu pasti diperlihatkan. Oleh karena itu, Allah mendorong mereka agar bertambah dekat kepada-Nya dan melakukan perbuatan yang menjauhkan diri dari azab-Nya. Dengan demikian, ia pasti menempuh jalan kembali kepada Tuhannya dengan penuh kebahagiaan.'
    )
    ON CONFLICT DO NOTHING;
END $$;

-- Insert Ayat 40 with translation and full tafsir
INSERT INTO ayat (id, surah_id, ayah_number, arab_text, juz, hizb)
SELECT uuid_generate_v4(), 78, 40, 'اِنَّآ اَنْذَرْنٰكُمْ عَذَابًا قَرِيْبًا ەۙ يَّوْمَ يَنْظُرُ الْمَرْءُ مَا قَدَّمَتْ يَدَاهُ وَيَقُوْلُ الْكٰفِرُ يٰلَيْتَنِيْ كُنْتُ تُرَابًا ࣖ', NULL, NULL
WHERE NOT EXISTS (SELECT 1 FROM ayat WHERE surah_id = 78 AND ayah_number = 40);

DO $$
DECLARE
    ayat_id UUID;
BEGIN
    SELECT id INTO ayat_id FROM ayat WHERE surah_id = 78 AND ayah_number = 40;

    INSERT INTO ayat_translation (ayat_id, language, content, translator)
    VALUES (ayat_id, 'id', 'Sesungguhnya Kami telah memperingatkan kepadamu (orang kafir) azab yang dekat, pada hari manusia melihat apa yang telah diperbuat oleh kedua tangannya; dan orang kafir berkata, “Alangkah baiknya seandainya dahulu aku jadi tanah.”', NULL)
    ON CONFLICT DO NOTHING;

    INSERT INTO ayat_tafsir (ayat_id, kitab, author, content)
    VALUES (ayat_id, 'kemenag', 'Kemenag',
        'Ayat ini memberi peringatan kepada orang-orang kafir bahwa sesungguhnya Allah telah memberi peringatan kepada mereka dengan siksaan yang dekat.\n\nSetiap orang harus mengerti bahwa apa saja yang akan dialaminya telah dekat waktu terjadinya. Soal jarak waktu bukanlah suatu hal yang penting, tetapi yang penting adalah peristiwa itu pasti akan dialaminya. Maka seorang yang berakal sehat selalu bersiap-siap untuk menghadapi peristiwa-peristiwa yang akan dijumpainya. Pada hari itu, manusia akan melihat apa yang telah diperbuat oleh kedua tangannya, sebagaimana dijelaskan pula dalam firman Allah:\n\n(Ingatlah) pada hari (ketika) setiap jiwa mendapatkan (balasan) atas kebajikan yang telah dikerjakan dihadapkan kepadanya, (begitu juga balasan) atas kejahatan yang telah dia kerjakan. Dia berharap sekiranya ada jarak yang jauh antara dia dengan (hari) itu. (Ali ''Imran/3: 30)\n\nPada hari itu, orang kafir akan berkata dengan penuh kesedihan dan penyesalan, "Andaikata aku dahulu di dunia hanya menjadi tanah, dan tidak menjadi manusia yang durhaka kepada Tuhan."'
    )
    ON CONFLICT DO NOTHING;
END $$;

