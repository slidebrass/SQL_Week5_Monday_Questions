-- 1. How many actors are there with the last name 'Wahlberg'? 2
select last_name
from actor
where last_name = 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99? 0
select count(distinct amount)
from payment
where amount between 3.99 and 5.99;

-- 3. What film does the store have the most of? Zorro Ark
select film_id, count(*)
from inventory
group by film_id 
order by film_id desc;


-- 4. How many customers have the last name 'William'? 0
select last_name
from customers
where last_name = 'William';

-- 5. What store employee (get the ID) sold the most rentals? Staff_ID # 1: Mike Hillyer
select staff_id, count(*)
from rental 
group by staff_id 
order by count desc;

-- 6. How many different district names are there? 378
select * from address
select district, count(distinct district)
from address 
group by district

-- 7. What film has the most actors in it? (use film_actor table and get film_id) Film_ID # 508: Lambs Cincinatti
select count(distinct actor_id), film_id 
from film_actor 
group by film_id;

-- 8. From store_id 1, how many customers have a last name ending with 'es'? (use customer table) 13 
select count(last_name)
from customer 
where last_name like '%es' and store_id = 1;

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers 
-- with ID's between 380 and 430? (use group by and having>250) 3
select * from payment 
select amount, count(distinct amount)
from payment 
where customer_id between 380 and 430
group by amount
having count(amount) > 250;

-- 10. Within the film table, how many rating categories are there? 5
-- And what rating has the most movies total? PG-13
select * from film
select count(distinct rating)
from film;

select rating, count(rating)
from film 
group by rating
order by count(rating) desc;
