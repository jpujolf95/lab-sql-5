USE sakila;

#1. drop column picture from staff
ALTER TABLE staff
DROP COLUMN picture;

#2. insert new staff member information 
SELECT * FROM customer
WHERE first_name = 'TAMMY' AND laSt_name = 'SANDERS';

INSERT INTO staff VALUES(
3,'Tammy', 'Sanders', 79, 'TAMMY.SANDERS@sakilacustomer.org' , 2, 1, 'Tammy', 123, NOW());

SELECT * FROM staff
ORDER BY staff_id DESC;

#3. Insert new movie 
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER'; #customer id is 130



SELECT film_id FROM film
WHERE title = 'Academy Dinosaur';

SELECT inventory_id FROM inventory
WHERE film_id = 1; # inventroy_id s for the movie 'Academy Dinosaur' are between 1 AND 8 

SELECT * FROM staff; # Mike Hillyer is staff_id 1 and store_id 1


#rental_id , rental_date , inventory_id, customer_id , return_date, staff_id, last_update
INSERT INTO rental VALUES(
16050,NOW(),5, 130, NULL ,1,NOW());

SELECT * FROM rental ORDER BY rental_id DESC LIMIT 1;

#4. delete non active users_ create back up table_ 

SELECT * FROM customer
WHERE active = 0; # see how many inactive users

CREATE TABLE backup_users(
customer_id int(11) default null,
email text,
last_date datetime);

#insert data in backup table
INSERT INTO backup_users (customer_id, email, last_date) VALUES
(16, 'SANDRA.MARTIN@sakilacustomer.org', NOW()),
(64, 'JUDITH.COX@sakilacustomer.org', NOW()),
(124, 'SHEILA.WELLS@sakilacustomer.org', NOW()),
(169, 'ERICA.MATTHEWS@sakilacustomer.org', NOW()),
(241, 'HEIDI.LARSON@sakilacustomer.org', NOW()),
(271, 'PENNY.NEAL@sakilacustomer.org', NOW()),
(315, 'KENNETH.GOODEN@sakilacustomer.org', NOW()),
(368, 'HARRY.ARCE@sakilacustomer.org', NOW()),
(406, 'NATHAN.RUNYON@sakilacustomer.org', NOW()),
(446, 'THEODORE.CULP@sakilacustomer.org', NOW()),
(482, 'MAURICE.CRAWLEY@sakilacustomer.org', NOW()),
(510, 'BEN.EASTER@sakilacustomer.org', NOW()),
(534, 'CHRISTIAN.JUNG@sakilacustomer.org', NOW()),
(558, 'JIMMIE.EGGLESTON@sakilacustomer.org', NOW()),
(592, 'TERRANCE.ROUSH@sakilacustomer.org', NOW());

SELECT * FROM backup_users;

#delete non active users from main 
DELETE FROM customer
WHERE active = 0; #deleting information from a table can have important consequences as it affects other relational tables!
