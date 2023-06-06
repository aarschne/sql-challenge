---- Find employee number, last name, sex, and salary of every employee
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
	INNER JOIN salaries 
		ON employees.emp_no = salaries.emp_no
;

---- List first name, last name, and hire date for those hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND
		hire_date < '1987-01-01'
;

/* List managers for each department along with the departments' names 
and numbers. ALso list the managers' employee number 
and first and last name. */

SELECT dept_manager.dept_no, departments.dept_name, 
employees.emp_no, employees.last_name, employees.first_name
FROM dept_manager
	INNER JOIN employees 
		ON employees.emp_no = dept_manager.emp_no
	INNER JOIN departments
		ON dept_manager.dept_no = departments.dept_no
;

/* List the department number for each employee along with
their employee number, first name, last name, and department
name.*/

SELECT dept_emp.dept_no, departments.dept_name, 
employees.emp_no, employees.last_name, employees.first_name
FROM dept_emp
	INNER JOIN employees 
		ON employees.emp_no = dept_emp.emp_no
	INNER JOIN departments
		ON dept_emp.dept_no = departments.dept_no
;

/* List first name, last name, and sex of each employee
whose first name is Hercules and whose last name begins
with the letter B.*/

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND
last_name LIKE 'B%'
;

-- List all the employees by emp_no and name in the sales dept
SELECT emp_no, last_name, first_name
FROM employees
WHERE emp_no in (
	SELECT emp_no
	FROM dept_emp
	WHERE dept_no in(
		SELECT dept_no
		FROM departments
		WHERE dept_name = 'Sales'
	)
)
;

/* List all the employees by emp_no and name in the 
sales and development dept, along with dept_name*/

SELECT employees.emp_no, last_name, first_name, dept_name
FROM employees
	INNER JOIN dept_emp
		ON employees.emp_no = dept_emp.emp_no
	INNER JOIN departments
		on dept_emp.dept_no = departments.dept_no
WHERE dept_name in ('Sales', 'Development')
;

-- Count the amount of each last name
SELECT last_name, COUNT(*) as Frequencies
FROM employees
GROUP BY last_name
order by count(*) desc
;
