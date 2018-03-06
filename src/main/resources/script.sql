INSERT INTO MOVIES (TITLE, RUNTIME, GENRE, IMDB_SCORE, RATING)
VALUES('Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG'),
('Lavalantula', 83, 'Horror', 4.7, 'TV-14'),
('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13'),
('Waltz With Basher', 90, 'Documentary', 8.0, 'R'),
('Spaceballs', 96, 'Comedy', 7.1, 'PG'),
('Monsters Inc', 92, 'Animation', 8.1, 'G'),
('Pulp Fiction', 178, 'Drama-Crime', 8.9, 'R'),
('Titanic', 195, 'Romance', 7.8, 'R'),
('Goodfellas', 148, 'Drama-Crime', 8.7, 'R'),
('Forest Gump', 142, 'Drama-Comedy', 8.8, 'PG-13');

SELECT *
FROM movies
WHERE genre = 'Sci-Fi';

SELECT *
FROM movies
WHERE imdb_score >= 6.5;

SELECT *
FROM movies
WHERE rating BETWEEN 'G' AND 'PG'
AND runtime < 100;

SELECT AVG(runtime)
FROM movies
WHERE imdb_score < 7.5
GROUP BY genre;

UPDATE movies
SET rating = 'R'
WHERE title = 'Starship Troopers';

SELECT id, rating
FROM movies
WHERE genre = 'Horror' or genre = 'Documentary';

SELECT AVG(imdb_score), MIN(imdb_score), MAX(imdb_score)
FROM movies
GROUP BY Rating;

SELECT AVG(imdb_score), MIN(imdb_score), MAX(imdb_score)
FROM movies
GROUP BY Rating;
HAVING COUNT(*) > 1;

DELETE FROM movies
WHERE rating = 'R';


