INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('Howard the Duck', '110', 'Sci-Fi', '4.6', 'PG');

INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('Lavalantula', '83', 'Horror', '4.7', 'TV-14');

INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('Starship Troopers', '129', 'Sci-Fi', '7.2', 'PG-13');

INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('Waltz With Bashir', '90', 'Documentary', '8.0', 'R');

INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('Spaceballs', '96', 'Comedy', '7.1', 'PG');

INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('Monsters Inc.', '92', 'Animation', '8.1', 'G');

INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('Batman Begins', '140', 'Action', '8.4', 'PG-13');

INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('Deadpool', '116', 'Comedy Action', '8.9', 'R');

SELECT title, genre
FROM movies
WHERE genre = 'Sci-Fi';

SELECT imdb_score
FROM movies
WHERE imdb_score >= 6.5;

SELECT title, rating, runtime
FROM movies
WHERE rating = 'G' OR rating = 'PG' AND runtime < 100;

SELECT title, imdb_score, genre, runtime
FROM movies  WHERE imdb_score < 7.5
GROUP BY genre, runtime;

UPDATE movies
SET rating = 'R'
WHERE title = 'Starship Troopers';
SELECT title, rating
FROM movies;

SELECT id, rating
FROM movies
WHERE genre = 'Horror' OR genre = 'Documentary';

SELECT AVG (imdb_score),
MAX(imdb_score),
MIN(imdb_score)
FROM movies GROUP BY rating;

SELECT AVG(IMDB_Score),
MAX(IMDB_Score),
MIN(IMDB_Score)
FROM movies GROUP BY rating HAVING COUNT(*) > 1;

DELETE FROM movies
WHERE rating = 'R';