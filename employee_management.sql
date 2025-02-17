--Create a new database named day2
CREATE DATABASE day2;

--Select the database to use
USE day2;

-- Create employees table with different columns
CREATE TABLE employees 
  (id INT, 
    name VARCHAR(50), 
    age INT, 
    department VARCHAR(50), 
    salary DECIMAL(10,2));

--Insert employee details
INSERT INTO employees VALUES 
(1, 'Alice', 30, 'HR', 50000.00),
(2, 'Bob', 28, 'IT', 60000.00),
(3, 'Charlie', 35, 'Finance', 70000.00),
(4, 'David', 40, 'IT', 80000.00),
(5, 'Emma', 45, 'HR', 45000.00);

--Display all employee data
SELECT * FROM employees;

--Display employees from the IT department
SELECT * FROM employees WHERE department = 'IT';

--Display employees whose names start with 'A'
SELECT * FROM employees WHERE NAME LIKE 'A%';

--Display only name and salary columns
SELECT name, salary FROM employees;

--Display employees with even ID numbers
SELECT * FROM employees WHERE id % 2 = 0;

--Insert an employee detail with a NULL department
INSERT INTO employees VALUES 
(6, 'Rakshith', 47, NULL, 45500.00);

--Display employees whose department is NULL
SELECT * FROM employees WHERE department IS NULL;

-- Delete an employee named 'Frank' (Only works if Frank exists)
DELETE FROM employees WHERE name = 'Frank';

--Count total number of employees
SELECT COUNT(*) AS total_employees FROM employees;

--Display the average salary for each department
SELECT department, AVG(salary) AS avg_salary FROM employees GROUP BY department;

--Select only departments where the average salary is greater than 55,000
SELECT department, AVG(salary) AS avg_salary 
FROM employees 
GROUP BY department 
HAVING AVG(salary) > 55000;

--employees sorted by salary in ascending order
SELECT * FROM employees ORDER BY salary ASC;

-- Display the first 3 employees based on ID
SELECT * FROM employees ORDER BY id LIMIT 3;

-- 18. Truncate the table, which keeps the structure of the table intact
TRUNCATE TABLE employees;

-- Reinsert sample data after truncation
INSERT INTO employees (name, age, department, salary) VALUES
('Alice', 30, 'HR', 50000.00),
('Bob', 28, 'IT', 60000.00),
('Charlie', 35, 'Finance', 70000.00),
('David', 40, 'IT', 80000.00),
('Emma', 25, 'HR', 45000.00);

--Final view of updated data of all employees
SELECT * FROM employees;
