#USE employees;

#DESCRIBE employees;


USE codeup_test_db;
SHOW TABLES;
SELECT * FROM albums;

DESCRIBE albums;
ALTER TABLE albums
    ADD UNIQUE (artist, name );

INSERT INTO albums(artist, name, release_date, sales, genre)
    VALUES ('Test Artist', 'Test Album', 1999, 10, 'Test Genre');