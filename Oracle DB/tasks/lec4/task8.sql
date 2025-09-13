---------task1------------------
--Q1
SELECT AVG(salary) AS "Average Salary" FROM EMPLOYEES;

--Q2
SELECT COUNT(*) AS "Total Employees" FROM EMPLOYEES;

--Q3
SELECT MAX(salary) AS "Maximum Salary" FROM EMPLOYEES;

--Q4
SELECT MIN(salary) AS "Minimum Salary" FROM EMPLOYEES;

--Q5
SELECT SUM(salary) AS "Total Salary" FROM EMPLOYEES;

--Q6
SELECT department_id, AVG(salary) AS "Average Salary"
FROM EMPLOYEES
GROUP BY department_id;

--Q7
SELECT job_id, COUNT(*) AS "Number of Employees"
FROM EMPLOYEES
GROUP BY job_id;

--Q8
SELECT department_id, SUM(salary) AS "Total Salary"
FROM EMPLOYEES
GROUP BY department_id
HAVING SUM(salary) > 50000;

--Q9
SELECT AVG(COMMISSION_PCT) AS "Average Commission"
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NOT NULL;

--Q10
SELECT COUNT(*) AS "Employees with Salary > 10000"
FROM EMPLOYEES
WHERE salary > 10000;

--Q11
SELECT job_id, MAX(salary) AS "Max Salary", MIN(salary) AS "Min Salary"
FROM EMPLOYEES
GROUP BY job_id;

--Q12
SELECT manager_id, SUM(salary) AS "Total Salary"
FROM EMPLOYEES
GROUP BY manager_id;

--Q13
SELECT department_id, job_id, SUM(salary) AS "Total Salary"
FROM EMPLOYEES
GROUP BY department_id, job_id;

--Q14
SELECT job_id, COUNT(*) AS "Number of Employees"
FROM EMPLOYEES
GROUP BY job_id
HAVING COUNT(*) > 5;

--Q15
SELECT department_id,
       COUNT(*) AS "Total Employees",
       AVG(salary) AS "Average Salary",
       MAX(salary) AS "Maximum Salary",
       MIN(salary) AS "Minimum Salary"
FROM EMPLOYEES
GROUP BY department_id;

--Q16
SELECT department_id
FROM EMPLOYEES
GROUP BY department_id
HAVING AVG(salary) > 8000 AND COUNT(*) < 10;

--Q17
SELECT department_id, SUM(salary) AS "Total Salary"
FROM EMPLOYEES
GROUP BY department_id
ORDER BY SUM(salary) DESC
FETCH FIRST 1 ROW ONLY; --such as limit in mysql

--Q18
SELECT department_id,
       SUM(salary) AS "Total_Salary",
       AVG(salary) AS "Average_Salary"
FROM EMPLOYEES
GROUP BY department_id;
