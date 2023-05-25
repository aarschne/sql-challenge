CREATE TABLE departments(
	dept_no VARCHAR(30),
	dept_name VARCHAR(30)
)
;

CREATE TABLE dept_emp(
	emp_no VARCHAR(30),
	dept_no VARCHAR(30)
)
;

CREATE TABLE dept_manager(
	dept_no VARCHAR(30),
	emp_no VARCHAR(30)
)
;

CREATE TABLE employees(
	emp_no VARCHAR(30),
	emp_title_id VARCHAR(30),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(2),
	hire_date DATE
)
;

CREATE TABLE salaries(
	emp_no VARCHAR(30),
	salary INT
)
;

CREATE TABLE titles(
	title_id VARCHAR(30),
	title VARCHAR(30)
)
;
