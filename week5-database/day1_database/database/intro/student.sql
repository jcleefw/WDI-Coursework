-- comment
CREATE TABLE students
(
  id SERIAL4 PRIMARY KEY,
  firstname VARCHAR(50),
  lastname VARCHAR(50),
  dob DATE,
  gpa FLOAT8
);

INSERT INTO students (firstname, lastname,dob,gpa) VALUES ('cody', 'perry', '1/1/1995', 4.0);
INSERT INTO students (firstname, lastname,dob,gpa) VALUES ('john', 'smith', '1/20/1998', 3.7);
INSERT INTO students (firstname, lastname,dob,gpa) VALUES ('amelia', 'carton', '7/10/1995', 3.0);
INSERT INTO students (firstname, lastname,dob,gpa) VALUES ('megan', 'wark', '3/24/1996', 3.3);
INSERT INTO students (firstname, lastname,dob,gpa) VALUES ('stuar', 'mark', '8/18/1997', 3.2);
