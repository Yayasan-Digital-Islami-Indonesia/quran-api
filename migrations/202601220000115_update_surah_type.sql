-- Update surah_type based on tempat_turun from Quran API
-- Source: https://quran-api.santrikoding.com/api/surah
-- tempat_turun: mekah -> Makkiyah, madinah -> Madaniyah

UPDATE surah SET surah_type = 'Madaniyah' WHERE number IN (
    2, 3, 4, 5, 8, 9, 13, 22, 24, 33, 47, 48, 49, 55, 57, 58, 59, 60, 61, 62,
    63, 64, 65, 66, 76, 77, 78, 80, 82, 84, 85, 87, 89, 90, 91, 92, 93, 94, 95,
    96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111,
    112, 113, 114
);

UPDATE surah SET surah_type = 'Makkiyah' WHERE number IN (
    1, 6, 7, 10, 11, 12, 14, 15, 16, 17, 18, 19, 20, 21, 23, 25, 26, 27, 28,
    29, 30, 31, 32, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 50,
    51, 52, 53, 54, 56, 67, 68, 69, 70, 71, 72, 73, 74, 75, 79, 81, 83, 86, 88
);
