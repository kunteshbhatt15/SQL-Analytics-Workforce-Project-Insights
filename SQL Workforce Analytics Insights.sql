CREATE DATABASE IF NOT EXISTS ESA_SQL_2025;
USE ESA_SQL_2025;

CREATE TABLE DEPARTMENTS (
    DEPARTMENT_ID INT PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR(50),
    LOCATION VARCHAR(50)
);


CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY DECIMAL(10,2),
    HIRE_DATE DATE,
    DEPARTMENT_ID INT,
    CITY VARCHAR(50),
    FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS(DEPARTMENT_ID)
);


CREATE TABLE PROJECTS (
    PROJECT_ID INT PRIMARY KEY,
    PROJECT_NAME VARCHAR(100),
    BUDGET DECIMAL(12,2),
    DEPARTMENT_ID INT,
    FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS(DEPARTMENT_ID)
);


CREATE TABLE EMPLOYEE_PROJECTS (
    EMPLOYEE_ID INT,
    PROJECT_ID INT,
    HOURS_WORKED INT,
    PRIMARY KEY (EMPLOYEE_ID, PROJECT_ID),
    FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES(EMPLOYEE_ID),
    FOREIGN KEY (PROJECT_ID) REFERENCES PROJECTS(PROJECT_ID)
);

