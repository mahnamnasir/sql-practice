use sql_intro;
show tables;
-- is null
select * from employees;
-- case statement
select emp_name,
case
	when age>=30 then 'Senior'
	else "Junior"
end as level
from employees;
-- coalesce 
select emp_name,
coalesce(city,"Unknown") as city_name 
from employees;
-- joins
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

INSERT INTO students VALUES (100, 'J'), (200, 'ip');
INSERT INTO courses VALUES (100, 'sci'), (200, 'phys');

select students.name , courses.course_name
from students
join courses
on students.student_id = courses.course_id;

-- union
select * from students 
union 
select * from courses;

-- stored proceduresss
call new_procedure;
-- Declare variables to hold output parameters
SET @course_id_param = 1; -- Specify the course ID
SET @student_count = 0;
SET @student_list = '';

-- Call the stored procedure
CALL GetEnrollmentInfo(@course_id_param, @student_count, @student_list);

-- Retrieve the output parameters
SELECT @student_count AS student_count, @student_list AS student_list;

SELECT 
  CAST('2022-01-01' AS DATE) AS cast_date,
  CONVERT('2022-02-02', DATE) AS convert_date;
  
 SELECT new_function(5) AS result; 
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
