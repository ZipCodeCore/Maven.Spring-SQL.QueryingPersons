
INSERT INTO movies (Title, Runtime, Genre, IMDB_SCORE, Rating)
Values ('Howard the Duck',110,'Sci-Fi',4.6,'PG'),('Starship Troopers',129,'Sci-Fi',7.2,'PG-13'),
('Lavalantula', 83, 'Horror',4.7,'TV-14'), ('Waltz With Bashir',90, 'Documentary',8.0, 'R'),
('Spaceballs',96, 'Comedy',7.1, 'PG'),
('Monsters Inc.', 92, 'Animation',8.1, 'G');

INSERT INTO movies (Title, Runtime, Genre, IMDB_SCORE, Rating)
Values ('Scarface'), ('Mean Girls'), ('shrek'), ('Shrek2'), ('Shrek');

SELECT * From movies WHERE GENRE = 'Sci-Fi';
SELECT * From movies WHERE IMDB_SCORE >= 6.5;



SELECT * From movies;


//SELECT From movies WHERE genre = 'Sci-Fi';
