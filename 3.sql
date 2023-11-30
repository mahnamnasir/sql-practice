-- string functions--
select * from employees;
-- 1 upper function --
select upper(emp_name) as Names from employees;
-- same function UCase
select UCASE(emp_name) from employees;
use sql_intro;
create table student(
id int not null unique,
name varchar(23) not null,
age int not null check(age>=18),
gender varchar(1) not null,
phone varchar(10) not null unique,
city varchar(15) not null default 'lahore'

);
create table city (
cid int primary key,
name varchar(30)
);
Alter table animal add primary key(id);
Alter table animal add foreign key(cid) references City(cid);
-- Insert data into the city table
-- Drop the primary key constraint from the city table
ALTER TABLE city DROP PRIMARY KEY;

-- Insert data into the city table
INSERT INTO city (cid, name) VALUES
(1, 'Lahore'),
(2, 'Karachi'),
(3, 'Islamabad'),
(4, 'Rawalpindi'),
(5, 'Faisalabad');


-- Insert data into the student table
INSERT INTO student (id, name, age, gender, phone, city) VALUES
(1, 'John Doe', 20, 'M', '1234567890', 'Lahore'),
(2, 'Jane Smith', 22, 'F', '9876543210', 'Karachi'),
(3, 'Bob Johnson', 19, 'M', '5678901234', 'Islamabad'),
(4, 'Alice Brown', 21, 'F', '3456789012', 'Rawalpindi'),
(5, 'Charlie Wilson', 20, 'M', '7890123456', 'Faisalabad');

-- inner join -- common term in both tables
select * from student;
select * from city;
select * from student 
inner join city
on student.city =city.name
where city.name = "Rawalpindi" 
order by (student.name);

