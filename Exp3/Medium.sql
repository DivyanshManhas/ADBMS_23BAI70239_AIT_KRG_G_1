-- Medium level

/*
	Output the dept's highest earners.
*/
USE Exp3;

CREATE TABLE department (
    id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Create Employee Table
CREATE TABLE employee (
    id INT,
    name VARCHAR(50),
    salary INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);


-- Insert into Department Table
INSERT INTO department (id, dept_name) VALUES
(1, 'IT'),
(2, 'SALES');

-- Insert into Employee Table
INSERT INTO employee (id, name, salary, department_id) VALUES
(1, 'JOE', 70000, 1),
(2, 'JIM', 90000, 1),
(3, 'HENRY', 80000, 2),
(4, 'SAM', 60000, 2),
(5, 'MAX', 90000, 1);



SELECT [name], dept_name, s.maxium
FROM    (SELECT d.department_id, MAX(salary) as maxium
        FROM (SELECT * FROM employee WHERE department_id IN (SELECT id FROM department)) AS d
        GROUP BY d.department_id) AS s
INNER JOIN employee as e
ON e.department_id = s.department_id
INNER JOIN department as d
ON  d.id = s.department_id
WHERE e.salary = s.maxium
ORDER BY dept_name;


SELECT D.dept_name, E.name, E.salary, D.id
FROM employee as e
INNER JOIN department as d
ON e.department_id = d.id
WHERE E.salary IN 
(
    SELECT MAX(e2.salary)
    FROM employee as e2
    GROUP BY E2.department_id

);

