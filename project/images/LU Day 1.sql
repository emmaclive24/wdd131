CREATE DATABASE sql_data;
USE sql_data;

-- Create a table
CREATE TABLE student
(
roll_no INT,
sname VARCHAR(30),
age INT,
course VARCHAR(30)
);


-- Create 'customers' table
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    customer_id INT,
    customer_name VARCHAR(50),
    country VARCHAR(50),
    age INT
);

-- Insert data into 'customers' table
INSERT INTO customers (customer_id, customer_name, country, age) VALUES
(1,'Jack Mitchell', 'UK', 50),
(2,'Jane Lewis', 'Italy', 29),
(3,'Carol Wilson', 'France', 30),
(4,'John Young', 'Spain', 49),
(5,'Emma Lee', 'Mexico', 38),
(6,'Quinn Lee', 'Mexico', 48),
(7,'Jane Mitchell', 'Mexico', 27),
(8,'Emma Morgan', 'Netherlands', 60),
(9,'David Brown', 'UK', 67),
(10,'Noah Mitchell', 'Germany', 26),
(11,'John Lee', 'Italy', 36),
(12,'Sam Cooper', 'Canada', 56),
(13,'Carol Brown', 'Italy', 38),
(14,'Olivia Johnson', 'Australia', 57),
(15,'Emma Smith', 'UK', 58),
(16,'Quinn Mitchell', 'Spain', 60),
(17,'Frank Mitchell', 'France', 33),
(18,'Noah Carter', 'Canada', 68),
(19,'John Evans', 'UK', 31),
(20,'Mia Johnson', 'UK', 49),
(21,'David Morgan', 'Netherlands', 19),
(22,'Carol Walker', 'Canada', 49),
(23,'John Johnson', 'UK', 36),
(24,'Frank Carter', 'USA', 28),
(25,'Grace Doe', 'France', 67),
(26,'Quinn Lewis', 'Mexico', 58),
(27,'Sam Morgan', 'France', 34),
(28,'Grace Brown', 'Australia', 65),
(29,'David Johnson', 'UK', 35),
(30,'Ivy Miller', 'Mexico', 44),
(31,'Sam Smith', 'Italy', 18),
(32,'Jane Lee', 'Netherlands', 28),
(33,'Frank Harris', 'UK', 58),
(34,'Noah Cooper', 'Germany', 19),
(35,'Mia Mitchell', 'Netherlands', 24),
(36,'Ivy Cooper', 'UK', 67),
(37,'Alice Carter', 'USA', 39),
(38,'Quinn Cooper', 'Australia', 56),
(39,'Bob Reed', 'Netherlands', 43),
(40,'Carol Smith', 'USA', 48),
(41,'Rachel Evans', 'Mexico', 43),
(42,'Liam Mitchell', 'USA', 39),
(43,'Carol Reed', 'Canada', 61),
(44,'Quinn Walker', 'Netherlands', 64),
(45,'Jane Young', 'Canada', 58),
(46,'Carol Miller', 'Germany', 57),
(47,'Rachel Johnson', 'Australia', 62),
(48,'Rachel Doe', 'Canada', 54),
(49,'Bob Cooper', 'Spain', 30),
(50,'Olivia Carter', 'France', 38),
(51,'Jane Reed', 'USA', 44),
(52,'John Lewis', 'France', 61),
(53,'Liam Miller', 'Mexico', 48),
(54,'Quinn Wilson', 'Italy', 21),
(55,'Jane King', 'Australia', 24),
(56,'Jane Doe', 'Netherlands', 28),
(57,'Noah Miller', 'Germany', 35),
(58,'Rachel King', 'Australia', 48),
(59,'Henry Harris', 'Spain', 39),
(60,'Mia Evans', 'Germany', 25),
(61,'Grace Young', 'Italy', 43),
(62,'Alice Brown', 'Mexico', 56),
(63,'Grace King', 'Germany', 48),
(64,'Quinn Carter', 'Italy', 21),
(65,'Frank Doe', 'Netherlands', 64),
(66,'Liam Morgan', 'France', 65),
(67,'David Mitchell', 'Mexico', 31),
(68,'Grace Scott', 'Canada', 65),
(69,'David Harris', 'Germany', 18),
(70,'Mia Morgan', 'Spain', 49),
(71,'David Miller', 'Italy', 47),
(72,'David Scott', 'USA', 58),
(73,'Ivy Doe', 'USA', 51),
(74,'Sam Carter', 'Australia', 39),
(75,'Henry Carter', 'Italy', 37),
(76,'Jack Lee', 'France', 49),
(77,'Jack Green', 'Spain', 47),
(78,'Paul Brown', 'Spain', 46),
(79,'Carol Evans', 'Australia', 39),
(80,'Olivia Smith', 'USA', 64),
(81,'Emma Walker', 'Australia', 51),
(82,'Noah Lee', 'Australia', 68),
(83,'Olivia Harris', 'Spain', 47),
(84,'Bob Brown', 'USA', 20),
(85,'Alice Young', 'UK', 49),
(86,'Rachel Wilson', 'Spain', 30),
(87,'Jack Wilson', 'Netherlands', 43),
(88,'Alice Evans', 'Italy', 24),
(89,'Rachel Reed', 'UK', 40),
(90,'Paul Reed', 'France', 41),
(91,'Bob King', 'Mexico', 68),
(92,'Sam Lee', 'Spain', 27),
(93,'Rachel Cooper', 'Spain', 64),
(94,'Frank Green', 'France', 47),
(95,'Henry Young', 'Mexico', 67),
(96,'Carol Young', 'UK', 66),
(97,'Noah Reed', 'Canada', 38),
(98,'Olivia Brown', 'Mexico', 60),
(99,'David Evans', 'Spain', 37),
(100,'Grace Walker', 'Netherlands', 68);


-- View the table
SELECT * FROM customers;

-- View few columns of the table
SELECT customer_id, customer_name 
FROM customers;

-- Rename columns
SELECT customer_id, customer_name as cname
FROM customers;

-- LIMIT
SELECT * FROM customers
LIMIT 4,6;

-- Order By
SELECT * FROM customers
ORDER BY age DESC;

-- Where
SELECT * FROM customers
WHERE age>50
ORDER BY age;


-- AND
SELECT * FROM customers
WHERE age>50 and age<60
ORDER BY age;

SELECT * FROM customers
WHERE age>=50 and age<=60
ORDER BY age;

-- BETWEEN
SELECT * FROM customers
WHERE age between 50 and 60
ORDER BY age;

-- OR


-- IN


-- NOT IN


-- LIKE


-- DISTINCT


-- Case when





