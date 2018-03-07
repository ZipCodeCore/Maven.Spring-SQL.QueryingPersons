
INSERT INTO movies (Title, Runtime, Genre, IMDB_SCORE, Rating)
Values ('Howard the Duck',110,'Sci-Fi',4.6,'PG'),('Starship Troopers',129,'Sci-Fi',7.2,'PG-13'),
('Lavalantula', 83, 'Horror',4.7,'TV-14'), ('Waltz With Bashir',90, 'Documentary',8.0, 'R'),
('Spaceballs',96, 'Comedy',7.1, 'PG'),
('Monsters Inc.', 92, 'Animation',8.1, 'G');

INSERT INTO movies (Title, Runtime, Genre, IMDB_SCORE, Rating)
Values ('Scarface'), ('Mean Girls'), ('shrek'), ('Shrek2'), ('Shrek');

SELECT * From movies WHERE GENRE = 'Sci-Fi';
SELECT * From movies WHERE IMDB_SCORE >= 6.5;
SELECT * From movies WHERE Runtime < 100 AND RATING IN ('G', 'PG');
OR
SELECT * From movies WHERE Runtime < 100 AND (RATING = 'G' OR RATING = 'PG');

SELECT GENRE, AVG(RUNTIME)
FROM movies
WHERE IMDB_SCORE < 7.5
GROUP BY GENRE
;

UPDATE movies SET RATING = 'R' WHERE TITLE = 'Starship Troopers';
SELECT ID, TITLE, RATING from MOVIES WHERE GENRE IN('Horror', 'Documentary')
OR
SELECT ID, TITLE, RATING from MOVIES WHERE GENRE= 'Horror' OR GENRE = 'Documentary';

SELECT RATING, AVG(IMDB_SCORE), MAX(IMDB_SCORE), MIN(IMDB_SCORE)
from MOVIES GROUP BY RATING;

//before i could figure out how to use having workaround:
SELECT COUNT(*), RATING, AVG(IMDB_SCORE), MAX(IMDB_SCORE), MIN(IMDB_SCORE)
from MOVIES GROUP BY RATING ;

SELECT COUNT(*), RATING, AVG(IMDB_SCORE), MAX(IMDB_SCORE), MIN(IMDB_SCORE)
from MOVIES GROUP BY RATING HAVING COUNT(*) > 1;


DELETE from MOVIES WHERE RATING = 'R';


//SELECT * From movies;

