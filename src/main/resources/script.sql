INSERT into movies(TITLE, RUNTIME, GENRE, IMDB_SCORE,RATING)
VALUES ('Howard the Duck',	'110', 'Sci-Fi', 4.6, 'PG'),
('Lavalantula',	'83', 'Horror', 4.7, 'TV-14'),
('Starship Troopers',	'129', 'Sci-Fi', 7.2, 'PG-13'),
('Waltz With Bashir', '90',	'Documentary', 8.0,	'R'),
('Spaceballs',	'96',	'Comedy', 7.1,	'PG'),
('Monsters Inc', '92', 'Animation',	8.1,	'G');

SELECT * FROM movies WHERE genre LIKE '%Sci%';
SELECT * FROM movies WHERE IMDB_SCORE >= 6.5;
SELECT * FROM movies WHERE Rating LIKE '%G%' AND Runtime < 100;
SELECT AVG(Runtime),  genre FROM movies WHERE imdb_score < 7.5 GROUP BY genre;
UPDATE movies SET rating = 'R' WHERE title = 'Starship Troopers';
SELECT id, rating FROM movies WHERE genre IN ('Horror', 'Documentary');
SELECT AVG(IMDB_SCORE), MAX(IMDB_SCORE), Min(IMDB_SCORE) FROM movies GROUP BY rating;
SELECT AVG(IMDB_SCORE), MAX(IMDB_SCORE), Min(IMDB_SCORE) FROM movies Group by rating HAVING COUNT(*) > 1;
Delete from movies where rating = 'R' ;

