-- SELECT * FROM language


-- SELECT film.title,film.description,language.name
-- from film
-- inner join language
-- on film.language_id = language.language_id

-- SELECT film.title,film.description,language.name
-- from film
-- left outer join language
-- on film.language_id = language.language_id

-- SELECT film.title,film.description,language.name
-- from film
-- right outer join language
-- on film.language_id = language.language_id

-- SELECT film.title,film.description,language.name
-- from film
-- full join language
-- on film.language_id = language.language_id


-- CREATE TABLE new_film(
-- new_film_id serial primary key,
-- 	new_id NUMERIC,
-- 	new_name VARCHAR(50)
-- )
--  INSERT INTO new_film(new_id,new_name)
--  VALUES (1,'Harry Potter'),(2,'Spirited Away'),(3,'Red Notice')


-- CREATE TABLE customer_review(
-- review_id serial primary key,
-- 	film_id INTEGER references new_film(new_film_id) on delete cascade,
-- 	language_id INTEGER references language(language_id),
-- 	title VARCHAR,
-- 	score NUMERIC CHECK (score>=0 and score < 11 ),
-- 	review_text VARCHAR,
-- 	last_update timestamp without time zone
-- )

-- INSERT INTO customer_review(film_id,language_id,title,score,review_text,last_update)
-- VALUES((SELECT film_id from film where film_id = 1),(SELECT language_id from language where language_id = 1),(SELECT new_name from new_film where new_name='Harry Potter'),8,'Really fascinating',(SELECT DISTINCT last_update FROM film where last_update='2013-05-26 14:50:58.951')),
-- ((SELECT film_id from film where film_id = 2),(SELECT language_id from language where language_id = 3),(SELECT new_name from new_film where new_name='Spirited Away'),8,'Really captivating',(SELECT DISTINCT last_update FROM film where last_update='2013-05-26 14:50:58.951'))

-- DELETE FROM new_film where new_name = 'Spirited Away'
-- select * from customer_review
----------------------------------------
-- UPDATE film
-- SET language_id = 2
-- WHERE film_id = 23 or film_id = 65
-- returning film

-- select count(rental_id) from rental where return_date is null

-- select rental.rental_id, film.title, film.rental_rate
-- from rental
-- inner join inventory
-- ON inventory.inventory_id = rental.inventory_id
-- inner join film
-- on film.film_id = inventory.film_id
-- WHERE rental.return_date is null
-- ORDER BY film.rental_rate desc limit 30

-- select title
-- from film
-- inner join film_actor
-- on film.film_id = film_actor.film_id
-- inner join actor
-- on actor.actor_id = film_actor.actor_id
-- where description ilike '%sumo%' and first_name='Penelope' and last_name='Monroe';

-- select title,length,rating
-- from film
-- where  description ilike '%documentary%' and length < 60 and rating = 'R';

-- select film.title, rental.rental_id
-- from customer
-- inner join rental 
-- on customer.customer_id = rental.customer_id
-- inner join film 
-- on film.film_id = customer.customer_id
-- where customer.first_name = 'Matthew' and customer.last_name = 'Mahan' and film.rental_rate >= 4.00 and rental.return_date < '2005-08-01' and rental.return_date >= '2005-07-2';

-- select film.title, rental.rental_id
-- from customer
-- inner join rental 
-- on customer.customer_id = rental.customer_id
-- inner join film 
-- on film.film_id = customer.customer_id
-- where customer.first_name = 'Matthew' and customer.last_name = 'Mahan' and film.rental_rate >= 4.00 and rental.return_date < '2005-08-01' and rental.return_date >= '2005-07-28';

-- select film.title, rental.rental_id
-- from customer
-- inner join rental on customer.customer_id = rental.customer_id
-- inner join film on film.film_id = customer.customer_id
-- where customer.first_name = 'Matthew' and customer.last_name = 'Mahan' and film.rental_rate >= 4.00 and rental.return_date < '2005-08-01' and rental.return_date >= '2005-07-28';



