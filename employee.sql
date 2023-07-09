CREATE TABLE titles (
    Title_id INTEGER   NOT NULL,
    Title VARCHAR   NOT NULL,
    PRIMARY KEY (Title_id)
);

CREATE TABLE employees (
    Emp_no INTEGER   NOT NULL,
    Emp_title_id INTEGER   NOT NULL,
    Birth_date DATE   NOT NULL,
    First_name VARCHAR   NOT NULL,
    Last_Name VARCHAR   NOT NULL,
    Sex VARCHAR   NOT NULL,
    Hire_date DATE   NOT NULL,
    PRIMARY KEY (Emp_no),
    FOREIGN KEY(Emp_title_id) REFERENCES titles (Title_id)
);

CREATE TABLE departments (
    Dept_no VARCHAR   NOT NULL,
    Dempt_name VARCHAR   NOT NULL,
    PRIMARY KEY (Dept_no)
);

CREATE TABLE dempt_emp (
    Emp_Dept_id INTEGER   NOT NULL,
    Emp_no INTEGER   NOT NULL,
    Dept_no VARCHAR   NOT NULL,
    PRIMARY KEY (Emp_Dept_id),
    FOREIGN KEY(Emp_no) REFERENCES employees (Emp_no),
    FOREIGN KEY(Dept_no) REFERENCES departments (Dept_no)
);

CREATE TABLE dept_manager (
    Manager_id INTEGER   NOT NULL,
    Dept_no VARCHAR   NOT NULL,
    Emp_no INTEGER   NOT NULL,
    PRIMARY KEY (Manager_id),
    FOREIGN KEY(Emp_no) REFERENCES employees (Emp_no),
    FOREIGN KEY(Dept_no) REFERENCES departments (Dept_no)
);

CREATE TABLE salaries (
    Emp_Salary_id INTEGER   NOT NULL,
    Emp_no INTEGER   NOT NULL,
    Salary NUMERIC   NOT NULL,
    PRIMARY KEY (Emp_Salary_id),
    FOREIGN KEY(Emp_no) REFERENCES employees (Emp_no)
);
