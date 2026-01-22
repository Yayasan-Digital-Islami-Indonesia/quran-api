-- Create Hizb Anchor table
CREATE TABLE hizb_anchor (
    hizb SMALLINT PRIMARY KEY,
    juz SMALLINT NOT NULL,
    surah_id SMALLINT NOT NULL,
    ayah_number SMALLINT NOT NULL
);

-- Insert Hizb Anchor Data
INSERT INTO hizb_anchor (hizb, juz, surah_id, ayah_number) VALUES
(1,1,1,1),
(2,1,2,75),
(3,2,2,142),
(4,2,2,203),
(5,3,2,253),
(6,3,3,15),
(7,4,3,93),
(8,4,3,171),
(9,5,4,24),
(10,5,4,88),
(11,6,4,148),
(12,6,5,27),
(13,7,5,82),
(14,7,6,36),
(15,8,6,111),
(16,8,7,31),
(17,9,7,88),
(18,9,7,171),
(19,10,8,41),
(20,10,9,34),
(21,11,9,93),
(22,11,10,26),
(23,12,11,6),
(24,12,11,84),
(25,13,12,53),
(26,13,13,19),
(27,14,15,1),
(28,14,16,51),
(29,15,17,1),
(30,15,18,1),
(31,16,18,75),
(32,16,19,22),
(33,17,21,1),
(34,17,22,1),
(35,18,23,1),
(36,18,24,21),
(37,19,25,21),
(38,19,26,111),
(39,20,27,56),
(40,20,28,51),
(41,21,29,46),
(42,21,31,22),
(43,22,33,31),
(44,22,34,24),
(45,23,36,28),
(46,23,37,145),
(47,24,39,32),
(48,24,40,41),
(49,25,41,47),
(50,25,43,24),
(51,26,46,1),
(52,26,47,33),
(53,27,51,31),
(54,27,55,1),
(55,28,58,1),
(56,28,62,1),
(57,29,67,1),
(58,29,72,1),
(59,30,78,1),
(60,30,87,1);

-- Function to assign Juz and Hizb
CREATE OR REPLACE FUNCTION assign_juz_hizb()
RETURNS VOID AS $$
BEGIN
    UPDATE ayat a
    SET
        hizb = h.hizb,
        juz  = h.juz
    FROM hizb_anchor h
    WHERE
        (a.surah_id, a.ayah_number) >= (h.surah_id, h.ayah_number)
        AND NOT EXISTS (
            SELECT 1
            FROM hizb_anchor h2
            WHERE
                h2.hizb > h.hizb
                AND (a.surah_id, a.ayah_number) >= (h2.surah_id, h2.ayah_number)
        );
END;
$$ LANGUAGE plpgsql;

-- Execute assignment
SELECT assign_juz_hizb();

-- Ensure indexes exist (Postgres will error if exists usually, strictly should use IF NOT EXISTS if possible, but standard CREATE INDEX doesn't always support IF NOT EXISTS in older postgres, but here we can try CREATE INDEX IF NOT EXISTS)
CREATE INDEX IF NOT EXISTS idx_ayat_juz ON ayat (juz);
CREATE INDEX IF NOT EXISTS idx_ayat_hizb ON ayat (hizb);

-- Verify logic - Optional, maybe better done in application code or manual check.
