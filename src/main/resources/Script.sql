
INSERT INTO homes (address, homenumber) VALUES ('36 E. Bayberry Rd.Savannah, GA 31404', '565-6895');
INSERT INTO homes (address, homenumber) VALUES ('11 Essex Dr.Farmingdale, NY 11735', '454-4544');
INSERT INTO homes (address, homenumber) VALUES ('920 Arlington Street Clifton, NJ 07011', '985-4515');
INSERT INTO homes (address, homenumber) VALUES ('234 High Street, PA 19159 ', '267-3940');


INSERT INTO people (last_name, first_name, mobile, birthday, home_id)
VALUES ('Carbral', 'Sheeri', '230-4233', '1970-02-23', 2);
INSERT INTO people (last_name, first_name, mobile, birthday, home_id)
VALUES ('Sharam', 'Raj', '186-5223', '1980-08-31', 3);
INSERT INTO people (last_name, first_name, mobile, birthday, home_id)
VALUES ('Durand', 'Noelle', '395-6161', '1960-07-06', 1);
INSERT INTO people (last_name, first_name, mobile, birthday, home_id)
VALUES ('Smith', 'Thomas', '395-6181', '1987-07-06', 1);
INSERT INTO people (last_name, first_name, mobile, birthday, home_id)
VALUES ('Smith', 'Jane', '393-6181', '1987-12-06', 3);
INSERT INTO people (last_name, first_name, mobile, birthday, home_id)
VALUES ('Brown', 'Doug', '466-6241', '1954-12-07', 3);


INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('The Black Panther', '135', 'Sci-Fi', '7.8', 'PG');

INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('Hidden Figures', '127', 'Drama', '7.8', 'PG');

INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('Frida', '123', 'Drama', '7.4', 'R');

INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('Friday', '90', 'Documentary', '8.0', 'R');

INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('Spaceballs', '97', 'Comedy', '7.3', 'R');

INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('Forrest Gump', '142', 'Drama', '8.1', 'G');

INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('Batman Begins', '140', 'Action', '8.8', 'PG-13');

INSERT INTO movies (title, runtime, genre, imbd_score, rating)
VALUES ('JarHead', '125', 'Drama', '7', 'R');

SELECT title, genre
FROM movies
WHERE genre = 'Sci-Fi';

SELECT imdb_score
FROM movies
WHERE imdb_score >= 6.5;

SELECT title, rating, runtime
FROM movies
WHERE rating = 'G' OR rating = 'PG' AND runtime < 100;

SELECT title, imdb_score, genre, runtime
FROM movies  WHERE imdb_score < 7.5
GROUP BY genre, runtime;

UPDATE movies
SET rating = 'R'
WHERE title = 'Full Metal Jacket';
SELECT title, rating
FROM movies;

SELECT id, rating
FROM movies
WHERE genre = 'Horror' OR genre = 'Documentary';

SELECT AVG (imdb_score),
MAX(imdb_score),
MIN(imdb_score)
FROM movies GROUP BY rating;

SELECT AVG(IMDB_Score),
MAX(IMDB_Score),
MIN(IMDB_Score)
FROM movies GROUP BY rating HAVING COUNT(*) > 1;

DELETE FROM movies
WHERE rating = 'R';