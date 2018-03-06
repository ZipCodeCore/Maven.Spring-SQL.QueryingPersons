SELECT * FROM movies;
INSERT INTO movies(title, runtime, genre, imdb_score, rating)
VALUES('Robin Hood: Men in Tights', '104', 'Comedy', 6.7, 'PG-13'),
('Robin Hood: Prince of Thieves', '143', 'Action-Adventure', 6.9, 'PG-13'),
('Robin Hood', '140', 'Action-Adventure', 6.7, 'PG-13');

SELECT * FROM movies WHERE genre='Sci-Fi';

SELECT * FROM movies WHERE imdb_score>=6.5;

SELECT * FROM movies WHERE rating IN ('G', 'PG') AND runtime<'100';

SELECT AVG(runtime) FROM movies WHERE imdb_score< 7.5 GROUP BY genre;
SELECT AVG(runtime), genre FROM movies WHERE imdb_score< 7.5 GROUP BY genre;

UPDATE movies SET rating = 'R' WHERE title = 'Starship Troopers';
SELECT * FROM movies WHERE title = 'Starship Troopers';

SELECT id, rating FROM movies WHERE genre IN ('Horror', 'Documentary');

SELECT rating, AVG(imdb_score), MAX(imdb_score), MIN(imdb_score) FROM movies GROUP BY rating;

SELECT rating, AVG(imdb_score), MAX(imdb_score), MIN(imdb_score) FROM movies  GROUP BY rating HAVING COUNT(*)>1;

DELETE FROM movies WHERE rating = 'R';

SELECT * FROM movies;
ID  	TITLE  	RUNTIME  	GENRE  	IMDB_SCORE  	RATING
1	Howard the Duck	110	Sci-Fi	4.6	PG
4	Spaceballs	96	Comedy	7.1	PG
5	Monsters Inc.	92	Animation	8.1	G
6	Lavalantula	83	Horror	4.7	TV-14
13	Robin Hood: Men in Tights	104	Comedy	6.7	PG-13
14	Robin Hood: Prince of Thieves	143	Action-Adventure	6.9	PG-13
15	Robin Hood	140	Action-Adventure	6.7	PG-13
(7 rows, 1 ms)