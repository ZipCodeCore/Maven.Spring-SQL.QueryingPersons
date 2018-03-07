INSERT INTO movies(title, runtime, genre, IMDB_score, rating)
VALUES('Howard The Duck', '110', 'Sci-Fi', '4.6', 'PG'),
('Lavalantula', '83', 'Horror', '4.7', 'TV-14'),
('Starship Troopers', '129', 'Sci-Fi','7.2', 'PG-13'),
('Waltz With Bashir', '90', 'Documentary', '8.0', 'R'),
('Spaceballs', '96', 'Comedy', '7.1', 'PG'),
('Monsters Inc', '92', 'Animation', '8.1', 'G'),
('Shaun of the Dead', '99', 'Comedy', '8.0', 'R'),
('How To Train Your Dragon', '98', 'Animation', '8.1', 'PG'),
('Sharknado', '86', 'Action', '3.3', 'TV-14');

SELECT * FROM movies
WHERE genre = 'Sci-Fi';

SELECT * FROM movies
WHERE IMDB_score >= '6.5';

SELECT * FROM movies
WHERE rating = 'G'
OR  rating = 'PG'
AND runtime < 100;

SELECT AVG(runtime) FROM movies
WHERE IMDB_score < 7.5
GROUP BY genre;

UPDATE movies
SET rating = 'R'
WHERE title = 'Starship Troopers';
SELECT * FROM movies;

SELECT id, rating FROM movies
WHERE genre = 'Horror'
OR genre = 'Documentary' ;

SELECT  AVG(IMDB_score), MAX(IMDB_score), MIN(IMDB_score) FROM movies
GROUP BY IMDB_score;

SELECT AVG(IMDB_score), MAX(IMDB_score), MIN(IMDB_score) FROM movies
GROUP BY IMDB_score
HAVING COUNT (IMDB_score) > 1;

DELETE movies
WHERE rating = 'R';
SELECT * FROM movies;