INSERT INTO DEPARTMENTS VALUES
(1,'Finance','Mumbai'),(2,'HR','Bangalore'),(3,'IT','Hyderabad'),(4,'Marketing','Delhi'),(5,'Sales','Pune'),(6,'Operations','Ahmedabad'),(7,'Analytics','Bangalore'),(8,'Support','Chennai'),(9,'Legal','Mumbai'),(10,'Procurement','Pune');
INSERT INTO EMPLOYEES VALUES
(1,'Rahul','Gupta',37800,'2017-02-15',1,'Mumbai'),
(2,'Amit','Nair',40600,'2018-03-15',2,'Bangalore'),
(3,'Neha','Kapoor',43400,'2019-04-15',3,'Hyderabad'),
(4,'Priya','Singh',46200,'2020-05-15',4,'Delhi'),
(5,'Karan','Verma',49000,'2021-06-15',5,'Pune'),
(6,'Riya','Joshi',51800,'2022-07-15',6,'Ahmedabad'),
(7,'Arjun','Patel',54600,'2023-08-15',7,'Chennai'),
(8,'Sneha','Mehta',57400,'2024-09-15',8,'Mumbai'),
(9,'Vikas','Iyer',60200,'2025-01-15',9,'Bangalore'),
(10,'Pooja','Sharma',63000,'2016-02-15',10,'Hyderabad'),
(11,'Rahul','Gupta',65800,'2017-03-15',1,'Delhi'),
(12,'Amit','Nair',68600,'2018-04-15',2,'Pune'),
(13,'Neha','Kapoor',71400,'2019-05-15',3,'Ahmedabad'),
(14,'Priya','Singh',74200,'2020-06-15',4,'Chennai'),
(15,'Karan','Verma',77000,'2021-07-15',5,'Mumbai'),
(16,'Riya','Joshi',79800,'2022-08-15',6,'Bangalore'),
(17,'Arjun','Patel',82600,'2023-09-15',7,'Hyderabad'),
(18,'Sneha','Mehta',85400,'2024-01-15',8,'Delhi'),
(19,'Vikas','Iyer',88200,'2025-02-15',9,'Pune'),
(20,'Pooja','Sharma',91000,'2016-03-15',10,'Ahmedabad'),
(21,'Rahul','Gupta',93800,'2017-04-15',1,'Chennai'),
(22,'Amit','Nair',96600,'2018-05-15',2,'Mumbai'),
(23,'Neha','Kapoor',99400,'2019-06-15',3,'Bangalore'),
(24,'Priya','Singh',102200,'2020-07-15',4,'Hyderabad'),
(25,'Karan','Verma',105000,'2021-08-15',5,'Delhi'),
(26,'Riya','Joshi',107800,'2022-09-15',6,'Pune'),
(27,'Arjun','Patel',110600,'2023-01-15',7,'Ahmedabad'),
(28,'Sneha','Mehta',113400,'2024-02-15',8,'Chennai'),
(29,'Vikas','Iyer',116200,'2025-03-15',9,'Mumbai'),
(30,'Pooja','Sharma',119000,'2016-04-15',10,'Bangalore'),
(31,'Rahul','Gupta',121800,'2017-05-15',1,'Hyderabad'),
(32,'Amit','Nair',124600,'2018-06-15',2,'Delhi'),
(33,'Neha','Kapoor',127400,'2019-07-15',3,'Pune'),
(34,'Priya','Singh',130200,'2020-08-15',4,'Ahmedabad'),
(35,'Karan','Verma',133000,'2021-09-15',5,'Chennai'),
(36,'Riya','Joshi',135800,'2022-01-15',6,'Mumbai'),
(37,'Arjun','Patel',138600,'2023-02-15',7,'Bangalore'),
(38,'Sneha','Mehta',141400,'2024-03-15',8,'Hyderabad'),
(39,'Vikas','Iyer',144200,'2025-04-15',9,'Delhi'),
(40,'Pooja','Sharma',147000,'2016-05-15',10,'Pune'),
(41,'Rahul','Gupta',149800,'2017-06-15',1,'Ahmedabad'),
(42,'Amit','Nair',152600,'2018-07-15',2,'Chennai'),
(43,'Neha','Kapoor',155400,'2019-08-15',3,'Mumbai'),
(44,'Priya','Singh',158200,'2020-09-15',4,'Bangalore'),
(45,'Karan','Verma',161000,'2021-01-15',5,'Hyderabad'),
(46,'Riya','Joshi',163800,'2022-02-15',6,'Delhi'),
(47,'Arjun','Patel',166600,'2023-03-15',7,'Pune'),
(48,'Sneha','Mehta',169400,'2024-04-15',8,'Ahmedabad'),
(49,'Vikas','Iyer',172200,'2025-05-15',9,'Chennai'),
(50,'Pooja','Sharma',175000,'2016-06-15',10,'Mumbai');
INSERT INTO PROJECTS VALUES
(1,'Project_1',250000,1),
(2,'Project_2',400000,2),
(3,'Project_3',550000,3),
(4,'Project_4',700000,4),
(5,'Project_5',850000,5),
(6,'Project_6',1000000,6),
(7,'Project_7',1150000,7),
(8,'Project_8',1300000,8),
(9,'Project_9',1450000,9),
(10,'Project_10',1600000,10),
(11,'Project_11',1750000,1),
(12,'Project_12',1900000,2),
(13,'Project_13',2050000,3),
(14,'Project_14',2200000,4),
(15,'Project_15',2350000,5),
(16,'Project_16',2500000,6),
(17,'Project_17',2650000,7),
(18,'Project_18',2800000,8),
(19,'Project_19',2950000,9),
(20,'Project_20',3100000,10);
INSERT INTO EMPLOYEE_PROJECTS VALUES
(1,1,81),
(1,7,61),
(2,2,82),
(2,8,62),
(3,3,83),
(3,9,63),
(4,4,84),
(4,10,64),
(5,5,85),
(5,11,65),
(6,6,86),
(6,12,66),
(7,7,87),
(7,13,67),
(8,8,88),
(8,14,68),
(9,9,89),
(9,15,69),
(10,10,90),
(10,16,70),
(11,11,91),
(11,17,71),
(12,12,92),
(12,18,72),
(13,13,93),
(13,19,73),
(14,14,94),
(14,20,74),
(15,15,95),
(15,1,75),
(16,16,96),
(16,2,76),
(17,17,97),
(17,3,77),
(18,18,98),
(18,4,78),
(19,19,99),
(19,5,79),
(20,20,100),
(20,6,80),
(21,1,101),
(21,7,81),
(22,2,102),
(22,8,82),
(23,3,103),
(23,9,83),
(24,4,104),
(24,10,84),
(25,5,105),
(25,11,85),
(26,6,106),
(26,12,86),
(27,7,107),
(27,13,87),
(28,8,108),
(28,14,88),
(29,9,109),
(29,15,89),
(30,10,110),
(30,16,90),
(31,11,111),
(31,17,91),
(32,12,112),
(32,18,92),
(33,13,113),
(33,19,93),
(34,14,114),
(34,20,94),
(35,15,115),
(35,1,95),
(36,16,116),
(36,2,96),
(37,17,117),
(37,3,97),
(38,18,118),
(38,4,98),
(39,19,119),
(39,5,99),
(40,20,120),
(40,6,100),
(41,1,121),
(41,7,101),
(42,2,122),
(42,8,102),
(43,3,123),
(43,9,103),
(44,4,124),
(44,10,104),
(45,5,125),
(45,11,105),
(46,6,126),
(46,12,106),
(47,7,127),
(47,13,107),
(48,8,128),
(48,14,108),
(49,9,129),
(49,15,109),
(50,10,130),
(50,16,110);

