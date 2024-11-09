-- CREATE DATABASE CompanyDB;
-- USE CompanyDB;

-- CREATE TABLE Employee (
--     emp_id INT PRIMARY KEY,
--     emp_name VARCHAR(50),
--     emp_position VARCHAR(50),
--     emp_department VARCHAR(50)
-- );

-- CREATE TABLE Project (
--     project_id INT PRIMARY KEY,
--     project_name VARCHAR(50),
--     emp_id INT,  -- Foreign key referencing Employee table
--     FOREIGN KEY (emp_id) REFERENCES Employee(emp_id)
-- );

-- INSERT INTO Employee (emp_id, emp_name, emp_position, emp_department) VALUES
-- (1, 'Alice Johnson', 'Software Engineer', 'IT'),
-- (2, 'Bob Smith', 'Data Analyst', 'Analytics'),
-- (3, 'Charlie Brown', 'Project Manager', 'Operations'),
-- (4, 'David Lee', 'Backend Developer', 'IT'),
-- (5, 'Eve Adams', 'QA Tester', 'Quality');

-- INSERT INTO Project (project_id, project_name, emp_id) VALUES
-- (1, 'AI Development', 1),
-- (2, 'Data Analysis', 2),
-- (3, 'Website Redesign', 3),
-- (4, 'API Integration', 4),
-- (5, 'Automation Testing', 5);


-- SELECT Employee.emp_id, Employee.emp_name, Employee.emp_position, Project.project_name
-- FROM Employee,Project
-- WHERE Employee.emp_id = Project.emp_id
-- AND Project.project_id = 2;

SELECT *
FROM Employee NATURAL JOIN Project;
