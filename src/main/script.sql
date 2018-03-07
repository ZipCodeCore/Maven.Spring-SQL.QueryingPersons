Commands:

SELECT *
FROM movies
WHERE genre = 'Sci-Fi';
/*
finds all movies with sci-fi genre
 */

SELECT *
FROM movies
WHERE imdb_score >= 6.5;
/*
finds all movies with score greater than or equal to 6.5
 */

SELECT *
FROM movies
WHERE rating = 'PG'
OR rating = 'G'
AND runtime < 100;
/*
finds all movies w PG or G rating w a runtime of less than 100min
 */

SELECT AVG (runtime)
FROM movies
WHERE imdb_score < 7.5
GROUP BY genre;
/*
from the average of run time select the movies that have a score less than 7.5 and then organizes
them by each of the genres
 */

UPDATE movies
SET rating = 'R'
WHERE title = 'Starship Troopers'
/*
changes Starship Troopers to R rating
 */

SELECT id, rating
FROM movies
WHERE genre = 'Horror'
OR genre = 'Documentary';
/*
finds id and rating from both categories
 */

SELECT AVG(imdb_score), MAX(imdb_score), MIN(imdb_score)
FROM movies
GROUP BY rating;
/*
finds avg, min and max of the imdb scores by each rating
Ex:
avg -- minimum -- maximum
5.82 --  7.1   --  4.6
 */

SELECT AVG(imdb_score), MAX(imdb_score), MIN(imdb_score)
FROM movies
GROUP BY rating
HAVING COUNT(*) > 1;
/*
finds avg, min and max of the imdb scores by each rating
only show ratings that have more than 1 rating in its rating(PG, G, PG-13, etc.)
So it does not show movies that are the only entry in its rating category
Ex: Lavantuala is the only PG-14 movie so its avg, min, and max will all be the same
therefore that information is not necessarily useful
 */

DELETE FROM movies
WHERE rating = 'R';
/*
delete all R rated movies
 */