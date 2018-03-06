-- incorrectly added howard the duck
INSERT INTO movies (title, runtime, genre, imdb_score, rating)
VALUES ('Howard the Duck', 110, 'Horror', 4.7, 'TV-14'),

-- correctly added the rest of the movies
INSERT INTO movies (title, runtime, genre, imdb_score, rating)
VALUES ('Lavalantula', 83, 'Horror', 4.7, 'TV-14'),
('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13'),
('Waltz with Bashir', 90, 'Documentary', 8.0, 'R'),
('Spaceballs', 96, 'Comedy', 7.1, 'PG'),
('Monsters Inc.', 92, 'Animation', 8.1, 'G');

--fixed howard the duck
UPDATE movies
SET genre = 'Sci-Fi', imdb_score = 4.6, rating = 'PG'
WHERE id = 1;

-- Add a few more movies of your choosing.
INSERT INTO movies (title, runtime, genre, imdb_score, rating)
VALUES ('In Bruges', 107, 'Comedy', 7.9, 'R'),
('The Rock', 136, 'Action', 7.4, 'R'),
('Troy', 163, 'Drama', 7.2, 'R');

-- Create a query to find all movies in the Sci-Fi genre.
SELECT * FROM movies
WHERE genre = 'Sci-Fi';

-- Create a query to find all films that scored at least a 6.5 on IMDB
SELECT * FROM movies
WHERE imdb_score > 6.5;

-- create a query to find all of the movies rated G or PG that are less than 100 minutes long
SELECT * FROM movies
WHERE rating = 'G' OR rating = 'PG'
AND runtime < 100;

-- show the average runtimes of movies scoring below a 7.5 on imdb, grouped by their respective genres.
SELECT genre, AVG(imdb_score)
FROM movies
WHERE imdb_score < 7.5
GROUP BY genre;

-- Starship Troopers is actually rated R, not PG-13. Create a query that finds the movie by its title and changes its rating to R.
UPDATE movies
SET rating = 'R'
WHERE title = 'Starship Troopers';

-- Show the ID number and rating of all of the Horror and Documentary movies in the database. Do this in only one query
SELECT id, rating
FROM movies
WHERE genre = 'Horror' OR genre = 'Documentary';

-- This time let's find the average, maximum, and minimum IMDB score for movies of each rating.
SELECT rating, AVG(imdb_score), MAX(imdb_score), MIN(imdb_score)
FROM movies
GROUP BY rating;

-- That last query isn't very informative for ratings that only have 1 entry. Use a HAVING COUNT(*) > 1 clause to only show ratings with multiple movies showing.
SELECT rating, AVG(imdb_score), MAX(imdb_score), MIN(imdb_score)
FROM movies
GROUP BY rating
HAVING COUNT (*) > 1;

-- Let's make our movie list more child-friendly. Delete all entries that have a rating of R.
DELETE FROM movies
WHERE rating = 'R';