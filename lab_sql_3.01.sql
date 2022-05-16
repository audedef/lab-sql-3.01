-- ACTIVY 1

Use sakila;

-- 1. Drop column picture from staff.
alter table staff
drop column picture ;

select * from staff ;


-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
select * from customer 
WHERE first_name = "TAMMY";
-- customer_id = 75, store_id = 2, adress_id = 79
select * from staff;

INSERT INTO staff(staff_id,first_name,last_name,address_id, email, store_id, active, username) 
VALUES
(3,'Tammy','Sanders', 79, 'Tammy.Sanders@sakilastaff.com', 2, 1, 'Tammy');

select * from staff ;


-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. 

select * from rental;
-- we need the following info for the rental : rental_id, rental_date, inventory_id, cust_id, return_date, staff_id, last_update
select * from customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
-- cust_id = 130, store_id = 1, email = charlotte.hunter@sakilacustomer.org, adress_id = 134, active = 1

select * from film 
WHERE title = 'Academy Dinosaur';
select * from inventory 
where film_id = 1;
-- film_id = 1 

select * from rental
WHERE inventory_id IN (1,2,3,4) ;
-- put one of these values as inventory_id

INSERT INTO rental(rental_date, inventory_id, customer_id, staff_id, last_update)
VALUES
(CURDATE(),3,130,1, CURDATE());

select * from rental
where customer_id = 130;
-- my value is the rental_id 16050, with no return date at the moment (by default, = NULL)

