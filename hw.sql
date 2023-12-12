-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT * FROM actor

SELECT * 
FROM actor
WHERE last_name LIKE 'Wahlberg'
--there are 115 walhbergs

-- 2. How many payments were made between $3.99 and $5.99?

select payment_id, amount
from payment
where amount between 3.99 and 5.99;
--none??

-- 3. What film does the store have the most of? (search in inventory)

select film_id, title
from film
group by film_id;


-- 4. How many customers have the last name ‘William’?

SELECT customer_id, last_name
from customer
where last_name = 'William%'
-- they are "like" william...2

-- 5. What store employee (get the id) sold the most rentals?

SELECT rental_id, staff_id, inventory_id
from rental
where staff_id > inventory_id;

-- 6. How many different district names are there?

SELECT address_id, district
from address

-- 7. What film has the most actors in it? (use film_actor table and get film_id)

select actor_id
from film_actor

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

select customer_id, store_id, last_name
from customer
where last_name = 'es%'

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)

SELECT amount, count(amount)
FROM payments 
where customer_id BETWEEN 380 and 430
GROUP BY amount
having count(amount) > 250

-- 10. Within the film table, how many rating categories are there? And what rating has the most
--  movies total?

select film_id, rating
from film


