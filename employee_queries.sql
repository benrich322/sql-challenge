-- List the employee number, last name, first name, sex, and salary of each employee.

select 
	employees.emp_no
	, last_name
	, first_name
	, sex
	, '$' || to_char(salary, 'FM999,999,999,999') AS salary
	
from employees
left join salaries
	on salaries.emp_no = employees.emp_no

-- List the first name, last name, and hire date for the employees who were hired in 1986.

select 
	 first_name
	, last_name
	, hire_date
	
from employees
where 
	extract(year from hire_date) = 1986

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.



