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


