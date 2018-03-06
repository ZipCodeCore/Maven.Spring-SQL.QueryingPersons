-- first exercise

SELECT p.first_name, h.address, p.birthday FROM people p INNER JOIN homes h on (p.home_id = h.id) WHERE p.birthday IS NOT NULL ORDER BY p.MONTH(birthday);
SELECT * FROM people p INNER JOIN homes h on (p.home_id = h.id);

-- second exercise

SELECT * FROM movies WHERE genre='Sci-Fi';
SELECT * FROM movies WHERE imdb_score >= 6.5;
SELECT * FROM movies WHERE rating LIKE '%G' AND runtime < 100;
UPDATE movies SET rating='R' WHERE title='Starship Troopers';
SELECT genre, AVG(runtime) FROM movies  WHERE imdb_score<'7.5' GROUP BY genre;
SELECT id, rating FROM movies WHERE genre='Horror' OR genre='Documentary';
SELECT rating, AVG(imdb_score), MIN(imdb_score), MAX(imdb_score) FROM movies GROUP BY rating;
SELECT rating, AVG(imdb_score), MIN(imdb_score), MAX(imdb_score) FROM movies GROUP BY rating HAVING COUNT(*) > 1;
DELETE movies WHERE rating = 'R';