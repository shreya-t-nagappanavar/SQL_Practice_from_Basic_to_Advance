-- Create the Employee table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    ManagerID INT,
    ProjectID INT,
    Salary DECIMAL(10, 2)
);

-- Create the Department table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    Location VARCHAR(50)
);

-- Create the Project table
CREATE TABLE Project (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50),
    Budget DECIMAL(12, 2)
);

-- Create the Manager table
CREATE TABLE Manager (
    ManagerID INT PRIMARY KEY,
    ManagerName VARCHAR(50),
    DepartmentID INT
);

-- Insert data into the Department table
INSERT INTO Department (DepartmentID, DepartmentName, Location) VALUES
(1, 'HR', 'New York'),
(2, 'Finance', 'Chicago'),
(3, 'IT', 'San Francisco'),
(4, 'Marketing', 'Los Angeles'),
(5, 'Operations', 'Houston');

-- Insert data into the Manager table
INSERT INTO Manager (ManagerID, ManagerName, DepartmentID) VALUES
(101, 'Alice Johnson', 1),
(102, 'Bob Smith', 2),
(103, 'Charlie Brown', 3),
(104, 'David Lee', 4),
(105, 'Eve Davis', 5);

-- Insert data into the Project table
INSERT INTO Project (ProjectID, ProjectName, Budget) VALUES
(201, 'Website Redesign', 50000.00),
(202, 'ERP Implementation', 150000.00),
(203, 'Cloud Migration', 120000.00),
(204, 'Market Research', 30000.00),
(205, 'Process Optimization', 40000.00);

-- Insert data into the Employee table
INSERT INTO Employee (EmployeeID, FirstName, LastName, DepartmentID, ManagerID, ProjectID, Salary) VALUES
(1, 'John', 'Doe', 1, 101, 201, 60000.00),
(2, 'Jane', 'Smith', 2, 102, 202, 75000.00),
(3, 'Mike', 'Johnson', 3, 103, 203, 90000.00),
(4, 'Emily', 'Williams', 4, 104, 204, 58000.00),
(5, 'Chris', 'Brown', 5, 105, 205, 62000.00),
(6, 'Anna', 'Davis', 3, 103, 203, 88000.00),
(7, 'Sam', 'Miller', 4, 104, 204, 54000.00),
(8, 'Olivia', 'Wilson', 2, 102, 202, 71000.00),
(9, 'Ryan', 'Moore', 5, 105, 205, 64000.00),
(10, 'Sophia', 'Taylor', 1, 101, 201, 61000.00);

-- select * from Employee;

-- select * from Project;

-- select * from Manager;

-- select * from Department;

-- To find the max salary for employee

/* select max(salary), DepartmentID 
from Employee
group by DepartmentID; */

-- To find second highest salary

/* select max(salary) 
from Employee
where salary < (select max(salary) from Employee); */

-- To find second hight by limit

/*select salary
from Employee
order by salary desc
limit 1,1 */

-- print employee manager names.

/*select e.FirstName, e.LastName, d.DepartmentName, m.ManagerName
from Employee e 
join Department d 
on e.DepartmentID = d.DepartmentID
join Manager m on d.DepartmentID = m.DepartmentID */

-- get employee assigned to projects outside of their dept

/* select e.FirstName, p.ProjectName
from Employee e
left join Project p on e.ProjectID = p.ProjectID */





















