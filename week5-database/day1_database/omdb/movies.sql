CREATE DATABASE movies

CREATE TABLE movies
(
  id SERIAL4 PRIMARY KEY,
  title VARCHAR (250) NOT NULL,
  year INTEGER,
  genre VARCHAR (40),
  actors VARCHAR (250),
  plot VARCHAR (400),
  director VARCHAR(40),
  country VARCHAR(20),
  poster VARCHAR(250),
  imdbID VARCHAR(30)
);

INSERT INTO movies (title, year, genre, actors, plot, director, country, poster, imdbID) VALUES ( 'jaws', '2000');

