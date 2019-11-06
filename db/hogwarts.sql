DROP TABLE students;
DROP TABLE houses;

Student.delete_all()

CREATE TABLE students(
  id serial4 PRIMARY KEY,
  first_name varchar(255),
  second_name varchar(255),
  house varchar(255),
  age INT4
);

CREATE TABLE houses(
  id serial4 PRIMARY KEY,
  house_name  VARCHAR(255),
  logo_url  VARCHAR(255)
)
