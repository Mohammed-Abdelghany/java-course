								---lec7---
								
	SELECT CONCAT(FIRST_NAME, ' ' || LAST_NAME) Name, department_name FROM EMPLOYEES
	NATURAL JOIN departments;
	
	SELECT * FROM ORDERS 
	NATURAL JOIN customers;
	
	SELECT student_name, course_name FROM students
	NATURAL JOIN courses;
	
	SELECT project_name, employee_name
	FROM projects
	NATURAL JOIN employees;
	
	SELECT invoice_id, product_name, quantity, total_price
	FROM invoices
	NATURAL JOIN products;
	
	SELECT book_title, author_name
	FROM books
	NATURAL JOIN authors;
	
	SELECT class_name, schedule_time, instructor_name
	FROM class_schedules
	NATURAL JOIN instructors;
	
	SELECT supplier_name, product_name
	FROM suppliers
	NATURAL JOIN products;
	
	SELECT order_id, customer_name, shipping_date, shipping_status
	FROM orders
	NATURAL JOIN shipping;
	
	SELECT employee_name, job_title
	FROM employees
	NATURAL JOIN jobs;
	
--task2_1
SELECT e.employee_id, e.first_name || ' ' || e.last_name AS employee_name, d.department_name
FROM employees e
LEFT OUTER JOIN departments d
ON e.department_id = d.department_id;

SELECT p.product_id, p.product_name, c.category_name
FROM products p
LEFT OUTER JOIN categories c
ON p.category_id = c.category_id;

SELECT s.student_id, s.student_name, c.course_name
FROM students s
LEFT OUTER JOIN courses c
ON s.course_id = c.course_id;

SELECT o.order_id, o.order_date, c.customer_name
FROM orders o
LEFT OUTER JOIN customers c
ON o.customer_id = c.customer_id;

SELECT d.department_id, d.department_name, m.manager_name
FROM departments d
LEFT OUTER JOIN managers m
ON d.manager_id = m.manager_id;

SELECT b.book_id, b.book_title, a.author_name
FROM books b
LEFT OUTER JOIN authors a
ON b.author_id = a.author_id;

SELECT i.invoice_id, i.invoice_date, p.payment_status
FROM invoices i
LEFT OUTER JOIN payments p
ON i.invoice_id = p.invoice_id;

SELECT e.employee_id, e.first_name || ' ' || e.last_name AS employee_name, pa.project_name
FROM employees e
LEFT OUTER JOIN projects_assigned pa
ON e.employee_id = pa.employee_id;
--task2_2
SELECT e.employee_id, e.first_name || ' ' || e.last_name AS employee_name, d.department_name
FROM employees e
RIGHT OUTER JOIN departments d
ON e.department_id = d.department_id;

SELECT o.order_id, o.order_date, c.customer_name
FROM orders o
RIGHT OUTER JOIN customers c
ON o.customer_id = c.customer_id;

SELECT s.student_id, s.student_name, c.course_name
FROM students s
RIGHT OUTER JOIN courses c
ON s.course_id = c.course_id;

SELECT e.employee_id, e.first_name || ' ' || e.last_name AS employee_name, p.project_name
FROM employees e
RIGHT OUTER JOIN projects p
ON e.project_id = p.project_id;

SELECT t.transaction_id, t.amount, pm.payment_method_name
FROM transactions t
RIGHT OUTER JOIN payment_methods pm
ON t.payment_method_id = pm.payment_method_id;

SELECT b.book_id, b.book_title, a.author_name
FROM books b
RIGHT OUTER JOIN authors a
ON b.author_id = a.author_id;

SELECT p.product_id, p.product_name, c.category_name
FROM products p
RIGHT OUTER JOIN categories c
ON p.category_id = c.category_id;

SELECT s.student_id, s.student_name, d.dorm_room_number
FROM students s
RIGHT OUTER JOIN dorms d
ON s.dorm_id = d.dorm_id;
--task2_3
SELECT c.customer_id, c.customer_name, o.order_id, o.order_date
FROM customers c
FULL OUTER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT e.employee_id, e.first_name || ' ' || e.last_name AS employee_name, p.project_name
FROM employees e
FULL OUTER JOIN projects p
ON e.project_id = p.project_id;

SELECT p.product_id, p.product_name, s.supplier_name
FROM products p
FULL OUTER JOIN suppliers s
ON p.supplier_id = s.supplier_id;

SELECT s.student_id, s.student_name, c.course_name
FROM students s
FULL OUTER JOIN courses c
ON s.course_id = c.course_id;

SELECT a.author_id, a.author_name, b.book_title
FROM authors a
FULL OUTER JOIN books b
ON a.author_id = b.author_id;

SELECT e.employee_id, e.first_name || ' ' || e.last_name AS employee_name, d.department_name
FROM employees e
FULL OUTER JOIN departments d
ON e.department_id = d.department_id;

SELECT t.transaction_id, t.amount, pm.payment_method_name
FROM transactions t
FULL OUTER JOIN payment_methods pm
ON t.payment_method_id = pm.payment_method_id;

