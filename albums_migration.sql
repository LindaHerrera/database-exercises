USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
  id INT UNSIGNED auto_increment,
  artist  varchar(50),
  name varchar(100),
  release_date INT,
  sales FLOAT,
  genre VARCHAR(255),
  PRIMARY KEY(id)
);

DESCRIBE albums;