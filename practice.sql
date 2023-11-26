show databases;
use world;
show tables;
-- to display all rows from city table
select * from city;
-- to know the details about the table 
describe city;
-- creating new databse
create database sql_intro;
show databases;
use sql_intro;
show tables;
-- creating new table in database
create table employee_details
(
name varchar(25),
age int,
gender char(1),
dog date,
cityname varchar(25),
salary float
);
-- getting all details about the table created
describe employee_details;
-- inserting data into table
insert into employee_details
values(
"Jimmy",35,"M","2005-05-30","Chicago",70600),
("Jim",33,"F","2005-08-30","Austtin",70080),
("Marry",38,"M","2005-03-30","Boston",70700);
select * from employee_details;
select gender from employee_details;
-- to print unique values only 
select distinct gender from employee_details;
-- to print the total number of employee and give some alias name using as name
select count(name) as count_name from employee_details;
-- to print the sum,avg
select sum(salary) from employee_details;
select avg(salary) from employee_details;
-- select specific coulmns
select name, age ,cityname from employee_details;
-- where clause (used to apply condition)
select * from employee_details where age > 30;
select * from employee_details where gender = 'F';
-- or operator if any of the condition is true (method 1)
select * from employee_details where cityname = 'Chicago' or cityname = 'Boston';
-- another way is to user IN operator (method 2)
select * from employee_details where cityname in ("Chicago","Boston");
-- between operator used for displaying data between some specific range
select * from employee_details where dog between '2005-05-30'and '2005-09-30';
-- and operator used when all conditions specified are true
select * from employee_details where age > 30 and gender = 'M';
-- group by statement
select gender,sum(salary) as total_salalry from employee_details group by gender;
-- order by sort results in ascending order by default for descending use desc keyword
select * from employee_details order by salary;
select * from employee_details order by salary desc;
-- basic operations using select 
select(2+3) as addition;
select (3-2) as subtract;
-- in built functions
-- string operations
select length('India') as total_in;
select repeat('@',10);
select upper('India'); 
select lower('India');
select lcase('India');
select character_length('India') as total_in;
-- operation on table
select character_length(name) as total_in from employee_details;
select char_length(name) as total_in from employee_details;
-- concat
select concat("India ","is","country");
select name,age,concat(name," ",age) from employee_details ;
-- reverse function
select reverse('India');
select reverse(name) from employee_details;
-- replace function
select replace("Orange is a vegetable","vegetable","fruit");
-- trim functions
select length("              Lahore            ");
select ltrim("              Lahore            ");
select length(ltrim("              Lahore            "));
select length(trim("              Lahore            "));
-- position
select position('fruit' in "Orange is fruit");
-- ASCII value
select ascii('a');
-- datetime functions
-- display current date
select curdate();
-- todays days
select day(curdate());
-- display current day and date
select now();

