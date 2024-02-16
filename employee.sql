CREATE DATABASE internship_project;
USE internship_project;
-- cerate a table --
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);
-- insert in to values in table--
INSERT INTO employees (name, department, salary) VALUES
('John Doe', 'HR', 50000.00),
('Jane Smith', 'IT', 60000.00),
('Alice Johnson', 'Finance', 55000.00),
('Bob Williams', 'Marketing', 52000.00),
('James','manager', 58000.00),
('roshan', 'HR', 50000.00),
('WILLAM', 'IT', 60000.00),
('JACK', 'Finance', 55000.00),
('ROBE', 'Marketing', 52000.00);
SELECT * FROM employees;
-- . Ordering Query (Ascending Salary)--
SELECT * FROM employees ORDER BY salary ASC;
-- .Ordering Query (Descending Salary)--
SELECT * FROM employees ORDER BY salary DESC;
-- Filtering Query (Salary above a Certain Amount)
SELECT * FROM employees WHERE salary > 55000.00;
-- Aggregate Function Query (Average Salary)--
SELECT AVG(salary) AS average_salary FROM employees;
-- Group By Query (Average Salary by Department--
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;
-- Subquery Query (Finding Highest Salary)--
SELECT * FROM employees WHERE salary = (SELECT MAX(salary) FROM employees);
-- Count Query (Counting Employees in Each Department)--
SELECT department, COUNT(*) AS num_employees
FROM employees
GROUP BY department;
-- Update Query (Increasing Salary for IT Department Employees--
UPDATE employees
SET salary = salary * 1.1
WHERE department = 'IT';













