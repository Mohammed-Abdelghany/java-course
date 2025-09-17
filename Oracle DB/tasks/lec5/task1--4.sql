--task1

--1
CREATE TABLE Player (
id NUMBER CONSTRAINT uq_player_id NOT NULL UNIQUE  ,
name varchar2(255) CONSTRAINT uq_player_name UNIQUE,
age number
);
--2
CREATE TABLE Manager (
id NUMBER CONSTRAINT nn_mg_id NOT NULL ,
name varchar2(255) ,
salary NUMBER,
CONSTRAINT uq_mg_name_id UNIQUE(id,name)
);
--3
CREATE TABLE Manager(
id NUMBER CONSTRAINT pk_managers_id PRIMARY key  ,
name varchar2(255) ,
age number
);


--task2

--1
CREATE TABLE Doctor  (
id NUMBER CONSTRAINT pk_doct_id PRIMARY key ,
name varchar2(255) ,
salary NUMBER
);
--2
CREATE TABLE Patient(
id NUMBER CONSTRAINT pk_patient_id PRIMARY key  ,
name varchar2(255) ,
age number
);
--3
CREATE TABLE Doctor_Patient (
doctor_id NUMBER ,
patient_id NUMBER,
CONSTRAINT fk_doctor FOREIGN KEY (doctor_id) REFERENCES Doctor(id),
CONSTRAINT fk_patient FOREIGN KEY (patient_id) REFERENCES Patient(id),
CONSTRAINT pk_doctor_patient_id PRIMARY KEY (doctor_id, patient_id)
);


--task3

--1
CREATE TABLE Language (
id NUMBER CONSTRAINT pk_lang_id PRIMARY key  ,
name varchar2(255)
);
--2
CREATE TABLE Teacher (
id NUMBER CONSTRAINT pk_teach_id PRIMARY key ,
name varchar2(255) ,
salary NUMBER,
lang_id NUMBER,
CONSTRAINT fk_lang_id FOREIGN KEY (lang_id) REFERENCES Language(id)
);

--task4

--1
CREATE TABLE EMPLOYEE (
id NUMBER CONSTRAINT pk_emp_id PRIMARY key  ,
name varchar2(255) ,
age number(3,0)
);
--2
CREATE TABLE Phone (
id NUMBER CONSTRAINT pk_phone_id PRIMARY KEY,
 phoneNumber VARCHAR2(20),
CONSTRAINT fk_emp_id FOREIGN KEY (id) REFERENCES EMPLOYEE(id)
);


--task5==task2
	

--task6==task3


--task7==task4



















