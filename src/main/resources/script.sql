
 /*added all the movies to the database*/
/* Querry 1 results*/
SELECT * FROM movies
WHERE imdb_score >= (6.5);
/*ID  	TITLE  	RUNTIME  	GENRE  	IMDB_SCORE  	RATING
3	Starship Troopers	129	Sci-Fi	7.2	PG-13
4	Waltz With Bashir	90	Documentary	8.0	R
5	Spaceballs	96	Comedy	7.1	PG
6	Monsters Inc.	92	Animation	8.1	G
(4 rows, 2 ms)*/

SELECT *  FROM movies
WHERE runtime < 100
 AND rating = 'pg'  OR rating = 'g';


Select AVG(runtime) FROM movies
Where   imdb_score <  7.5
GROUP BY genre;


SELECT  * FROM movies
Where title = 'Starship Troopers';

UPDATE MOVIES
SET rating='R'
WHERE title='Super Troopers';

SELECT  id, rating FROM movies
WHERE genre = 'Horror'  AND genre = 'Documentary';

SELECT AVG(IMDB_SCORE ),  MIN(IMDB_SCORE ),  MAX(IMDB_SCORE)  FROM movies
GROUP BY rating;

SELECT  COUNT(ID), rating FROM movies
GROUP BY rating
HAVING COUNT(ID) > 1;

DELETE FROM movies
 WHERE rating= 'R' ;
 SELECT * FROM movies;
/*ID  	TITLE  	RUNTIME  	GENRE  	IMDB_SCORE  	RATING
1	Howard the Duck	110	Sci-Fi	4.6	PG
2	Lavalantula	83	Horror	4.7	TV-14
3	Starship Troopers	129	Sci-Fi	7.2	PG-13
5	Spaceballs	96	Comedy	7.1	PG
6	Monsters Inc.	92	Animation	8.1	G*/



