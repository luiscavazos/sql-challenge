SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries 
ON (employees.emp_no = salaries.emp_no); 

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM employees INNER JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments on dept_manager.dept_no = departments.dept_no;

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments on dept_emp.dept_no = departments.dept_no;

SELECT first_name, last_name, sex
FROM employees
WHERE last_name LIKE 'B%' AND first_name='Hercules';

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007';

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments on dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007' OR departments.dept_no = 'd005';

SELECT last_name, COUNT(last_name) AS "frequency_count"
FROM employees
GROUP BY last_name
ORDER BY "frequency_count" DESC;

SELECT * FROM employees
WHERE emp_no = 499942;



