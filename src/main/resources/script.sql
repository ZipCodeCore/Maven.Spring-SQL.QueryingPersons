INSERT INTO movies ( Title, Runtime, Genre, IMDB_Score, Rating)
VALUES ('Howard the Duck', 110,  'Sci-Fi',  4.6, 'PG'),
('Lavalantula', 83,  'Horror',  4.7, 'TV-14'),
('Starship Troopers', 129,  'Sci-Fi',  7.2, 'PG-13'),
('Waltz With Bashir', 90,  'Documentary',  8.0, 'R'),
('Spaceballs', 96,  'Comedy',  7.1, 'PG'),
('Monsters Inc.', 92,  'Animation',  8.1, 'G'),
('BaseketBall', 103, 'Comedy', 6.6, 'R'),
('Dune', 137, 'Sci-Fi', 6.6, 'PG-13'),
('Moon', 97, 'Sci-Fi', 7.9, 'R'),
('Honey I Blew Up the Kid', 89, 'Comedy', 4.7, 'PG');

SELECT * FROM movies
WHERE genre = 'Sci-Fi';


SELECT * FROM movies
WHERE IMDB_Score >= 6.5;

SELECT * FROM movies
WHERE Rating = 'G' OR Rating = 'PG' AND Runtime < 100;

SELECT AVG(Runtime)
FROM movies
WHERE IMDB_Score < 7.5 GROUP BY genre;

UPDATE movies
SET Rating = 'R'
WHERE title = 'Starship Troopers';

SELECT ID, Rating
FROM movies;

SELECT AVG(IMDB_Score),
MAX(IMDB_Score),
MIN(IMDB_Score)
FROM movies GROUP BY rating;

SELECT AVG(IMDB_Score),
MAX(IMDB_Score),
MIN(IMDB_Score)
FROM movies GROUP BY rating HAVING COUNT(*) > 1;

DELETE FROM movies
WHERE rating = 'R';