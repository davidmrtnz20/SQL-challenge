-- ###data engineering

-- create table departments (
-- 	dept_no varchar,
-- 	dept_name varchar,
-- 	primary key (dept_no)
-- );

-- select * from departments;

-- create table salaries (
-- 	emp_no integer,
-- 	salary integer,
-- 	primary key (emp_no)
-- );

-- select * from salaries;

-- create table dept_emp (
-- 	emp_no integer,
-- 	foreign key (emp_no) references salaries(emp_no),
-- 	dept_no varchar,
-- 	foreign key (dept_no) references departments(dept_no),
-- 	primary key(emp_no, dept_no)
-- );

-- select * from dept_emp;

-- create table titles (
-- 	title_id varchar,
-- 	title varchar,
-- 	primary key (title_id)
-- );

-- select * from titles;

-- create table dept_manager (
-- 	dept_no varchar,
-- 	foreign key (dept_no) references departments(dept_no),
-- 	emp_no integer,
-- 	foreign key (emp_no) references salaries(emp_no),
-- 	primary key(dept_no,emp_no)
-- );

-- select * from dept_manager;

-- create table employees (
-- 	emp_no integer,
-- 	foreign key (emp_no) references salaries(emp_no),
-- 	title_id varchar,
-- 	foreign key (title_id) references titles(title_id),
-- 	birth_date date not null,
-- 	first_name varchar,
-- 	last_name varchar,
-- 	sex varchar,
-- 	hire_date date not null,
-- 	primary key(emp_no, title_id)
-- );

-- select * from employees;

-- ###data analysis

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
-- select employees.emp_no, 
-- employees.last_name, 
-- employees.first_name, 
-- employees.sex, 
-- salaries.salary
-- from employees
-- join salaries on
-- employees.emp_no = salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
-- select first_name,last_name,hire_date from employees where extract(year from hire_date) = 1986;

-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
-- select departments.dept_no,
-- departments.dept_name,
-- dept_manager.emp_no,
-- employees.first_name,
-- employees.last_name
-- from departments
-- join dept_manager
-- on departments.dept_no = dept_manager.dept_no
-- join employees
-- on dept_manager.emp_no = employees.emp_no;

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
-- select dept_emp.emp_no,
-- employees.last_name,
-- employees.first_name,
-- departments.dept_name
-- from dept_emp
-- join employees
-- on dept_emp.emp_no = employees.emp_no
-- join departments
-- on dept_emp.dept_no = departments.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
-- select first_name,last_name,sex
-- from employees
-- where first_name = 'Hercules' and last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- select dept_emp.emp_no,
-- employees.last_name,
-- employees.first_name,
-- departments.dept_name
-- from dept_emp
-- join employees
-- on dept_emp.emp_no = employees.emp_no
-- join departments
-- on dept_emp.dept_no = departments.dept_no
-- where departments.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
-- select dept_emp.emp_no,
-- employees.last_name,
-- employees.first_name,
-- departments.dept_name
-- from dept_emp
-- join employees
-- on dept_emp.emp_no = employees.emp_no
-- join departments
-- on dept_emp.dept_no = departments.dept_no
-- where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
-- select last_name,
-- count(last_name) as "Frequency"
-- from employees
-- group by last_name
-- order by count(last_name) desc;


