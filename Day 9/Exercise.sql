use employees;

select * from employees;

select * from employees where first_name like ('%Jack%');

select * from employees where first_name not like ('%Jack%');

select * from salaries where salary between 60000 and 70000;

select * from employees where emp_no not between 10004 and 10012;

select * from departments where dept_no between 'd003' and 'd006';

select dept_name from departments where dept_no is not null;

select * from employees where gender = 'F' and hire_date > '2000-01-01';

select * from salaries where salary > 150000;

select distinct hire_date from employees;

select hire_date from employees;

select count(*) from salaries where salary>99999;

select count(*) from dept_manager;

SELECT emp_no FROM dept_emp WHERE from_date > '2000-01-01' GROUP BY emp_no HAVING COUNT(from_date) > 1 ORDER BY emp_no;

insert into departments values ('d010', 'Business Analysis');
update departments set dept_name = 'Data Analysis' where dept_name = 'Business Analysis';
select * from departments;

select * from employees;
update employees set birth_date = '1979-06-05', first_name = 'Juan', last_name = 'Speed' where emp_id = 10003;

SELECT dept_no, dept_name, COALESCE(dept_no, dept_name) AS dept_info FROM departments_dup ORDER BY dept_no ASC;

SELECT
    IFNULL(dept_no, 'N/A') as dept_no,
    IFNULL(dept_name, 'Department name not provided') AS dept_name, 
COALESCE(dept_no, dept_name) AS dept_info FROM departments_dup ORDER BY dept_no ASC;

INSERT INTO departments_dup (dept_no, dept_name)
SELECT dept_no, dept_name
FROM   departments;

INSERT INTO departments_dup (dept_no, dept_name)
VALUES (NULL, 'Public Relations');

DELETE FROM departments_dup
WHERE  dept_no = 'd002';

INSERT INTO departments_dup (dept_no, dept_name)
VALUES ('d010', NULL),
       ('d011', NULL);
       
drop table departments_dup;

create table if not exists departments_dup (
	dept_no char(4) null,
    dept_name varchar(40) null
);

INSERT INTO departments_dup (dept_no, dept_name)
SELECT dept_no, dept_name
FROM   departments;

insert into departments_dup (dept_no, dept_name)
values (null, 'Public Relations');

delete from departments_dup where dept_no = 'd002';

insert into departments_dup (dept_no, dept_name)
	values('d010', null),
		('d011', null);

DROP TABLE IF EXISTS dept_manager_dup;

CREATE TABLE dept_manager_dup (
	emp_no int(11) NOT NULL, 
    dept_no char(4) NULL, 
    from_date date NOT NULL, 
    to_date date NULL
);

INSERT INTO dept_manager_dup

select * from dept_manager;

INSERT INTO dept_manager_dup (emp_no, from_date) VALUES (999904, '2017-01-01'),
                                (999905, '2017-01-01'),
                               (999906, '2017-01-01'),
                               (999907, '2017-01-01');
DELETE FROM dept_manager_dup WHERE dept_no = 'd001';

select * from departments_dup;

SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    e.hire_date
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no;
    



