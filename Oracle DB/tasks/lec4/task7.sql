---------task1------------------
--Q1 
CREATE TABLE CUSTOMERS (
  full_name VARCHAR2(255)
);

INSERT INTO CUSTOMERS (full_name) VALUES ('   Ali   ');
INSERT INTO CUSTOMERS (full_name) VALUES ('  Sara');
INSERT INTO CUSTOMERS (full_name) VALUES ('Mona  ');
INSERT INTO CUSTOMERS (full_name) VALUES ('$John$');
INSERT INTO CUSTOMERS (full_name) VALUES ('*Ahmed*');

--Q2
SELECT TRIM(full_name) AS "TRIM Names" FROM CUSTOMERS;

--Q3
SELECT LTRIM(full_name) AS "LTRIM Names" FROM CUSTOMERS;

--Q4
SELECT RTRIM(full_name) AS "RTRIM Names" FROM CUSTOMERS;

--Q5
SELECT TRIM(BOTH '$' FROM full_name) AS "TRIM $ Names" FROM CUSTOMERS;
SELECT TRIM(BOTH '*' FROM full_name) AS "TRIM * Names" FROM CUSTOMERS;

---------task2------------------
--Q1
SELECT REPLACE('promotion', 'o', '0') AS replaced_word FROM dual;

--Q2
SELECT REPLACE('This is a basic course', 'basic', 'advanced') AS replaced_sentence FROM dual;

--Q3
CREATE TABLE DEPARTMENTS (
  dept_name VARCHAR2(255)
);

INSERT INTO DEPARTMENTS (dept_name) VALUES ('HR');
INSERT INTO DEPARTMENTS (dept_name) VALUES ('IT');
INSERT INTO DEPARTMENTS (dept_name) VALUES ('Sales');

--Q4
SELECT LPAD(dept_name, 15, '*') AS "LPAD Dept" FROM DEPARTMENTS;

--Q5
SELECT RPAD(dept_name, 15, '-') AS "RPAD Dept" FROM DEPARTMENTS;

---------task3------------------
--Q1
SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY') AS "Current Date" FROM dual;

--Q2
SELECT TO_CHAR(SYSDATE, 'Day, Month YYYY') AS "Current Date" FROM dual;

--Q3
SELECT TO_CHAR(12345.67, '99,999.99') AS "Formatted Number" FROM dual;

--Q4
SELECT TO_CHAR(5000, '$99,999.99') AS "Salary" FROM dual;

--Q5
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS') AS "System Date Time" FROM dual;

---------task4------------------
--Q1
CREATE TABLE STUDENTS (
  name VARCHAR2(255),
  score NUMBER
);

INSERT INTO STUDENTS (name, score) VALUES ('Ahmed', 95);
INSERT INTO STUDENTS (name, score) VALUES ('Mona', 82);
INSERT INTO STUDENTS (name, score) VALUES ('Khaled', 75);
INSERT INTO STUDENTS (name, score) VALUES ('Sara', 65);
INSERT INTO STUDENTS (name, score) VALUES ('Omar', 55);

--Q2
SELECT name, score,
  CASE
    WHEN score >= 90 THEN 'A'
    WHEN score BETWEEN 80 AND 89 THEN 'B'
    WHEN score BETWEEN 70 AND 79 THEN 'C'
    ELSE 'F'
  END AS grade
FROM STUDENTS;

--Q3
SELECT name, score,
  CASE
    WHEN score >= 60 THEN 'Pass'
    ELSE 'Fail'
  END AS result
FROM STUDENTS;

--Q4
SELECT name, score,
  CASE
    WHEN score >= 90 THEN 'Excellent'
    WHEN score BETWEEN 80 AND 89 THEN 'Good'
    WHEN score BETWEEN 70 AND 79 THEN 'Average'
    ELSE 'Needs Improvement'
  END AS feedback
FROM STUDENTS;

--Q5
SELECT CASE
         WHEN TO_CHAR(SYSDATE,'DY')='MON' THEN 'Today is Monday'
         WHEN TO_CHAR(SYSDATE,'DY')='TUE' THEN 'Today is Tuesday'
         WHEN TO_CHAR(SYSDATE,'DY')='WED' THEN 'Today is Wednesday'
         WHEN TO_CHAR(SYSDATE,'DY')='THU' THEN 'Today is Thursday'
         WHEN TO_CHAR(SYSDATE,'DY')='FRI' THEN 'Today is Friday'
         WHEN TO_CHAR(SYSDATE,'DY')='SAT' THEN 'Today is Saturday'
         ELSE 'Today is Sunday'
       END AS "Day Message"
FROM dual;

---------task5------------------
--Q1
SELECT DECODE(score, 100, 'A', 90, 'B', 80, 'C', 'F') AS grade
FROM STUDENTS;

--Q2
CREATE TABLE STATUS_LOG (
  status_code CHAR(1)
);

INSERT INTO STATUS_LOG (status_code) VALUES ('N');
INSERT INTO STATUS_LOG (status_code) VALUES ('I');
INSERT INTO STATUS_LOG (status_code) VALUES ('C');

--Q3
SELECT DECODE(status_code, 'N','New','I','In Progress','C','Completed') AS "Status" 
FROM STATUS_LOG;

--Q4
CREATE TABLE PRODUCTS (
  product_name VARCHAR2(255),
  quantity NUMBER
);

INSERT INTO PRODUCTS VALUES ('Product1', 0);
INSERT INTO PRODUCTS VALUES ('Product2', 10);

SELECT DECODE(quantity, 0, 'Out of Stock', 'Available') AS "Availability"
FROM PRODUCTS;

--Q5
CREATE TABLE BONUS (
  department VARCHAR2(50)
);

INSERT INTO BONUS VALUES ('HR');
INSERT INTO BONUS VALUES ('IT');
INSERT INTO BONUS VALUES ('Sales');
INSERT INTO BONUS VALUES ('Admin');

SELECT DECODE(department, 'HR', 500, 'IT', 1000, 'Sales', 1500, 300) AS "Bonus"
FROM BONUS;
