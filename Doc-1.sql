--1. How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT(*) 
FROM actor 
WHERE last_name = 'Wahlberg';


--2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(*) 
FROM payment 
WHERE amount BETWEEN 3.99 AND 5.99;

--3. What film does the store have the most of? (search in inventory)
select film_id, COUNT (*) AS inventory_count 
FROM inventory 
group by film_id 
order BY inventory_count DESC 
LIMIT 1;

--4. How many customers have the last name ‘William’?
select COUNT(*)
from customer 
where last_name = 'William';

--5. What store employee (get the id) sold the most rentals?
select staff_id, COUNT(*) as rentals_count
from rental 
group by staff_id 
order by rentals_count desc 
limit 1;

--6. How many different district names are there?
select count(distinct district)
from address;

--7. What film has the most actors in it? (use film_actor table and get film_id)
select film_id, count(*) as actor_count
from film_actor fa group by film_id order by actor_count desc 
limit 1;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select count(*)
from customer
where store_id =1 and last_name like '%es';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430? (use group by and having > 250)
select amount, count(*) as rentals_count 
from payment 
where customer_id between 380 and 430
group by amount 
having count(*) > 250;

--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select count(distinct rating)
from film;