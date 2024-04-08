--CREATE TABLE STUDENTS
--(StudentID varchar(50) , Name varchar(50) , Age int, Department varchar (50))

--CREATE TABLE PRODUCTS
--(ProductID int, ProductName varchar(50) , Unitprice int, Category varchar (50))


--INSERT
--Inserting a new record given in the student table


INSERT INTO STUDENTS VALUES
(101, 'Amos Osamudiamen', 22, 'Computer Science')

--Insert 9 records of my choice into the student table

INSERT INTO STUDENTS VALUES 
(102, 'Remilekun Ayo', 19, 'Chemistry'),
(103, 'Lima Osamudiamen', 23, 'Physics'),
(104, 'Amos Wunmi', 21, 'Micro Biology'),
(105, 'Asi Osdiamen', 31, 'Electrical Engineering'),
(106, 'Victor Tina', 24, 'Chemistry'),
(107, 'Alex Ayo', 20, 'Medical Laboratory Science'),
(108, 'Shayo Olu', 18, 'Medicine'),
(109, 'Serah Osuden', 26, 'Computer Science'),
(112, 'Chukwu Eze', 23, 'Computer Science')

--ADD A NEW ENTRY TO THE PRODUCT'S TABLE

INSERT INTO PRODUCTS VALUES
(102, 'LAPTOP' , 1200, 'ELECTRONICS')

--Insert 9 records of my choice into the PRODUCTS table

INSERT INTO PRODUCTS VALUES
(103, 'CPU', 19000, 'ELECTRONICS'),
(104, 'EARPIECE', 1000, 'ACCESSORIES'),
(105, 'SUIT', 35000, 'CLOTHING'),
(106, 'TROUSER', 7000, 'CLOTHING'),
(107, 'FAN', 20000, 'ELECTRONICS'),
(108, 'BIRO', 50, 'STATIONARIES'),
(109, 'EARPOD', 6000, 'ACCESSORIES'),
(110, 'PENCIL', 30, 'STATIONARIES'),
(111, 'SHIRT', 5000, 'CLOTHING')


--UPDATE
--Upate the unit price of all product under electronics category in the products table to 3000

UPDATE PRODUCTS 
SET UNITPRICE =  3000 
WHERE CATEGORY = 'ELECTRONICS'

--Changing the department of the student with studentid 101 to biology 
UPDATE STUDENTS
SET DEPARTMENT = 'biology'
WHERE STUDENTID = 101


--DELETE
--Deleting all orders from the products from the products table that have a unit price less than 1500


DELETE FROM PRODUCTS
WHERE UNITPRICE < 1500

--Delete students that are below 25 years of age in the student table


DELETE FROM STUDENTS
WHERE AGE < 25

--WHERE
--RETRIEVING THE NAMES OF ALL CUSTOMERS FROM THE CUST0MER TABLE WHOSE EDUCATION LEVEL IS BACHELORS

SELECT CONCAT (FirstName, ' ', Lastname) AS FULLNAME
FROM customers
WHERE EducationLevel = 'Bachelors'

--NAME OF CUSTOMERS WHO WHERE BORN AFTER 1950

SELECT CONCAT (FirstName, ' ', Lastname) AS FULLNAME
FROM customers
WHERE YEAR (CONVERT(Date, Birthdate))> 1950

--AND
--RETRIEVING NAMES OF STUDENTS IN THE STUDENTS TABLE WHO ARE IN BIOLOGY DEPT AND ARE ABOVE 20

SELECT Name
FROM Students
WHERE Department = 'biology' and age > 20

--FETCH THE PRODUCT NAME AND PRICES FROM THE PRODUCTS TABLE WHERE UNITPRICES < 5000 AND CATEGORY IS STATIONARIES

SELECT PRODUCTNAME, UNITPRICE
FROM PRODUCTS
WHERE UNITPRICE < 5000 AND CATEGORY = 'Stationary'

--OR 
--RETRIEVEING THE NAMES OF STUDENTS FROM THE STUENTS TABLE WHO ARE IN CHEMISTRY DEPARTMENT OR HAVE AN AGE ABOVE 30
SELECT Name
FROM Students
WHERE Department = 'chemistry' or age > 30



