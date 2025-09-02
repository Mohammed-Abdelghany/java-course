---------Lec2 task 1 ---------------------

CREATE TABLE Doctor (id NUMBER, name varchar2(255),salary NUMBER ,address varchar2(255));
-------------------------------------------------------------------------
INSERT INTO Doctor VALUES (1, 'Dr. Ahmed Hassan', 15000, 'Cairo, Egypt');
INSERT INTO Doctor VALUES (2, 'Dr. Mona Ali', 17000, 'Alexandria, Egypt');
INSERT INTO Doctor VALUES (3, 'Dr. Karim Samir', 14000, 'Giza, Egypt');
INSERT INTO Doctor VALUES (4, 'Dr. Sara Mahmoud', 20000, 'Mansoura, Egypt');
INSERT INTO Doctor VALUES (5, 'Dr. Hany Fawzy', 16000, 'Luxor, Egypt');
INSERT INTO Doctor VALUES (6, 'Dr. Rania Omar', 18000, 'Aswan, Egypt');
INSERT INTO Doctor VALUES (7, 'Dr. Youssef Nabil', 15500, 'Port Said, Egypt');
INSERT INTO Doctor VALUES (8, 'Dr. Salma Tarek', 19000, 'Ismailia, Egypt');
INSERT INTO Doctor VALUES (9, 'Dr. Omar Adel', 14500, 'Sohag, Egypt');
INSERT INTO Doctor VALUES (10, 'Dr. Laila Farouk', 17500, 'Tanta, Egypt');
-------------------------------------------------------------------------
UPDATE DOCTOR  SET SALARY =20000 WHERE id =3;
-------------------------------------------------------------------------
DELETE FROM Doctor WHERE id =3;
-------------------------------------------------------------------------
SELECT name||'-'||salary AS "name-salary" FROM DOCTOR  ;
-------------------------------------------------------------------------
SELECT salary*2 AS "salary * 2" FROM DOCTOR ;
-------------------------------------------------------------------------
SELECT * FROM DOCTOR WHERE SALARY =1000 OR SALARY =2000 OR SALARY=3000;
SELECT * FROM DOCTOR WHERE SALARY IN(1000,2000,3000);
-------------------------------------------------------------------------
