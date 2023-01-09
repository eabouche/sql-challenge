-- Correct order of drop to avoid constraints issues
DROP TABLE IF EXISTS Salaries;
DROP TABLE IF EXISTS Title;
DROP TABLE IF EXISTS Dept_emp;
DROP TABLE IF EXISTS Dept_manager;
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Employees;

-- Correct order of loads to avoid constraint issues
CREATE TABLE Employees (
	Emp_no INT PRIMARY KEY NOT NULL,
	Emp_title_id VARCHAR,
	Birth_date DATE,
	First_name VARCHAR, 
	Last_name VARCHAR,
	Sex VARCHAR,
	Hire_date DATE,
	FOREIGN KEY (Emp_title_id) REFERENCES Title (Title_id)
);

CREATE TABLE Title (
	Title_id VARCHAR PRIMARY KEY NOT NULL,
	Title VARCHAR
);

CREATE TABLE Departments (
	Dept_no VARCHAR PRIMARY KEY NOT NULL,
	Dept_name VARCHAR(255)
);

CREATE TABLE Salaries (
	Emp_no INT NOT NULL,
	Salary INT,
	PRIMARY KEY (Emp_no),
	FOREIGN KEY (Emp_no) REFERENCES Employees(Emp_no)
);

CREATE TABLE Dept_emp (
	Dept_no VARCHAR NOT NULL,
	Emp_no INT NOT NULL,
	PRIMARY KEY (Dept_no, Emp_no),
	FOREIGN KEY (Dept_no) REFERENCES Departments(Dept_no),
	FOREIGN KEY (Emp_no) REFERENCES Employees(Emp_no)
);

CREATE TABLE Dept_manager (
	Emp_no INT NOT NULL,
	Dept_no VARCHAR NOT NULL,
	PRIMARY KEY (Emp_no, Dept_no),
	FOREIGN KEY (Emp_no) REFERENCES Employees(Emp_no),
	FOREIGN KEY (Dept_no) REFERENCES Departments(Dept_no)
);


-- Data loaded validation
-- Select * From public.employees;
-- Select * From public.title;
-- Select * From public.departments;
-- Select * From public.salaries;
-- Select * From public.dept_emp;
-- Select * From public.dept_manager;