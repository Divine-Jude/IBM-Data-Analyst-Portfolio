DROP TABLE student;
CREATE TABLE student (
    Student_Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(20) NOT NULL UNIQUE,
    Major VARCHAR(20) DEFAULT 'undecided'
);
DESCRIBE student;

-- Adding a new column
ALTER TABLE student ADD COLUMN Gpa Decimal(3, 2);
# ALTER TABLE student ALTER COLUMN Gpa SET DATA TYPE CHAR(20);
ALTER TABLE student DROP COLUMN Gpa; -- Removing a table column

-- using TRUNCATE
TRUNCATE TABLE student;

-- Inserting VALUES into table
# INSERT INTO
# 	student
# VALUES
# 	(1, 'Jack','Biology'),
# 	(2, 'Kate', 'Siology'),
# 	(3, 'Stef', 'Computer Science'),
# 	(4, 'Mike', 'Chemistry');
INSERT INTO student(Student_Id, Name) VALUES(1, 'kate');
INSERT INTO student VALUES(2, 'Jack', 'Biology');
INSERT INTO student(Name, Major) VALUES('Mike', 'Chemistry');
INSERT INTO student VALUES(4, 'Miracle', 'Maths');

SELECT * FROM student;

-- update & deleting data from table
UPDATE student 
SET 
    Major = 'Bio'
WHERE
    Major = 'Biology';

--





