--CREATE VIEW statement looks?

--CREATE VIEW view_name AS
--SELECT column1, column2, ...
--FROM table_name
--WHERE condition;

--CREATE OR REPLACE VIEW view_name AS
--SELECT column1, column2, ...
--FROM table_name
--WHERE condition;


CREATE VIEW EMPSALARY AS 
SELECT EMP_ID, F_NAME, L_NAME, B_DATE, SEX, SALARY
FROM EMPLOYEES;

CREATE OR REPLACE VIEW EMPSALARY AS 
SELECT EMP_ID, F_NAME, L_NAME, B_DATE, SEX, JOB_TITLE, MIN_SALARY, MAX_SALARY
FROM EMPLOYEES, JOBS 
WHERE EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;
--
SELECT * FROM EMPSALARY;
--
--DROP VIEW EMPSALARY;


CREATE OR REPLACE VIEW SCHOOL_DATA(
"School_Name","Safety_Rating", "Family_Rating", "Environment_Rating", "Instruction_Rating", "Leaders_Rating", "Teachers_Rating") AS 
SELECT NAME_OF_SCHOOL, Safety_Icon, Family_Involvement_Icon, Environment_Icon, Instruction_Icon, Leaders_Icon, Teachers_Icon	 
FROM CHICAGO_PUBLIC_SCHOOLS;

SELECT * FROM SCHOOL_DATA;



