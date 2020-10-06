create table departments (
	dept_no varchar,
	dept_name varchar,
	primary key (dept_no)
);

select * from departments;

create table salaries (
	emp_no integer,
	salary integer,
	primary key (emp_no)
);

select * from salaries;

-- create table dept_emp (
-- 	emp_no integer,
-- 	foreign key (emp_no) references salaries(emp_no),
-- 	dept_no varchar,
-- 	foreign key (dept_no) references departments(dept_no),
-- 	primary key(emp_no, dept_no)
-- );

-- select * from dept_emp;

create table titles (
	title_id varchar,
	title varchar,
	primary key (title_id)
);

select * from titles;

create table dept_manager (
	dept_no varchar,
	foreign key (dept_no) references departments(dept_no),
	emp_no integer,
	foreign key (emp_no) references salaries(emp_no),
	primary key(dept_no,emp_no)
);

select * from dept_manager;

create table employees (
	emp_no integer,
	foreign key (emp_no) references salaries(emp_no),
	title_id varchar,
	foreign key (title_id) references titles(title_id),
	birth_date varchar not null,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date varchar not null,
	primary key(emp_no, title_id)
);

select * from employees;





