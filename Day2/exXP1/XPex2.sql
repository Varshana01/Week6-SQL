-- SELECT  * FROM customer
-- SELECT first_name, last_name FROM customer as full_name
-- SELECT DISTINCT create_date FROM customer
-- SELECT * FROM customer ORDER BY first_name ASC
-- SELECT film_ID, title, description, release_year , rental_rate FROM film ORDER BY rental_rate ASC
-- SELECT phone, address FROM address WHERE district = 'Texas'
-- SELECT * FROM film WHERE film_id = 15 or film_id = 150
-- SELECT * FROM film WHERE title = 'Spy Mile'
-- SELECT film_id, title, description, length, rental_rate FROM film where title ilike 'Sp%'
-- SELECT film_id, title, rental_rate from film order by rental_rate asc limit 10
-- SELECT film_id, title, rental_rate from film order by rental_rate asc offset 10 limit 10

-- SELECT customer.customer_id,customer.first_name,customer.last_name, payment.amount, payment.payment_date
-- FROM customer
-- INNER JOIN payment
-- ON payment.customer_id = customer.customer_id order by customer_id;

--select film_id,title from film where film_id not in (select film_id from inventory)

-- select city.city, country.country_id, country.country
-- from city
-- inner join country
-- on country.country_id = city.country_id;

-- select customer.first_name, customer.last_name, payment.customer_id, payment.amount, payment.payment_date, payment.staff_id
-- from customer
-- inner join payment
-- on payment.customer_id = customer.customer_id order by payment.staff_id;

