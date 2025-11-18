CREATE DATABASE SQL_INTERN_TASK_3;
USE SQL_INTERN_TASK_3;

CREATE TABLE Students (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    marks INT
);

INSERT INTO Students VALUES (1, 'Arun', 20, 'CSE', 85),
(2, 'Banu', 21, 'ECE', 78),
(3, 'Charan', 19, 'MECH', 90),
(4, 'Divya', 22, 'CSE', 95),
(5, 'Faruk', 20, 'EEE', 70);

SELECT * FROM Students;

SELECT name, marks FROM Students;

------------------------
-- WHERE Clause Examples
------------------------

SELECT * FROM Students
WHERE department = 'CSE';

SELECT * FROM Students
WHERE marks > 80;

-------------
-- Using AND
-------------
 
SELECT * FROM Students
WHERE department = 'CSE' AND marks > 90;

-------------
-- Using OR
-------------

SELECT * FROM Students
WHERE department = 'ECE' OR department = 'EEE';

-----------------
-- LIKE Operator
-----------------

SELECT * FROM Students
WHERE name LIKE 'D%';

SELECT * FROM Students
WHERE name LIKE '%n';

----------------
-- BETWEEN Operator
----------------

SELECT * FROM Students
WHERE marks BETWEEN 70 AND 90;

---------
-- ORDER BY
---------

SELECT * FROM Students
ORDER BY marks DESC;

------
-- LIMIT
------

SELECT * FROM Students
ORDER BY marks DESC
LIMIT 3;



