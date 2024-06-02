CREATE TABLE Departments (
      department_id INT AUTO_INCREMENT PRIMARY KEY,
      department_name VARCHAR(100)
    );
CREATE TABLE Employees (
      employee_id INT PRIMARY KEY,
      name VARCHAR(100),
      age INT,
      department_id INT,
      FOREIGN KEY (department_id) REFERENCES Departments(department_id)
    );
    
INSERT INTO Departments (department_name)
VALUES
('Engineering'),
('Business'),
('Management'),
('HR');

SELECT * FROM Departments;

INSERT INTO Employees (employee_id, name, age, department_id)
VALUES
(1, 'Ronak Patel', 24, 1),
(2, 'John Doe', 36, 2),
(3, 'Carol White', 32, 3),
(4, 'Ricky Patel', 28, 1);

SELECT * FROM Employees;

SELECT DISTINCT department_id
FROM Employees;

SELECT COUNT(employee_id) AS TotalEngineers
FROM Employees
WHERE department_id = 1;

SELECT COUNT(employee_id) AS TotalBuisnessPeople
FROM Employees
WHERE department_id = 2;

SELECT COUNT(employee_id) AS TotalManagers
FROM Employees
WHERE department_id = 3;

SELECT employee_id, name, age, department_id
FROM Employees
WHERE age BETWEEN 25 AND 30;