-- Write a SQL query to retrieve the department name and the total salary for each department. 
-- Calculate the average salary for each department and display the details based on the total salary of each department in descending order. 
SELECT DEPARTMENT_NAME,AVG(SALARY) AS AVERAGE_SALARY, SUM(SALARY) AS TOTAL_SALARY FROM DEPARTMENTS AS D
INNER JOIN EMPLOYEES AS E ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
GROUP BY DEPARTMENT_NAME
ORDER BY TOTAL_SALARY DESC ;

-- Construct  a  SQL  query  that  finds  the  top  3  employees  with  the  longest  tenure  in  the company. 
-- Provide their first name, last name, hire date, and calculate their tenure in years. 
-- Ensure the results are sorted by tenure in descending order. 
SELECT CONCAT(FIRST_NAME," ", LAST_NAME) AS EMP_NAME, HIRE_DATE, YEAR(CURDATE()) - YEAR(HIRE_DATE) AS TENURE FROM EMPLOYEES
ORDER BY TENURE DESC
LIMIT 3;

-- Write a query to find all employees working on more than one project. 
-- For each employee, display their first name, last name, the total number of projects they are involved in, and ensure the results are sorted by employee name. 
SELECT FIRST_NAME, LAST_NAME, COUNT(P.PROJECT_ID) AS TOTAL_NUMBER_OF_PROJECTS FROM EMPLOYEES AS E
INNER JOIN EMPLOYEE_PROJECTS AS EP ON E.EMPLOYEE_ID = EP.EMPLOYEE_ID
INNER JOIN PROJECTS AS P ON EP.PROJECT_ID = P.PROJECT_ID
GROUP BY FIRST_NAME, LAST_NAME,E.EMPLOYEE_ID
HAVING COUNT(P.PROJECT_ID) > 1
ORDER BY FIRST_NAME, LAST_NAME;

-- Create a SQL query that retrieves the details of projects and their total budget, as well as the average salary of employees working on each project. 
-- Use appropriate joins and ensure to filter out projects that have no employees assigned. 
SELECT P.PROJECT_NAME, P.BUDGET, AVG(SALARY) AS AVERAGE_SALARY FROM EMPLOYEES AS E
INNER JOIN EMPLOYEE_PROJECTS AS EP ON E.EMPLOYEE_ID = EP.EMPLOYEE_ID
INNER JOIN PROJECTS AS P ON EP.PROJECT_ID = P.PROJECT_ID
GROUP BY P.PROJECT_NAME, P.BUDGET, P.PROJECT_ID;

-- Create a SQL query to list employees who are eligible for a bonus (defined as employees earning above the average salary of all the employees). 
-- Include their first name, last name, and salary, and rank them based on their salary in descending order. 
SELECT FIRST_NAME,LAST_NAME,SALARY,DENSE_RANK() OVER(ORDER BY SALARY DESC) AS RANKS FROM EMPLOYEES
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES);

-- Write a SQL query to retrieve the top 3 projects with the highest total employee salary costs.For each project, display the project name, budget, 
-- total salary expenditure (sum of salaries of all assigned employees), and the number of unique employees assigned.
-- Sort the results in descending order of total employee salary costs. 
SELECT COUNT(DISTINCT E.EMPLOYEE_ID) AS EMP_COUNT, SUM(E.SALARY) AS TOTAL_COST, P.PROJECT_NAME, P.BUDGET FROM EMPLOYEES AS E
INNER JOIN EMPLOYEE_PROJECTS AS EP ON E.EMPLOYEE_ID = EP.EMPLOYEE_ID
INNER JOIN PROJECTS AS P ON EP.PROJECT_ID = P.PROJECT_ID
GROUP BY P.PROJECT_NAME, P.BUDGET
ORDER BY TOTAL_COST DESC
LIMIT 3;

