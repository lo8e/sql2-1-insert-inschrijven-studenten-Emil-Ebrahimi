USE `lo8e_sql2`;
INSERT INTO klassen 
(klas_code, slb_code, cohort, opleiding_code)
VALUES ('l09e-amo1', 'rs001', 2019, 'amo'),
('l09e-amo2', 'brc01', 2019, 'amo'),
('l09e-amo3', 'vlt03', 2019, 'amo');

INSERT INTO studenten 
(ov_nummer, achternaam, tussenvoegsel, voornaam)
VALUES (90111, 'Stinson','','Zacky'),
(90222,'Appels','','Koop'),
(90333,'Azulu','','Abu'),
(90444,'Svert','','Schwuen');

INSERT INTO klassen_studenten
(klas_code, ov_nummer)
VALUES ('l09e-amo1', 90111),
('l09e-amo2', 90222),
('l09e-amo3', 90333),
('l09e-amo3', 90444);

UPDATE studenten
SET geboortedatum = '1999-01-01'
WHERE ov_nummer = 90111;

UPDATE studenten 
SET actief = 'false'
WHERE inschrijvings_datum < '1-1-2017';

SELECT * FROM studenten
WHERE actief = 'true';