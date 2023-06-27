CREATE TABLE Employee(
Emp_Id int IDENTITY(1,1) primary key,
FirstName varchar(25),
LastName varchar(20),
Qualification varchar(20) DEFAULT 'Btech CSE',
Salary int,
DOB date,
Gender char(1));

INSERT INTO Employee(FirstName,LastName,Salary,DOB,Gender) VALUES('Tanuja','Sharma',150000,'2001-07-01','F'),
('Aarti','Yadav',40000,'1969-08-11','F'),
('Aanchal','Tomar',55000,'1968-07-01','M'),
('Jim','Desuza',55000,'1968-07-01','M'),
('Michael','Jackson',55000,'1968-07-01','M'),
('Pavan','Chaudhary',160000,'1975-07-01','M'),
('Bharti','Singh',75000,'1970-09-01','F'),
('Moksha','Kaushik',35000,'2001-12-01','F'),
('Johny','Singh',125000,'1970-09-01','M'),
('David','Fernadez',35000,'2001-12-01','M'),
('Ishika','Srivastava',65000,'2005-07-01','F'),
('Biplav','Kumar',45000,'1972-07-01','M'),
('Rohit','Kumar',30000,'2003-07-01','M'),
('Sunny','Tomar',90000,'2001-11-01','M');

/*Display all employees details*/
SELECT* FROM Employee;


/*Display all employees ordered by salary in asc order*/
SELECT * 
FROM Employee 
ORDER BY Salary;

/*Display all employees ordered by their gender and then name*/
SELECT *
FROM Employee
ORDER BY Gender, FirstName;

/*Display first 5 employees in the table*/
SELECT TOP 5* FROM Employee;

/*Display first and last names of all employees*/
SELECT FirstName,LastName
FROM Employee;

/*Display all male employees*/
SELECT* FROM Employee 
WHERE Gender='M';

/*Find all employee's id's and names who were born after 1969*/
SELECT Emp_Id, FirstName, LastName
FROM Employee
WHERE DOB >= '1970-01-01';

/*Display all employees who are female & (born after 1969 or whose Salary greater than 80000)*/
SELECT* FROM Employee
WHERE (DOB >= '1970-01-01' AND Gender = 'F') OR salary > 80000;

/*Display all employees born between 1970 and 1975*/
SELECT* FROM employee
WHERE DOB BETWEEN '1970-01-01' AND '1975-01-01';

/* Display all employees named Jim, Michael, Johnny or David*/
SELECT* FROM employee
WHERE FirstName IN ('Jim', 'Michael', 'Johnny', 'David');

/*Display the number of employees working*/
SELECT COUNT(Emp_Id) AS No_of_Employees
FROM Employee;

/*Display the average of all employee's salaries*/
SELECT AVG(Salary) AS Avg_Salary
FROM Employee;

/*Find the sum of all employee's salaries*/
SELECT SUM(Salary) As Sum_of_Salary
FROM Employee;

/*Find out how many males and females there are.*/
SELECT COUNT(Gender) As Gender_Count, Gender
FROM Employee
GROUP BY Gender;