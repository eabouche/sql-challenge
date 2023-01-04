# sql-challenge

# Pewlett Hackard 1980s and 1990s Employee Data Analysis

## Research uses remaining HR employee files from 80s and 90s.

### There are 3 parts to this research:

1. Data Modeling
3. Data Engineering
4. Data Analysis


### Data Modeling:
  1. An ERD Diagram has been created with the remainder 6 csv data files in order to properly connect and study the data
(See EmployeeSQL/DataModeling directory for images)
  
### Data Engineering:
  1. The ERD Diagram has been turned into real physical tables in a PostgreSQL database
  2. CSV files for this research have been loaded into each respective table created
  3. Keys and integrity constraints have beed created in 3rd normal form for analysis of the data
(See EmployeeSQL/DataEngineering directory)
  
### Data Analysis:  the following questions were answered about the data
  1. List the employee number, last name, first name, sex, and salary of each employee.
  2. List the first name, last name, and hire date for the employees who were hired in 1986.
  3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
  4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
  5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
  6. List each employee in the Sales department, including their employee number, last name, and first name.
  7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
  8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
(See EmployeeSQL/DataAnalysis directory)
