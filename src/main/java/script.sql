 INSERT INTO movies (title, runtime, genre, IMDB_SCORE, rating)
    VALUES ('Howard the Duck', '110', 'Sci-Fi', '4.6', 'PG'),
        ('Starship Troopers', '129', 'Sci-Fi', '7.2', 'PG-13'),
         ('Waltz With Bashir', '90', 'Documentary', '8.0', 'R'),
         ('Spaceballs', '96', 'Comedy', '7.1', 'PG'),
         ('Monsters Inc.', '92', 'Animation', '8.1', 'G'),
         ('Friday', '131', 'Drama', '7.3', 'R'),
         ('Pulp Fiction', '234', 'Drama', '8.9', 'R'),
         ('The Transformers', '124', 'Animation', '7.3', 'PG');
         SELECT * FROM movies WHERE genre = 'Sci-Fi';

         SELECT * FROM movies WHERE IMDB_SCORE >= '6.5';

         SELECT * FROM movies WHERE runtime < '100';

        SELECT AVG( runtime) FROM movies WHERE IMDB_SCORE < '7.5'  GROUP BY genre;

        UPDATE movies SET rating = 'R' WHERE title = 'Starship Troopers';

        SELECT id, rating FROM movies WHERE genre = 'Horror' OR genre = 'Documentary';

        SELECT AVG(IMDB_SCORE), MAX(IMDB_SCORE), MIN(IMDB_SCORE) FROM movies;

        SELECT rating FROM movies GROUP BY rating HAVING COUNT(*)>1;

        DELETE FROM movies WHERE rating = 'R';