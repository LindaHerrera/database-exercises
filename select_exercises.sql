USE codeup_test_db;

SELECT 'albums by Pink Floyd' AS 'Pink Floyd';
#The name of all albums by Pink Floyd.
SELECT artist, name FROM albums;
SELECT * FROM albums WHERE artist = 'Pink Floyd';

SELECT 'Sgt. Peppers Lonely Hearts Club Band' AS 'Year Released';
#The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date, name FROM albums;
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT 'Nevermind' AS 'Genre';
#The genre for Nevermind
SELECT genre FROM albums WHERE name = 'Nevermind';

#Which albums were released in the 1990s
SELECT name FROM albums WHERE release_date BETWEEN '1989' AND '2000';

#Which albums had less than 20 million certified sales
SELECT name FROM albums WHERE sales < '20';

#All the albums with a genre of "Rock"
SELECT name FROM albums WHERE genre = 'Rock';