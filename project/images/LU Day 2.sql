SELECT * FROM customers;
-- OR
SELECT * FROM customers
WHERE country = "UK" OR country = "France";

-- IN
SELECT * FROM customers
WHERE country IN ("UK","France");


-- NOT IN
SELECT * FROM customers
WHERE country NOT IN ("UK","France");

-- LIKE
SELECT * FROM customers
WHERE country LIKE "U_";

-- DISTINCT
SELECT DISTINCT country FROM customers;

-- Case when
SELECT *,
CASE WHEN age>=18 AND age<=40 THEN "Group 1"
	 WHEN age>=40 AND age<60 THEN "Group 2"
     ELSE "Group 3"
     END
     AS age_groups
FROM customers;

SELECT * FROM student;

CREATE TABLE student
(
roll_no INT,
sname VARCHAR(30),
age INT,
course VARCHAR(30)
);
-- Insert
INSERT INTO student VALUES 
(1,"Pooja",26,"MySQL"),
(2,"Ajay",23,"Python");

SELECT * FROM student;

DESCRIBE student;


SET SQL_SAFE_UPDATES = 0;

-- Update
UPDATE student SET course = "Excel"
WHERE roll_no = 1;

-- Delete
DELETE FROM student
WHERE roll_no = 1;

-- Drop a table
TRUNCATE TABLE student;

CREATE DATABASE lu_day2;
USE lu_day2;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM order_details;

-- Table relationships
SELECT * FROM customers
JOIN orders ON customers.customer_id = orders.customer_id;

SELECT * FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

SELECT c.customer_id, customer_name, order_id, order_date FROM 
customers c JOIN orders o ON c.customer_id = o.customer_id;


-- Get the customer names who have placed an order after 1st July 2023
SELECT c.customer_id, customer_name, order_id, order_Date FROM 
customers c JOIN orders o ON c.customer_id = o.customer_id
WHERE order_date>"2023-07-01";

-- Get the customers who have not placed an order
SELECT c.customer_id, customer_name, order_id, order_Date FROM 
customers c LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE order_id IS NULL;




