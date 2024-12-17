CREATE TABLE SONGS (
    SONG_ID INT AUTO_INCREMENT PRIMARY KEY,
    SONG_TITLE VARCHAR(255),
    ARTIST_NAME VARCHAR(100)
);

INSERT INTO SONGS (SONG_TITLE, ARTIST_NAME) VALUES
('F**k Love', 'Arijit Singh'),
('Bad W*rd Anthem', 'Drake'),
('Explicit Hit', 'Badshah'),
('Not Safe for Kids', 'Eminem'),
('Clean Summer Vibes', 'Taylor Swift'),
('Love You Forever', 'Ed Sheeran'),
('Party All Night', 'Neha Kakkar'),
('Bad Words Forever', 'Akon'),
('F*cked Up Night', 'Rihanna'),
('Safe and Sound', 'Capital Cities');

SELECT SONG_TITLE, ARTIST_NAME
FROM SONGS
WHERE SONG_TITLE NOT REGEXP '\\*'
  AND SONG_TITLE NOT REGEXP 'explicit|bad words|not safe';
