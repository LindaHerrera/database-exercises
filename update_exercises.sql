USE codeup_test_db;

#All albums in your table.

SELECT name AS 'All albumds in the table' FROM albums;
UPDATE albums SET sales = sales * 10;

#All albums released before 1980
SELECT name  AS 'albums released before 1980' FROM albums WHERE release_date < 1980;
#UPDATE albums SET release_date = release_date - 100

#All albums by Michael Jackson
SELECT name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Micheal Jackson';
SELECT * albums;
