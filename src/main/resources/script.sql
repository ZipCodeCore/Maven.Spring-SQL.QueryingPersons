SELECT title
FROM movies
WHERE genre = 'Sci-Fi';

SELECT title
FROM movies
WHERE imdb_score >= 6.5;

SELECT title
FROM movies
WHERE rating = 'G' OR rating = 'PG'
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
WHERE genre = 'Horror'
OR genre = 'Documentary';

SELECT AVG (imdb_score), MAX(imdb_score), MIN(imdb_score)
FROM movies
GROUP BY rating;

SELECT AVG (imdb_score), MAX(imdb_score), MIN(imdb_score)
FROM movies
GROUP BY rating
HAVING COUNT(*) > 1;
