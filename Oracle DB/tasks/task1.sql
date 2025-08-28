

---- task 1------------

CREATE TABLE manager(
id  NUMBER UNIQUE  ,
name varchar2(255),
age NUMBER,
birth_date DATE ,
address varchar2(255)
);
----------------------------------------------------------------------
ALTER TABLE manager DROP (address);	
----------------------------------------------------------------------
ALTER TABLE manager ADD  (city_address varchar2(255), street varchar2(255)) ;	
----------------------------------------------------------------------
ALTER TABLE manager RENAME COLUMN name TO full_name;
----------------------------------------------------------------------
ALTER TABLE manager READ Only;
----------------------------------------------------------------------
CREATE TABLE Owner AS SELECT id, full_name name, birth_date FROM manager;
----------------------------------------------------------------------
ALTER TABLE manager RENAME TO Master;
----------------------------------------------------------------------
DROP  TABLE manager;
----------------------------------------------------------------------
DROP  TABLE MASTER ;
