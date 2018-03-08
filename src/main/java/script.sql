



INSERT INTO MOVIES ('Title',	'Runtime'	,'Genre,	'IMDB Score',	'Rating')
VALUES ('Howard the Duck',	110,	'Sci-Fi',	4.6,	'PG'),
('Lavalantula',	83,	'Horror'	,4.7,	'TV-14'),
('Starship Troopers',129,	'Sci-Fi',	7.2,	'PG-13'),
('Waltz With Bashir',90,	'Documentary',	8.0,	'R'),
('Spaceballs',	96,	'Comedy',	7.1,	'PG'),
('Monsters Inc.',	92,	'Animation',	8.1,	'G'),
('Toy Story',	95,	'Animation',	8.1,	'G');

Delete
From movies
Where rating = 'R';

SELECT rating
From movies
GROUP BY rating
HAVING COUNT(*) > 1;

SELECT AVG(IMDB_Score), Max(IMDB_Score),Min(IMDB_Score)
From movies;

SELECT id,RATING FROM MOVIES WHERE genre = 'Horror' Or genre = 'Documentary';

UPDATE MOVIES
 SET RATING = 'R'
WHERE TITLE = 'Starship Troopers';

SELECT  AVG(RUNTIME) average_runtime, genre
 FROM MOVIES
WHERE IMDB_SCORE <7.5
GROUP BY Genre;

SELECT TITLE
FROM MOVIES
WHERE RUNTIME < 100;
AND RATING ='PG','G';

SELECT *
FROM MOVIES
WHERE IMDB_SCORE >= 6.5

SELECT *
FROM MOVIES
WHERE Genre = 'Sci-Fi'