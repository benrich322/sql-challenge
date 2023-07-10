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

select 
	 dept_manager.dept_no
	 , dept_name
	, dept_manager.emp_no
	, last_name
	, first_name
	
from dept_manager
left join departments
	on dept_manager.dept_no = departments.dept_no
left join employees
	on dept_manager.emp_no = employees.emp_no

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select 
	dept_emp.dept_no
	, dept_emp.emp_no
	, last_name
	, first_name
	, dept_name
	
from dept_emp
left join departments
	on dept_emp.dept_no = departments.dept_no
left join employees
	on dept_emp.emp_no = employees.emp_no

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select 
	first_name
	, last_name
	, sex
	
from employees
where
	first_name = 'Hercules'
	and last_name ILIKE 'b%'


