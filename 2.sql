-- Group by --
-- The group by statememnt groups records into summary rows and return one record for each group
show databases;
use sql_intro;
show tables;
create table employees (
Emp_id int primary key,
emp_name varchar(34),
age int,
gender char(1),
dog date,
dept varchar(25),
city varchar(25),
salary float
);
describe employees;
INSERT INTO employees (emp_id, emp_name, age, gender, dog, dept, city, salary)
VALUES
    (1, 'John Doe', 30, 'M', '1992-05-15', 'IT', 'New York', 75000.00),
    (2, 'Jane Smith', 25, 'F', '1997-08-22', 'HR', 'Los Angeles', 60000.00),
    (3, 'Bob Johnson', 35, 'M', '1987-12-10', 'Finance', 'Chicago', 80000.00),
    (4, 'Alice Brown', 28, 'F', '1994-04-05', 'Marketing', 'San Francisco', 70000.00),
    (5, 'Mike Miller', 32, 'M', '1989-11-18', 'Sales', 'Seattle', 85000.00);
select * from employees;
select distinct city from employees;
select distinct dept from employees;
select avg(age) from employees;
-- avg age in each dept
select dept , round(avg(age),1) from employees group by dept;
select dept , sum(salary) from employees group by dept;
select count(emp_id),city from employees group by city order by count(emp_id);

create table sales (
product_id int,
sell_price float,
quantitiy int,
state varchar(20)
);
INSERT INTO sales (product_id, sell_price, quantitiy, state)
VALUES
  (1, 20.5, 10, 'New York'),
  (2, 15.75, 8, 'California'),
  (3, 30.0, 5, 'Texas'),
  (4, 25.2, 12, 'Florida');
  
  select * from sales;
  select product_id , sum(sell_price * quantitiy) as revenue from sales group by product_id;

create table c_product(product_id int,cost_pricr float);

-- having in sql --
-- having clause in SQL operates on grouped records and return rows where aggregate function results matched with given conditions only
 select * from employees;
 select dept,avg(salary) as avg_salary from employees
 group by dept
 having avg(salary) >75000;
 -- 
 select city,sum(salary) as tootal_salary from employees group by city having sum(salary) > 70000;
--
select dept, count(*) as emp_count
from employees group by dept
having count(*) > 2;

select city,count(*) as emp_count from employees where city != 'Houston' group by city having count(*)>2;

