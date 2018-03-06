
INSERT INTO MOVIES (Title, Runtime, Genre, IMDB_Score, Rating)
VALUES('Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG'),
('Lavalantula', 83, 'Horror', 4.7, 'TV-14'),
('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13'),
('Waltz With Basher', 90, 'Documentary', 8.0, 'R'),
('Spaceballs', 96, 'Comedy', 7.1, 'PG'),
('Monsters Inc', 92, 'Animation', 8.1, 'G'),
('Okja',120,'Action',7.4,'TV-MA'),
('Lady Bird',94,'Comedy',7.6,'R');





DELETE FROM movies
WHERE Rating ='R';

SELECT AVG(IMDB_Score),MAX(IMDB_Score),MIN(IMDB_Score)
FROM movies
GROUP BY Rating
HAVING COUNT(*)>1;

SELECT AVG(IMDB_Score),MAX(IMDB_Score),MIN(IMDB_Score)
FROM movies
GROUP BY Rating;


SELECT ID,Rating FROM movies
WHERE genre ='Horror' OR genre = 'Documentary';

UPDATE movies
SET Rating='R'
WHERE  Title = 'Starship Troopers';

SELECT AVG(Runtime) FROM movies
WHERE IMDB_Score<7.5
GROUP BY genre;

SELECT* FROM movies
WHERE Rating = 'G' OR Rating= 'PG'
AND Runtime<100;


SELECT* FROM movies
WHERE IMDB_Score>=6.5;


SELECT* FROM movies
WHERE genre = 'Sci-Fi';

SELECT* FROM movies