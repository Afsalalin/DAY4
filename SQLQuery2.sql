CREATE DATABASE OFFICE;

USE OFFICE;

CREATE TABLE SIGNUP (
    SLNO INT,
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(20) NOT NULL,
    DESIGNATION VARCHAR(20) NOT NULL,
   );

   INSERT INTO LOGIN
   VALUES(3,102,25,'MALE');

   SELECT *FROM SIGNUP;

   CREATE TABLE LOGIN (
    SLNO INT,
    EMP_ID INT FOREIGN KEY REFERENCES SIGNUP(EMP_ID),
    EMP_AGE INT NOT NULL,
    GENDER VARCHAR(20) NOT NULL,
   );

   INSERT INTO LOGIN
   VALUES([PALAKKAD,102,29,'MALE');

   DELETE 
   FROM SIGNUP
   WHERE EMP_ID=101;

   UPDATE SIGNUP
   SET DESIGNATION='DRIVER',EMP_NAME='AMEEN'
   WHERE EMP_ID=102;

   SELECT*
   FROM SIGNUP;

   CREATE TABLE EMPLOYEE (
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(50) NOT NULL,
    DESIGNATION VARCHAR(50),
    SALARY DECIMAL(10, 2) NOT NULL
);

INSERT INTO EMPLOYEE (EMP_ID, EMP_NAME, DESIGNATION, SALARY)
VALUES
(1, 'Alice', 'Manager', 75000.00),
(2, 'Bob', 'Developer', 50000.00),
(3, 'Charlie', 'Developer', 60000.00),
(4, 'Diana', 'HR', 45000.00),
(5, 'Eve', 'Analyst', 65000.00);

SELECT MAX(SALARY) AS Second_Highest_Salary
FROM EMPLOYEE
WHERE SALARY < (SELECT MAX(SALARY) FROM EMPLOYEE);

SELECT DESIGNATION, COUNT(*) AS SAME_DESIGNATION
FROM EMPLOYEE
GROUP BY DESIGNATION;

SELECT *FROM SIGNUP;

SELECT *FROM LOGIN;

EXEC sp_rename 'LOGIN.SLNO', 'PLACE', 'COLUMN';

ALTER TABLE LOGIN
ALTER COLUMN PLACE VARCHAR(20);

SELECT SIGNUP.EMP_NAME,SIGNUP.DESIGNATION,LOGIN.PLACE
FROM SIGNUP
INNER JOIN LOGIN ON LOGIN.EMP_ID=SIGNUP.EMP_ID;

CREATE TABLE DEPARTMENT (
    DEPT_ID INT PRIMARY KEY,
    DEPT_NAME VARCHAR(50)
);

CREATE TABLE EMPLOYEE (
    EMP_ID INT PRIMARY KEY,
    EMP_NAME VARCHAR(50),
    DEPT_ID INT,
    SALARY DECIMAL(10, 2),
    FOREIGN KEY (DEPT_ID) REFERENCES DEPARTMENT(DEPT_ID)
);

INSERT INTO DEPARTMENT (DEPT_ID, DEPT_NAME)
VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Marketing');


INSERT INTO EMPLOYEE (EMP_ID, EMP_NAME, DEPT_ID, SALARY)
VALUES
(101, 'Alice', 1, 75000.00),
(102, 'Bob', 2, 50000.00),
(103, 'Charlie', 2, 60000.00),
(104, 'Diana', NULL, 45000.00), -- Employee without a department
(105, 'Eve', 3, 65000.00);

SELECT EMPLOYEE.EMP_ID, EMPLOYEE.EMP_NAME, DEPARTMENT.DEPT_NAME
FROM EMPLOYEE
INNER JOIN DEPARTMENT ON EMPLOYEE.DEPT_ID = DEPARTMENT.DEPT_ID;

SELECT EMPLOYEE.EMP_ID, EMPLOYEE.EMP_NAME, DEPARTMENT.DEPT_NAME
FROM EMPLOYEE
LEFT JOIN DEPARTMENT ON EMPLOYEE.DEPT_ID = DEPARTMENT.DEPT_ID;

SELECT EMPLOYEE.EMP_ID, EMPLOYEE.EMP_NAME, DEPARTMENT.DEPT_NAME
FROM EMPLOYEE
RIGHT JOIN DEPARTMENT ON EMPLOYEE.DEPT_ID = DEPARTMENT.DEPT_ID;

SELECT EMPLOYEE.EMP_ID, EMPLOYEE.EMP_NAME, DEPARTMENT.DEPT_NAME
FROM EMPLOYEE
FULL JOIN DEPARTMENT ON EMPLOYEE.DEPT_ID = DEPARTMENT.DEPT_ID;

CREATE 




















   

