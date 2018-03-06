INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating)
 VALUES (1, 'Howard the Duck', '110', 'Sci-Fi', '4.6', 'PG');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating)
VALUES (2, 'Lavalantula', '83', 'Horror', '4.7', 'TV-14');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating)
VALUES (3, 'Starship Troopers', '129', 'Sci-Fi', '7.2', 'PG-13');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating)
VALUES (4, 'Waltz With Bashir', '90', 'Documentary', '8.0' , 'R');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating)
VALUES (5, 'Spaceballs', '96', 'Comedy', '7.1', 'PG');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating)
VALUES (6, 'Monsters Inc.', '92', 'Animation', '8.1', 'G');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating)
VALUES (7, 'Gladiator', '155', 'Action', '8.5', 'R');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating)
VALUES (8, 'I Love You, Man', '105', 'Comedy', '7.0', 'R');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating)
VALUES (9, 'Nacho Libre', '92', 'Comedy', '5.7', 'PG');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating)
VALUES (10, 'Good Morning, Vietnam', '121',  'Biography', '7.3', 'R');
INSERT INTO movies (ID, Title, Runtime, Genre, IMDB_Score, Rating)
VALUES (11, 'Coraline', '100', 'Animation', '7.7', 'PG');


SELECT Title
FROM movies m
WHERE Genre = 'Sci-Fi';


SELECT Title, IMDB_SCORE
FROM movies m
WHERE IMDB_Score >= 6.5;


SELECT Title, Runtime, Rating
FROM movies m
WHERE Rating = 'G' OR Rating = 'PG'
AND Runtime <= 100;


SELECT Genre, AVG(Runtime)
FROM movies
WHERE  IMDB_Score <= 7.5
GROUP BY Genre


UPDATE movies
SET Rating = 'R'
WHERE Title = 'Starship Troopers' ;


SELECT Id, Rating
FROM movies
WHERE Genre = 'Horror'
OR Genre = 'Documentary';


SELECT AVG(IMDB_Score), MAX(IMDB_Score), MIN(IMDB_Score),  Genre
FROM movies
GROUP BY Genre;


SELECT AVG(IMDB_Score), MAX(IMDB_Score), MIN(IMDB_Score),  Genre
FROM movies
GROUP BY Genre
HAVING COUNT(*) >1;


SELECT * FROM movies;

DELETE FROM movies
WHERE Rating = 'R';

SELECT * FROM movies;


SELECT * FROM movies;
ID  	TITLE  	RUNTIME  	GENRE  	IMDB_SCORE  	RATING
1	Howard the Duck	110	Sci-Fi	4.6	PG
2	Lavalantula	83	Horror	4.7	TV-14
3	Starship Troopers	129	Sci-Fi	7.2	R
4	Waltz With Bashir	90	Documentary	8.0	R
5	Spaceballs	96	Comedy	7.1	PG
6	Monsters Inc.	92	Animation	8.1	G
7	Gladiator	155	Action	8.5	R
8	I Love You, Man	105	Comedy	7.0	R
9	Nacho Libre	92	Comedy	5.7	PG
10	Good Morning, Vietnam	121	Biography	7.3	R
11	Coraline	100	Animation	7.7	PG
(11 rows, 0 ms)


DELETE FROM movies
WHERE Rating = 'R';
Update count: 5
(1 ms)


SELECT * FROM movies;
ID  	TITLE  	RUNTIME  	GENRE  	IMDB_SCORE  	RATING
1	Howard the Duck	110	Sci-Fi	4.6	PG
2	Lavalantula	83	Horror	4.7	TV-14
5	Spaceballs	96	Comedy	7.1	PG
6	Monsters Inc.	92	Animation	8.1	G
9	Nacho Libre	92	Comedy	5.7	PG
11	Coraline	100	Animation	7.7	PG
