-- create table student(
-- id serial primary key,
-- 	first_name varchar (50),
-- 	last_name varchar (50),
-- 	birth_date date NOT NULL
-- )

-- insert into student(first_name, last_name, birth_date) values
-- ('Marc','Benichou','02/11/1998'),('Yoan','Cohen','03/12/2010'),('Lea','Benichou','27/07/1987'),
-- ('Amelia','Dux','07/04/1996'),('David','Grez','14/06/2003'),('Omer','Simpson','03/10/1980')

-- SELECT * FROM student
-- SELECT first_name , last_name FROM student
-- SELECT first_name , last_name FROM student where id=2
-- SELECT first_name , last_name FROM student where last_name ilike '%benichou' and first_name ilike'%marc'  
-- SELECT first_name , last_name FROM student where first_name ilike '%a%'
-- SELECT first_name , last_name FROM student where first_name ilike 'a%'
-- SELECT first_name , last_name FROM student where first_name ilike '%a'
-- SELECT first_name , last_name FROM student where first_name ilike '%a%' offset 2
--  SELECT first_name , last_name FROM student where id=1 or id=3
-- SELECT * FROM student where birth_date >= date('1/01/2000') 



