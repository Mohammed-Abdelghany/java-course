

---------task1------------------
--Q1 
CREATE TABLE EMP_TEST (
NAME varchar2(255)
)
INSERT INTO EMP_TEST (NAME) VALUES ('   moo   ');
INSERT INTO EMP_TEST (NAME) VALUES ('   ahmed');
INSERT INTO EMP_TEST (NAME) VALUES ('khaled  ');
--Q2 
SELECT TRIM( Name)  "TRIM Names " from EMP_TEST;
--Q3
SELECT LTRIM( Name)  "LTRIM Names " from EMP_TEST;
--Q4
SELECT RTRIM( Name)  "RTRIM Names " from EMP_TEST;
--Q5
SELECT  TRIM(BOTH '#' FROM Name) "TRIM # Names"  FROM EMP_TEST ;

---------task2------------------
--Q1 
SELECT REPLACE('database', 'a', '@') AS replaced_word FROM dual;
--Q2 
SELECT REPLACE(' moo old old','old', 'new') AS replaced_word FROM dual;

--Q3
CREATE  TABLE PRODUCT (
id NUMBER PRIMARY KEY ,
product_name varchar2(255)
);
INSERT INTO PRODUCT  VALUES (1,'prod1');
INSERT INTO PRODUCT  VALUES (2,'prod2');
INSERT INTO PRODUCT  VALUES (3,'prod3');
--Q4
SELECT LPAD(product_name,15,'*') "lpad product_name" from PRODUCT;
--Q5
SELECT Rpad(product_name,15,'*') "lpad product_name" from PRODUCT;

---------task3------------------
--Q1
CREATE  TABLE STUDENTS (
id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,--الطريقة الحديثة   باستخدام Identity Column
name varchar2(255),
marks NUMBER  

);
INSERT INTO STUDENTS (name, marks) VALUES ('Ahmed', 85);
INSERT INTO STUDENTS (name, marks) VALUES ('Mona', 92);
INSERT INTO STUDENTS (name, marks) VALUES ('Khaled', 76);
INSERT INTO STUDENTS (name, marks) VALUES ('Sara', 88);
INSERT INTO STUDENTS (name, marks) VALUES ('Omar', 67);

--Q2
SELECT name,marks CASE 
	WHEN marks >= 90 THEN 'A'
	WHEN marks BETWEEN 80 AND 89 THEN 'B'
    WHEN marks BETWEEN 70 AND 79 THEN 'C'
    ELSE 'F'
    END
    AS 
    "grade"
    FROM STUDENTS;


--Q3




