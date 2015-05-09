CREATE TABLE dishes
(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(40) NOT NULL,
  image_url VARCHAR(250)
);

insert into dishes (name, image_url) values ('Yummy Steak', 'http://www.burnstomachfat101.com/wp-content/uploads/2012/07/image004.jpg');

