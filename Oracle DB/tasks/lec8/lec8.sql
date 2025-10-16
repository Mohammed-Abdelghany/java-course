								---lec8---
--task1
	SELECT location_id, city, country_name
	FROM locations
	NATURAL JOIN countries;
	
	SELECT location_id, city, country_name
	FROM locations
	JOIN countries USING (country_id);
	
	SELECT location_id, city, country_name
	FROM locations l
	JOIN countries c
	ON l.country_id = c.country_id;
	
	SELECT l.location_id, l.city, c.country_name
	FROM locations l
	INNER JOIN countries c
	ON l.country_id = c.country_id;
	
	SELECT l.location_id, l.city, c.country_name
	FROM locations l
	LEFT JOIN countries c
	ON l.country_id = c.country_id;
	
	SELECT l.location_id, l.city, c.country_name
	FROM locations l
	RIGHT JOIN countries c
	ON l.country_id = c.country_id;
	
	SELECT l.location_id, l.city, c.country_name
	FROM locations l
	FULL JOIN countries c
	ON l.country_id = c.country_id;

--task2
SELECT job_id, job_title, start_date, end_date, employee_id
FROM jobs
NATURAL JOIN job_history;

SELECT job_id, job_title, start_date, end_date, employee_id
FROM jobs
JOIN job_history USING (job_id);

SELECT job_id, job_title, start_date, end_date, employee_id
FROM jobs j
JOIN job_history jh
ON j.job_id = jh.job_id;

SELECT j.job_id, j.job_title, jh.start_date, jh.end_date, jh.employee_id
FROM jobs j
INNER JOIN job_history jh
ON j.job_id = jh.job_id;

SELECT j.job_id, j.job_title, jh.start_date, jh.end_date, jh.employee_id
FROM jobs j
LEFT JOIN job_history jh
ON j.job_id = jh.job_id;

SELECT j.job_id, j.job_title, jh.start_date, jh.end_date, jh.employee_id
FROM jobs j
RIGHT JOIN job_history jh
ON j.job_id = jh.job_id;

SELECT j.job_id, j.job_title, jh.start_date, jh.end_date, jh.employee_id
FROM jobs j
FULL JOIN job_history jh
ON j.job_id = jh.job_id;

--task3
SELECT employee_id, job_id, start_date, end_date, department_id
FROM job_history
WHERE job_id IN (
  SELECT job_id FROM jobs
  WHERE job_id IN ('AD_ASST', 'FI_MGR', 'FI_ACCOUNT', 'AC_MGR', 'AC_ACCOUNT', 'SA_MAN', 'SA_REP', 'PU_MAN')
);

SELECT department_id, department_name, manager_id, location_id
FROM departments
WHERE department_id IN (
  SELECT department_id FROM departments
  WHERE department_name IN ('Administration', 'Marketing', 'Purchasing', 'Human Resources', 'Shipping')
);

--task4
CREATE USER muhammed IDENTIFIED BY muhammed123;

GRANT CREATE SESSION TO muhammed;
GRANT CREATE TABLE TO muhammed;
GRANT INSERT, SELECT, UPDATE, DELETE ON hr.employees TO muhammed;

CONNECT muhammed/muhammed123;

CREATE TABLE student (
  id NUMBER PRIMARY KEY,
  name VARCHAR2(50)
);

GRANT INSERT, SELECT, UPDATE, DELETE ON student TO hr;

CONNECT hr/hr;

INSERT INTO muhammed.student VALUES (1, 'Ali');
SELECT * FROM muhammed.student;
UPDATE muhammed.student SET name = 'Omar' WHERE id = 1;
DELETE FROM muhammed.student WHERE id = 1;

CONNECT system/system_password;

REVOKE CREATE SESSION FROM muhammed;
REVOKE CREATE TABLE FROM muhammed;
REVOKE INSERT, SELECT, UPDATE, DELETE ON hr.employees FROM muhammed;
REVOKE INSERT, SELECT, UPDATE, DELETE ON muhammed.student FROM hr;



						
	