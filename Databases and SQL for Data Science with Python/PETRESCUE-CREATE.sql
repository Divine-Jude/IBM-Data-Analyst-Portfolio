---- Drop the PETRESCUE table in case it exists
--drop table PETRESCUE;
---- Create the PETRESCUE table 
--create table PETRESCUE (
--	ID INTEGER NOT NULL,
--	ANIMAL VARCHAR(20),
--	QUANTITY INTEGER,
--	COST DECIMAL(6,2),
--	RESCUEDATE DATE,
--	PRIMARY KEY (ID)
--	);
---- Insert sample data into PETRESCUE table
--insert into PETRESCUE values 
--	(1, 'Cat', 9, 450.09, '2018-05-29'),
--	(2, 'Dog', 3, 666.66, '2018-06-01'),
--	(3, 'Dog', 1, 100.00, '2018-06-04'),
--	(4, 'Parrot', 2,50.00, '2018-06-04'),
--	(5, 'Dog', 1, 75.75, '2018-06-10'),
--	(6, 'Hamster', 6, 60.60, '2018-06-11'),
--	(7, 'Cat',1, 44.44, '2018-06-11'),
--	(8, 'Goldfish', 24, 48.48, '2018-06-14'),
--	(9, 'Dog', 2, 222.22, '2018-06-15')
--;

SELECT * FROM PETRESCUE;

SELECT SUM(cost) FROM PETRESCUE;

SELECT SUM(cost) AS SUM_OF_COST FROM PETRESCUE;

SELECT MAX(quantity) FROM PETRESCUE;

SELECT AVG(cost) FROM PETRESCUE;

SELECT AVG(cost/quantity) FROM PETRESCUE
WHERE ANIMAL = 'Dog';

SELECT Round(cost) FROM PETRESCUE;

SELECT Length(ANIMAL) FROM PETRESCUE;

SELECT UCASE(ANIMAL) FROM PETRESCUE;

SELECT DISTINCT(UCASE(ANIMAL)) FROM PETRESCUE;

SELECT * FROM PETRESCUE
WHERE lCASE(ANIMAL) = 'cat';

SELECT DAY(RescueDate) FROM PETRESCUE
WHERE ANIMAL = 'Cat';

select SUM(QUANTITY) AS SUM_OF_RESCUE from PETRESCUE 
where MONTH(RESCUEDATE)= 5;

select SUM(QUANTITY) AS SUM_OF_RESCUE from PETRESCUE 
where Day(RESCUEDATE)= 14;

select (RESCUEDATE + 3 DAYS) from PETRESCUE;

select (CURRENT DATE - RESCUEDATE) from PETRESCUE;
