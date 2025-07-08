CREATE DATABASE library_management;

use library_management;

-- BRANCH TABLE
create table branch (
branch_id varchar(25) PRIMARY KEY,
manager_id varchar(25),
branch_address varchar(35),
contact_no varchar(25)

);

-- BOOKS TABLE
create table books(
isbn varchar(45) PRIMARY KEY,
book_title	varchar(45),
category	varchar(25),
rental_price	float,
status  varchar(35),
author	varchar(15),
publisher	varchar(25)
);


-- MEMBERS  TABLE 

create table members(
member_id varchar(25) PRIMARY KEY,	
member_name	varchar(35),
member_address varchar(35),
reg_date date

);

-- ISSUED_STATUS TABLE
create table issued_status(
issued_id	varchar(75) PRIMARY KEY,      
issued_member_id varchar(75),  -- foreign key   
issued_book_name varchar(75),                    
issued_date	date, 
issued_book_isbn varchar(75),   -- foreign key   
issued_emp_id varchar(35)
   
);

-- RETURN_STATUS TABLE
create table return_status(
return_id	varchar(15)  PRIMARY KEY,
issued_id	varchar(25),
return_book_name varchar(65),
return_date  date,
return_book_isbn varchar(65)

);

-- EMPLOYEES TABLE 

CREATE TABLE employees(
emp_id varchar(35) PRIMARY KEY,
emp_name varchar(35),
position varchar(35),
salary int,
branch_id varchar(35)   -- foreign key

);




