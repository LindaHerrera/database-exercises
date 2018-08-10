USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
  id INT UNSIGNED auto_increment,
  artist  varchar(50),
  name varchar(100),
  release_date DATE,
  sales float,
  genre VARCHAR(100),
  PRIMARY KEY(id)
);

DESCRIBE albums;