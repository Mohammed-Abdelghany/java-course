---------Lec2 task 2 ---------------------


CREATE TABLE Employees (
EmployeeID NUMBER  UNIQUE ,
FirstName varchar2(255),
LastName varchar2(255),
Department varchar2(255),
Salary NUMBER 
);
--------------------------------------------------------------------------
INSERT INTO Employees VALUES (101, 'John1', 'Doe1', 'HR', 20000);
INSERT INTO Employees VALUES (102, 'John2', 'Doe2', 'IT', 50000);
INSERT INTO Employees VALUES (103, 'John3', 'Doe3', 'CS', 40000);
INSERT INTO Employees VALUES (104, 'John4', 'Doe4', 'IT', 10000);
INSERT INTO Employees VALUES (105, 'John5', 'Doe5', 'ZX', 30000);
--------------------------------------------------------------------------
DELETE FROM Employees  WHERE EmployeeID=3;
--------------------------------------------------------------------------
UPDATE Employees SET SALARY=600000 WHERE EmployeeID =101;
--------------------------------------------------------------------------
SELECT * FROM Employees WHERE DEPARTMENT='IT';
--------------------------------------------------------------------------
SELECT EmployeeID,
       FirstName || LastName AS FullName,
       Department,
       Salary
FROM Employees;
--------------------------------------------------------------------------
