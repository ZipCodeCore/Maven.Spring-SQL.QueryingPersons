INSERT INTO movies (Title, Runtime, Genre, IMDB_SCORE, Rating) VALUES ('Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG');
INSERT INTO movies (Title, Runtime, Genre, IMDB_SCORE, Rating) VALUES ('Lavalantula', 83, 'Horror', 4.7, 'TV-14');
INSERT INTO movies (Title, Runtime, Genre, IMDB_SCORE, Rating) VALUES ('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13');
INSERT INTO movies (Title, Runtime, Genre, IMDB_SCORE, Rating) VALUES ('Waltz With Bashir', 90, 'Documentary', 8.0, 'R');
INSERT INTO movies (Title, Runtime, Genre, IMDB_SCORE, Rating) VALUES ('Spaceballs', 96, 'Comedy', 7.1, 'PG');
INSERT INTO movies (Title, Runtime, Genre, IMDB_SCORE, Rating) VALUES ('Monsters Inc.', 92, 'Animation', 8.1, 'G');
INSERT INTO movies (Title, Runtime, Genre, IMDB_SCORE, Rating) VALUES ('The Shawshank Redemption', 142, 'Drama', 9.2, 'R');
INSERT INTO movies (Title, Runtime, Genre, IMDB_SCORE, Rating) VALUES ('Forest Gump', 142, 'Drama', 8.7, 'PG-13');
INSERT INTO movies (Title, Runtime, Genre, IMDB_SCORE, Rating) VALUES ('Jaws', 124, 'Thiller', 8.0, 'PG');

SELECT *
FROM movies
WHERE genre = 'Sci-Fi';

SELECT *
FROM movies
WHERE IMDB_SCORE > 6.5;

SELECT *
FROM movies
WHERE runtime < 100 AND rating ='G'
OR  runtime < 100 AND rating ='PG';

SELECT Genre, AVG(runtime)
FROM movies
WHERE IMDB_SCORE < 7.5
GROUP BY Genre;

UPDATE movies
SET rating = 'R'
WHERE title = 'Starship Troopers';

SELECT id, rating
FROM movies
WHERE genre = 'Horror' OR genre = 'Documentary';

SELECT rating, AVG(IMDB_SCORE), Min(IMDB_SCORE), MAX(IMDB_SCORE)
FROM movies
GROUP BY rating;

SELECT rating, AVG(IMDB_SCORE), Min(IMDB_SCORE), MAX(IMDB_SCORE)
FROM movies
GROUP BY rating
HAVING COUNT(*) > 1;

DELETE FROM movies
WHERE rating = 'R';


