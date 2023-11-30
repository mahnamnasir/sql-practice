 -- create index
create index salary
on employees (salary asc);
-- display indexes
show index from employees;
-- run selection
select salary from employees where salary >45000;
explain select * from employees;
-- delete
drop index salary on employees;
-- creating views
create view studentdata
as 
select * from employees;
--- update view
alter view studentdata
as
select * from employees 
where salary > 90000;
-- create or view instead of alter
create or replace view studentdata
as 
select * from employees;
----- renaming
rename table studentdata to studentcol;
-- deleting view
drop view studentdata;

