-- 1. List the employee number, last name, first name, sex, and salary of each employee.
Select emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary From employees emp
	Inner Join salaries sal ON emp.emp_no = sal.emp_no;
	
-- 2. List the first name, last name, and hire date for the employees who were hired in 1986.
Select first_name, last_name, hire_date From employees Where hire_date Between '1986-01-01' and '1986-12-31';

-- 3. List the manager of each department along with their department number, department name, 
--    employee number, last name, and first name.
Select t.title, emp.first_name || ' ' || emp.last_name as employee_name,  d.dept_no, d.dept_name, 
	emp.emp_no, emp.last_name, emp.first_name From employees emp 
	Inner Join title t ON emp.emp_title_id = t.title_id
	Inner Join dept_manager dm ON emp.emp_no = dm.emp_no
	Inner Join departments d ON dm.dept_no = d.dept_no ;

-- 4. List the department number for each employee along with that employee’s employee number, 
--    last name, first name, and department name.
Select d.dept_no, emp.emp_no, emp.last_name, emp.first_name, d.dept_name From employees emp 
	Inner Join dept_emp de ON emp.emp_no = de.emp_no
	Inner Join departments d ON de.dept_no = d.dept_no
	Order By d.dept_no;
	
-- 5. List first name, last name, and sex of each employee whose first name is Hercules 
--    and whose last name begins with the letter B.
Select * From employees Where first_name = 'Hercules' and last_name LIKE('B%');

-- 6. List each employee in the Sales department, including their employee number, last name, 
--    and first name.
Select d.dept_no, d.dept_name, emp.emp_no, emp.last_name, emp.first_name From employees emp 
	Inner Join dept_emp de ON emp.emp_no = de.emp_no
	Inner Join departments d ON de.dept_no = d.dept_no
	Where d.dept_name = 'Sales';
	
-- 7. List each employee in the Sales and Development departments, including their employee number, 
--    last name, first name, and department name.
Select d.dept_no, emp.emp_no, emp.last_name, emp.first_name, d.dept_name From employees emp 
	Inner Join dept_emp de ON emp.emp_no = de.emp_no
	Inner Join departments d ON de.dept_no = d.dept_no
	Where d.dept_name IN ('Sales','Development') Order by d.dept_name;

-- 8. List the frequency counts, in descending order, of all the employee last names (that is, 
--    how many employees share each last name).
Select last_name, count(*) as frequency_count From employees Group By last_name Order By frequency_count desc;