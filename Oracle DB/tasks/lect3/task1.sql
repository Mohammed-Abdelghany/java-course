								---------Lec3 task 1---------------------
								
----------------------------1-----------------------------------
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID BETWEEN  100 AND 105;

----------------------------2-----------------------------------
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID IN (151 , 152, 153, 154 , 155);

----------------------------3-----------------------------------

SELECT * FROM EMPLOYEES WHERE UPPER(FIRST_NAME ) LIKE 'P%';

----------------------------4-----------------------------------
SELECT * FROM EMPLOYEES WHERE UPPER(FIRST_NAME ) LIKE '%A';

----------------------------5-----------------------------------
SELECT * FROM EMPLOYEES WHERE 
UPPER(FIRST_NAME ) LIKE '%A%';

----------------------------6-----------------------------------
SELECT * FROM EMPLOYEES WHERE 
UPPER(FIRST_NAME ) LIKE '__E%';

----------------------------7-----------------------------------
SELECT * FROM EMPLOYEES WHERE MANAGER_ID IS null;

----------------------------8-----------------------------------
SELECT * FROM employees WHERE manager_id IS NOT NULL;

----------------------------9-----------------------------------
INSERT INTO employees (
    employee_id,    first_name,    last_name,
    email,    phone_number,    hire_date,
    job_id,   salary,    manager_id,
    department_id
) VALUES (
    300,     'Muhammed',    'Abdelghany',    'mooo@gmail.com',   
    '123.456.7890',    SYSDATE,    'IT_PROG',    5000,    NULL,60                       
);

----------------------------10-----------------------------------
SELECT * FROM EMPLOYEES WHERE JOB_ID ='AD_VP' OR JOB_ID='IT_PROG';
SELECT * FROM EMPLOYEES WHERE JOB_ID IN ('IT_PROG','AD_VP');

----------------------------11-----------------------------------
SELECT * FROM EMPLOYEES ORDER BY LAST_NAME ;--Asc is a default order so we don't need to write it

----------------------------12-----------------------------------
SELECT * FROM EMPLOYEES ORDER BY HIRE_DATE DESC ;


----------------------------13-----------------------------------
SELECT * FROM EMPLOYEES ORDER BY department_id ASC, salary DESC;

----------------------------14-----------------------------------
SELECT employee_id,
       first_name,
       LOWER(last_name) AS last_name,
       job_id,
       salary
FROM employees;	
  
----------------------------15-----------------------------------
SELECT employee_id,
       UPPER(first_name) AS FIRST_NAME,
       last_name,
       job_id,
       salary
FROM employees;	

----------------------------16-----------------------------------
SELECT employee_id,
       INITCAP(first_name) AS Fisrt_name,
       INITCAP (last_name)AS Last_name,
       job_id,
       salary
FROM employees;	

----------------------------17-----------------------------------
SELECT * FROM EMPLOYEES WHERE LOWER(LAST_NAME  )='smith';