SELECT r1.customer_id, r1.customer_name AS region1_customer, r2.customer_name AS region2_customer
FROM region1_customers r1
FULL OUTER JOIN region2_customers r2
ON r1.customer_id = r2.custo_id;
--task2_4
SELECT first_name || ' ' || last_name AS employee_name
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT customer_id, customer_name
FROM customers
WHERE customer_id IN (
  SELECT customer_id
  FROM orders
  GROUP BY customer_id
  HAVING COUNT(order_id) = (
    SELECT MAX(order_count)
    FROM (
      SELECT COUNT(order_id) AS order_count
      FROM orders
      GROUP BY customer_id
    )
  )
);

SELECT product_name, price
FROM products
WHERE price > ANY (
  SELECT price
  FROM products
  WHERE category_id = (
    SELECT category_id FROM categories WHERE category_name = 'Accessories'
  )
);

SELECT first_name || ' ' || last_name AS employee_name
FROM employees
WHERE department_id = (
  SELECT department_id
  FROM employees
  WHERE first_name = 'John' AND last_name = 'Smith'
);

SELECT *
FROM orders
WHERE customer_id IN (
  SELECT customer_id
  FROM customers
  WHERE city = 'New York'
);

SELECT department_id, department_name
FROM departments d
WHERE NOT EXISTS (
  SELECT 1
  FROM employees e
  WHERE e.department_id = d.department_id
);

SELECT student_id, student_name
FROM students s
WHERE NOT EXISTS (
  SELECT 1
  FROM enrollments e
  WHERE e.student_id = s.student_id
);

SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM employees);

SELECT product_name, price
FROM products
WHERE price > (SELECT AVG(price) FROM products);

SELECT c.customer_id, c.customer_name
FROM customers c
WHERE NOT EXISTS (
  SELECT p.product_id
  FROM products p
  WHERE p.category_id = (
    SELECT category_id FROM categories WHERE category_name = 'A'
  )
  AND NOT EXISTS (
    SELECT 1
    FROM orders o
    JOIN order_items oi ON o.order_id = oi.order_id
    WHERE o.customer_id = c.customer_id
    AND oi.product_id = p.product_id
  )
);
--task2_5
SELECT first_name || ' ' || last_name AS employee_name, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

SELECT first_name || ' ' || last_name AS employee_name
FROM employees
WHERE department_id = (
  SELECT department_id FROM employees WHERE first_name = 'Alice'
);

SELECT * 
FROM products
WHERE price = (SELECT MIN(price) FROM products);

SELECT department_name
FROM departments
WHERE department_id = (
  SELECT department_id
  FROM employees
  WHERE salary = (SELECT MAX(salary) FROM employees)
);

SELECT manager_id
FROM employees
WHERE employee_id = (
  SELECT employee_id
  FROM employees
  WHERE hire_date = (SELECT MAX(hire_date) FROM employees)
);

SELECT first_name || ' ' || last_name AS employee_name, salary
FROM employees
WHERE salary = (SELECT AVG(salary) FROM employees);

SELECT *
FROM orders
WHERE order_date = (SELECT MIN(order_date) FROM orders);

SELECT first_name || ' ' || last_name AS employee_name, salary
FROM employees
WHERE salary > (SELECT salary FROM employees WHERE employee_id = 101);

SELECT student_name, gpa
FROM students
WHERE gpa = (SELECT gpa FROM students WHERE student_name = 'John Doe');

SELECT book_title, price
FROM books
WHERE price = (
  SELECT MAX(price)
  FROM books
  WHERE category_id = (
    SELECT category_id FROM categories WHERE category_name = 'Science'
  )
);
--task2_6
SELECT employee_id, first_name || ' ' || last_name AS employee_name, salary
FROM employees
WHERE salary > ANY (SELECT salary FROM employees WHERE department_id = 10);

SELECT employee_id, first_name || ' ' || last_name AS employee_name, salary
FROM employees
WHERE salary < ALL (SELECT salary FROM employees WHERE department_id = 20);

SELECT product_id, product_name, price
FROM products
WHERE price IN (
  SELECT price FROM products p
  JOIN categories c ON p.category_id = c.category_id
  WHERE c.category_name = 'Electronics'
);

SELECT customer_name
FROM customers
WHERE customer_id IN (
  SELECT customer_id
  FROM orders o
  JOIN order_items oi ON o.order_id = oi.order_id
  JOIN products p ON oi.product_id = p.product_id
  WHERE p.price > 1000
);

SELECT first_name || ' ' || last_name AS employee_name, job_title
FROM employees
WHERE job_title IN (
  SELECT job_title FROM employees GROUP BY job_title HAVING COUNT(*) > 1
);

SELECT department_name
FROM departments
WHERE department_id IN (
  SELECT department_id FROM employees GROUP BY department_id HAVING COUNT(*) > 1
);

SELECT *
FROM orders o
WHERE o.customer_id IN (
  SELECT customer_id FROM customers
  WHERE city IN (
    SELECT city FROM customers c2
    WHERE EXISTS (SELECT 1 FROM orders o2 WHERE o2.customer_id = c2.customer_id)
  )
);

SELECT b.book_title
FROM books b
WHERE b.author_id IN (
  SELECT author_id FROM books GROUP BY author_id HAVING COUNT(*) > 1
);

SELECT s.student_name
FROM students s
WHERE s.course_id IN (
  SELECT c.course_id
  FROM courses c
  JOIN professors p ON c.professor_id = p.professor_id
  WHERE p.professor_name = 'Dr. Smith'
);

SELECT first_name || ' ' || last_name AS employee_name, salary
FROM employees
WHERE salary IN (
  SELECT salary FROM employees WHERE department_id = 30
);







									
