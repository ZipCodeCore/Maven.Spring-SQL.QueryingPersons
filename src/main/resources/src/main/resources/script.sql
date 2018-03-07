INSERT INTO movies(Title, Runtime, Genre, IMDB_Score, Rating)
VALUES ('Howard the Duck', 110, 'Sci-Fi', '4.6', 'PG'),
('Lavalantula', 83, 'Horror', '4.7', 'TV-14'),
('Starship Troopers', 129, 'Sci-Fi', '7.2', 'PG-13'),
('Waltz With Bashir', 90,  'Documentary', '8.0', 'R'),
('Spaceballs', 96, 'Comedy', '7.1', 'PG'),
('Monsters Inc.' , 92, 'Animation', '8.1', 'G');

INSERT INTO movies(Title, Runtime, Genre, IMDB_Score, Rating)
VALUES ('Count of Monte Cristo', 131, 'Adventure', '7.8', 'PG-13'),
('Eternal Sunshine of the Spotless Mind', 108, 'Drama', '8.3', 'R'),
('Stardust', 127, 'Adventure', '7.7', 'PG-13'),
('Ex Machina', 108,  'Drama', '7.7', 'R'),
('Ever After: A Cinderella Story', 121, 'Romance', '7.0', 'PG'),
('Big Trouble in Little China' , 99, 'Action', '7.3', 'PG-13');

SELECT *
FROM movies
WHERE genre = 'Sci-Fi';

SELECT *
FROM movies
WHERE imdb_score >= 6.5;

SELECT *
FROM movies
WHERE rating = 'PG'
OR rating = 'G'
AND runtime < 100;

SELECT AVG (runtime)
FROM movies
WHERE imdb_score < 7.5
GROUP BY genre;

UPDATE movies
SET rating = 'R'
WHERE title = 'Starship Troopers'

SELECT id, rating
FROM movies
WHERE genre = 'Horror'
OR genre = 'Documentary';

SELECT AVG(imdb_score), MAX(imdb_score), MIN(imdb_score)
FROM movies
GROUP BY rating;

SELECT AVG(imdb_score), MAX(imdb_score), MIN(imdb_score)
FROM movies
GROUP BY rating
HAVING COUNT(*) > 1;

DELETE FROM movies
WHERE rating = 'R';