-- Write a SQL query that shows the top 3 highest-paid unique employees in each department (using the  employees table). 
-- Ensure to display  their first names, last names, salaries,  and department id 
WITH TOP_3_EMP AS (SELECT DISTINCT EMPLOYEE_ID AS UNIQUE_EMP, CONCAT(FIRST_NAME,"_",LAST_NAME) AS EMP_NAME, SALARY, DEPARTMENT_ID,
DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS TOTAL_RANKS FROM EMPLOYEES)
SELECT UNIQUE_EMP,EMP_NAME, SALARY, DEPARTMENT_ID,TOTAL_RANKS FROM TOP_3_EMP
WHERE TOTAL_RANKS <= 3
ORDER BY TOTAL_RANKS;

-- Write a SQL query using window functions to calculate the cumulative salary for employees sorted by hire date. 
-- Display the first name, lastname, hire date, and cumulative salary amount. 
SELECT CONCAT(FIRST_NAME,"_",LAST_NAME) AS EMP_NAME, HIRE_DATE, SALARY, SUM(SALARY) OVER(ORDER BY HIRE_DATE) AS CUMM_SALARY FROM EMPLOYEES;

-- Write a query to retrieve all departments that have a minimum of 10 employees with salaries exceeding  60,000.
-- Provide  the  department  name,  location,  and  the  count  of  qualifying employees, ensuring the results are ordered by the employee count in descending order. 
SELECT COUNT(E.EMPLOYEE_ID) AS EMP_COUNT, D.DEPARTMENT_NAME, D.LOCATION FROM EMPLOYEES AS E
INNER JOIN DEPARTMENTS AS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE E.SALARY > 60000
GROUP BY D.DEPARTMENT_NAME,D.LOCATION
HAVING COUNT(E.EMPLOYEE_ID) >= 10
ORDER BY EMP_COUNT DESC;

-- Write  a  SQL  query  to  find  the  employee  with  the  highest  salary  in  the  'Marketing' department. Provide their first name, last name, and salary.
SELECT * FROM DEPARTMENTS;
SELECT CONCAT(FIRST_NAME,"_",LAST_NAME) AS EMP_NAME, SALARY FROM EMPLOYEES AS E
INNER JOIN DEPARTMENTS AS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE DEPARTMENT_NAME = "Marketing"
ORDER BY SALARY DESC
LIMIT 1;

-- Write a SQL query to display each department's name, minimum salary, maximum salary, and average salary of each department. 
-- Include only departments with at least 5 employees. 
SELECT DEPARTMENT_NAME, MIN(SALARY) AS MINIMUM_SALARY, MAX(SALARY) AS MAXIMUM_SALARY, AVG(SALARY) AS AVERAGE_SALARY FROM EMPLOYEES AS E
INNER JOIN DEPARTMENTS AS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
GROUP BY DEPARTMENT_NAME
HAVING COUNT(EMPLOYEE_ID) >= 5;

-- Write a sub-query to find all employees whose salary is higher than the average salary of employees  in  the  'Finance'  department.
-- Display  their  first  name,  last  name,  and  their department name. 
SELECT CONCAT(FIRST_NAME,"_",LAST_NAME) AS EMP_NAME, DEPARTMENT_NAME FROM EMPLOYEES AS E
INNER JOIN DEPARTMENTS AS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES E2 INNER JOIN DEPARTMENTS AS D2 ON E2.DEPARTMENT_ID = D2.DEPARTMENT_ID WHERE D2.DEPARTMENT_NAME = 'Finance' );

-- Write  a  SQL  query  to  create  a  view  called  HighSalaryEmployees  that  shows  employees earning the highest salary  in each department.
-- Include their first name, last name, salary, and department name. 
CREATE VIEW HighSalaryEmployees AS 
SELECT FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_NAME, DENSE_RANK() OVER(PARTITION BY DEPARTMENT_NAME ORDER BY SALARY DESC) AS SALARY_RANK FROM EMPLOYEES AS E
INNER JOIN DEPARTMENTS AS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

SELECT * FROM HighSalaryEmployees
WHERE SALARY_RANK = 1 ;

-- Write  a  SQL  query  to  select  employees  who  are  working  on  projects  that  have  a  budget greater  than  the  average  budget  of  all  projects. 
-- Include  their  first  name,  last  name,  and project names
SELECT FIRST_NAME, LAST_NAME,PROJECT_NAME FROM EMPLOYEES AS E
INNER JOIN EMPLOYEE_PROJECTS AS EP ON E.EMPLOYEE_ID = EP.EMPLOYEE_ID
INNER JOIN PROJECTS AS P ON EP.PROJECT_ID = P.PROJECT_ID
WHERE BUDGET > (SELECT AVG(BUDGET) FROM PROJECTS)
