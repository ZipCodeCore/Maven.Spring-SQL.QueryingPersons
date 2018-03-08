

INSERT INTO movies (id, title, runtime, genre, imdb_score, rating)
VALUES (1, 'Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG');
INSERT INTO movies (id, title, runtime, genre, imdb_score, rating)
VALUES (2, 'Lavalantula', 83, 'Horror', 4.7, 'TV-14');
INSERT INTO movies (id, title, runtime, genre, imdb_score, rating)
VALUES (3, 'Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13');
INSERT INTO movies (id, title, runtime, genre, imdb_score, rating)
VALUES (4, 'Waltz With Bashir', 90, 'Documentary', 8.0, 'R');

INSERT INTO movies (id, title, runtime, genre, imdb_score, rating)
VALUES (5, 'Spaceballs', 96, 'Comedy', 7.1, 'PG');

INSERT INTO movies (id, title, runtime, genre, imdb_score, rating)
VALUES (6, 'Monsters Inc.', 92, 'Animation', 8.1, 'G');

INSERT INTO movies (id, title, runtime, genre, imdb_score, rating)
VALUES (7, 'There Will Be Blood.', 158, 'Drama', 8.1, 'R');

INSERT INTO movies (id, title, runtime, genre, imdb_score, rating)
VALUES (8, 'Eyes Wide Shut', 159, 'Drama', 7.4, 'R');

INSERT INTO movies (id, title, runtime, genre, imdb_score, rating)
VALUES (9, 'Mulholland Drive', 147, 'Mystery', 8.0, 'R');


SELECT *
FROM movies
WHERE imdb_score >= 6.5;


SELECT * FROM movies
WHERE rating = 'PG'
OR rating = 'G'
AND runtime < 100;


SELECT AVG(runtime)
FROM movies
WHERE imdb_score < 7.5;


UPDATE movies
SET rating = 'R'
WHERE title = 'Starship Troopers';

SELECT  id, rating
FROM movies
WHERE genre = 'Documentary'
OR genre = 'Horror';

SELECT AVG(imdb_score), MIN(imdb_score), MAX(imdb_score)
FROM movies
WHERE rating = 'G'

SELECT AVG(imdb_score), MIN(imdb_score), MAX(imdb_score)
FROM movies
WHERE rating = 'PG'

SELECT AVG(imdb_score), MIN(imdb_score), MAX(imdb_score)
FROM movies
WHERE rating = 'R'

SELECT AVG(imdb_score), MIN(imdb_score), MAX(imdb_score)
FROM movies
WHERE rating = 'TV-14'


SELECT AVG(imdb_score), MIN(imdb_score), MAX(imdb_score)
FROM movies
GROUP BY rating
HAVING COUNT(*) >1;


DELETE from movies
WHERE rating = 'R';