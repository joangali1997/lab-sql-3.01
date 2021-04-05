		-- LAB SQL 3.01 --
use sakila2;        
# Activity 1
# 1. Drop column picture from staff.
ALTER TABLE staff
DROP COLUMN picture;

SELECT * FROM staff;

# 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
SELECT *
FROM sakila2.customer
WHERE (first_name = 'TAMMY') AND (last_name = 'SANDERS');
			-- '3', 'TAMMY', 'SANDERS', '79', 'TAMMY.SANDERS@sakilacustomer.org', '2', '1', '1', ' ', '2006-02-15 04:57:20'

SELECT * FROM sakila2.staff;

DELETE FROM sakila2.staff
WHERE staff_id = 3; 

INSERT INTO staff()
VALUES
('3', 'TAMMY', 'SANDERS', '79', 'TAMMY.SANDERS@sakilacustomer.org', '2', '1', 'tammy', ' ', '2006-02-15 04:57:20');

SELECT * FROM sakila2.staff;


# 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental
SELECT * FROM sakila2.rental;

SELECT * FROM sakila2.film
WHERE title = 'Academy Dinosaur';
					-- '1', 'ACADEMY DINOSAUR', 'A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies', 2006, '1', NULL, '6', '0.99', '86', '20.99', 'PG', 'Deleted Scenes,Behind the Scenes', '2006-02-15 05:03:42'
	-- film_id = 1
    -- staff_id = 1
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
	-- customer_id: 130
    -- inventory_id: 1
SELECT * FROM sakila2.inventory
WHERE (film_id = '1') AND (store_id = '1');

SELECT CURDATE();

INSERT INTO rental()
VALUES
(16050, '2021-04-05', 1, 130, NULL, 1, '2021-04-05');

SELECT *
FROM sakila2.rental
WHERE rental_id = 16050;


# Activity 2 -> experimented by using dbdiagram.io