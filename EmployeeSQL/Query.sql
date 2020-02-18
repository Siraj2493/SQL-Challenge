--List of the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employee.emp_no AS "Employee Number", employee.last_name AS "Last Name", employee.first_name AS "First Name", employee.gender AS "Gender", salary.salary AS "Salary"
FROM employee
JOIN salary
ON employee.emp_no=salary.emp_no;

--List of employees who were hired in 1986.
SELECT *
FROM employee
WHERE hire_date >= '1986-01-01'
  AND hire_date <= '1986-12-31';

--List manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, 
--first name, and start and end employment dates.
SELECT department.dept_no AS "Department Number", department.dept_name AS "Department Name", employee.emp_no AS "Employee Number", employee.last_name AS "Last Name", employee.first_name AS "First Name", dept_mgr.from_date AS "From Date", dept_mgr.to_date AS "To Date"
FROM department
  JOIN dept_mgr
  ON department.dept_no = dept_mgr.dept_no
    JOIN employee
    ON dept_mgr.emp_no = employee.emp_no;

--List department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT employee.emp_no AS "Employee Number", employee.last_name AS "Last Name", employee.first_name AS "First Name", department.dept_name AS "Department"
FROM employee
  JOIN dept_emp
  ON employee.emp_no=dept_emp.emp_no
    JOIN department
	ON dept_emp.dept_no=department.dept_no;

--List of employees whose first name is "Hercules" and last names begin with "B."
SELECT *
FROM employee
WHERE first_name  = 'Hercules'
  AND last_name like 'B%';

--List of employees in the Sales department, including their employee number, 
--last name, first name, and department name.
SELECT employee.emp_no AS "Employee Number", employee.last_name AS "Last Name", employee.first_name AS "First Name", department.dept_name AS "Departement"
FROM employee
JOIN dept_emp
ON employee.emp_no = dept_emp.emp_no
	JOIN department
	ON dept_emp.dept_no = department.dept_no
	WHERE department.dept_name = 'Sales';

--List of employees in the Sales and Development departments, including their 
--employee number, last name, first name, and department name.
SELECT employee.emp_no AS "Employee Number", employee.last_name AS "Last Name", employee.first_name AS "First Name", department.dept_name AS "Department"
FROM employee
JOIN dept_emp
ON employee.emp_no = dept_emp.emp_no
	JOIN department
	ON dept_emp.dept_no = department.dept_no
	WHERE department.dept_name = 'Sales'
	OR department.dept_name = 'Development';

--Descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name AS "Last Name", COUNT(last_name) AS "Count"
FROM employee
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;