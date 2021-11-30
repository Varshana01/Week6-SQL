-- SELECT avg(number_of_oscars) as number_oscars FROM actors1
-- SELECT DISTINCT number_of_oscars FROM actors1
-- SELECT * FROM actors1 WHERE age > date('1/01/1970')
-- SELECT * FROM actors1 WHERE first_name IN ('David','Morgan','Will')
-- insert into actors1(first_name, last_name, number_of_oscars) values
-- ('Matt','Damon',3)
-- UPDATE actors1 SET number_of_oscars = 2 WHERE number_of_oscars = 1
-- SELECT * FROM actors1

-- UPDATE actors1 SET first_name = 'Maty' WHERE first_name = 'Matt'
-- UPDATE actors1 set number_of_oscars = 4 WHERE first_name = 'George' RETURNING actors1
-- ALTER TABLE actors1 RENAME COLUMN age TO birthdate
-- DELETE FROM actors1 WHERE first_name = 'Helena'


-- CREATE TABLE movies(
-- movie_id SERIAL,
-- movie_title VARCHAR (50) NOT NULL,
-- movie_story TEXT,
-- actor_playing_id INTEGER,
-- PRIMARY KEY (movie_id),
-- FOREIGN KEY (actor_playing_id) REFERENCES actors1 (id)
-- );

-- INSERT INTO movies (movie_title, movie_story, actor_playing_id) VALUES
--     ( 'Good Will Hunting.', 
--     'Written by Affleck and Damon, the film follows 20-year-old South Boston janitor Will Hunting',
--     (SELECT id from actors1 WHERE first_name='Maty' AND last_name='Damon')),
--     ( 'Oceans Eleven.', 
--     'American heist film directed by Steven Soderbergh and written by Ted Griffin.', 
--     (SELECT id from actors1 WHERE first_name='Maty' AND last_name='Damon'));

-- SELECT * FROM movies

-- select actors1.first_name, actors1.last_name, movies.movie_title from actors1 inner join movies on actors1.id = movies.actor_playing_id 


-- CREATE TABLE producers(
-- producer_id SERIAL,
-- first_name VARCHAR (50) NOT NULL,
-- last_name VARCHAR (50) NOT NULL,
-- movie_produced VARCHAR (50) NOT NULL,
-- producer_movie_id INTEGER,
-- PRIMARY KEY (producer_id),
-- FOREIGN KEY (producer_movie_id) REFERENCES movies (movie_id)
-- );

-- INSERT into producers(first_name,last_name,movie_produced,producer_movie_id) VALUES
-- ('Maty','Damon','Oceans Eleven',(SELECT movie_id from movies WHERE movie_title= 'Oceans Eleven.')),
-- ('Maty','Damon','Good Will Hunting',(SELECT movie_id from movies WHERE movie_title= 'Good Will Hunting.'));

-- SELECT movies.movie_title, movies.movie_story, producers.first_name
-- FROM movies
-- INNER JOIN producers
-- ON movies.movie_id = producers.producer_movie_id
