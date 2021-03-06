CREATE DATABASE fumblr;
\c fumblr

CREATE TABLE posts (
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(100),
  body text
);

ALTER TABLE posts
ADD category VARCHAR(50);

ALTER TABLE posts
ADD category_id int;

ALTER TABLE posts
DROP category;

CREATE TABLE categories (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100));

CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  email VARCHAR(200),
  password_digest VARCHAR(300)
);