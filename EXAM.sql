create database company;


drop table employees;
drop table departments;


CREATE TABLE employees (
    emp_id INT  NOT NULL,
    name VARCHAR(255),
    dept_id INT not null,
    salary int not null,
    manager_id varchar(255) not null, foreign key (dept_id) references departments(dept_id)
);

CREATE TABLE departments (
    dept_id INT not null ,
    dept_name VARCHAR(255) not null,
    primary key (dept_id)
);


INSERT INTO employees (emp_id, name, dept_id, salary, manager_id)
VALUES
    ('1','Alice','101','50000','4'),
	('2','Bob','102','60000','4'),
    ('3','Charlie','101','55000','5'),
    ('4','David','103','80000','NULL'),
    ('5','Eve','102','70000','NULL');


insert into departments (dept_id,dept_name)
values (101,'HR'),(102,'IT'),(103,'Finance'),(104,'Marketing');



select * from employees;


select * 
from employees
where salary > 60000;


select employees.name, departments.dept_name
from employees
INNER JOIN departments ON employees.dept_id = departments.dept_id;



select employees.name, departments.dept_name
from employees
INNER JOIN departments ON employees.dept_id = departments.dept_id
where manager_id = 'NULL';


SELECT count(*)
from departments

