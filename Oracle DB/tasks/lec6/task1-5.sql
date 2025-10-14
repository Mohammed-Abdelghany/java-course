-- =========================
-- 1. CHECK Constraint

-- a) Create Employees table with age >= 18
CREATE TABLE Employees (
    emp_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    age NUMBER CHECK (age >= 18)
);

-- b) Enforce salary in Staff table between 3000 and 10000
ALTER TABLE Staff
ADD CONSTRAINT chk_salary CHECK (salary BETWEEN 3000 AND 10000);

-- c) Add CHECK constraint to Products to ensure price > 0
ALTER TABLE Products
ADD CONSTRAINT chk_price CHECK (price > 0);

-- d) Create Students table with grade A-F
CREATE TABLE Students (
    student_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    grade CHAR(1) CHECK (grade IN ('A', 'B', 'C', 'D', 'E', 'F'))
);


-- =========================
-- 2. Adding Constraints via ALTER TABLE
-- =========================

-- a) Add NOT NULL to Customers.email
ALTER TABLE Customers
MODIFY email VARCHAR2(100) NOT NULL;

-- b) Add UNIQUE to Users.username
ALTER TABLE Users
ADD CONSTRAINT uk_username UNIQUE (username);

-- c) Add FOREIGN KEY on Orders.customer_id
ALTER TABLE Orders
ADD CONSTRAINT fk_orders_customer
FOREIGN KEY (customer_id) REFERENCES Customers(id);

-- d) Add CHECK to Accounts.balance >= 0
ALTER TABLE Accounts
ADD CONSTRAINT chk_balance CHECK (balance >= 0);

-- e) Add PRIMARY KEY to Departments.dept_id
ALTER TABLE Departments
ADD CONSTRAINT pk_departments PRIMARY KEY (dept_id);


-- =========================
-- 3. Dropping Constraints

-- a) Drop CHECK constraint chk_salary
ALTER TABLE Employees
DROP CONSTRAINT chk_salary;

-- b) Remove UNIQUE constraint on Users.email
ALTER TABLE Users
DROP CONSTRAINT uk_email;

-- c) Drop PRIMARY KEY from Products
ALTER TABLE Products
DROP PRIMARY KEY;

-- d) Drop FOREIGN KEY fk_order_customer
ALTER TABLE Orders
DROP CONSTRAINT fk_order_customer;

-- e) Remove NOT NULL from Contacts.phone
ALTER TABLE Contacts
MODIFY phone VARCHAR2(20) NULL;


-- =========================
-- 4. Renaming Constraints
-- =========================

-- a) Rename CHECK chk_age -> check_min_age
ALTER TABLE Students
RENAME CONSTRAINT chk_age TO check_min_age;

-- b) Rename FOREIGN KEY fk_emp_dept -> fk_employee_department
ALTER TABLE Employees
RENAME CONSTRAINT fk_emp_dept TO fk_employee_department;

-- c) Rename PRIMARY KEY on Users -> pk_users_id
ALTER TABLE Users
RENAME CONSTRAINT users_pk TO pk_users_id;

-- d) Rename UNIQUE on username -> uk_user_name
ALTER TABLE Users
RENAME CONSTRAINT uk_username TO uk_user_name;


-- =========================
-- 5. Disabling Constraints
-- =========================

-- a) Disable FOREIGN KEY fk_customer_order
ALTER TABLE Orders
DISABLE CONSTRAINT fk_customer_order;

-- b) Temporarily disable all constraints on Products
ALTER TABLE Products
DISABLE CONSTRAINT ALL;

-- c) Disable CHECK on Accounts.balance
ALTER TABLE Accounts
DISABLE CONSTRAINT chk_balance;

-- d) Disable PRIMARY KEY on Departments.dept_id
ALTER TABLE Departments
DISABLE CONSTRAINT pk_departments;


-- =========================
-- 6. Enabling Constraints
-- =========================

-- a) Enable FOREIGN KEY fk_customer_order
ALTER TABLE Orders
ENABLE CONSTRAINT fk_customer_order;

-- b) Re-enable all constraints on Products
ALTER TABLE Products
ENABLE CONSTRAINT ALL;

-- c) Enable CHECK on Staff.salary
ALTER TABLE Staff
ENABLE CONSTRAINT chk_salary;

-- d) Enable PRIMARY KEY on Departments.dept_id
ALTER TABLE Departments
ENABLE CONSTRAINT pk_departments;
