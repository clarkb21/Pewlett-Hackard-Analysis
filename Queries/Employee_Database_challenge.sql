--Challenge 7 Deliverable 1
-- Number of Retiring Employees by Title

--Retrieve employee no, name from employees table
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN title as t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	t.title
INTO unique_titles
FROM employees as e
INNER JOIN title as t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (to_date = '9999-01-01')
ORDER BY emp_no;

--Retrieve the number of people retiring by title
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- Deliverable 2 
--Eligible Employees for the MentorShip Program (born in 1965)
SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees as e
	INNER JOIN dept_employees as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN title as t
		ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

-- How many roles need to be filled?
SELECT COUNT(title) FROM unique_titles;

-- Number of mentors per department
SELECT DISTINCT ON (emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	d.dept_name
INTO mentorship_departments
FROM employees as e
	INNER JOIN dept_employees as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN title as t
		ON (e.emp_no = t.emp_no)
	INNER JOIN departments as d
		ON (d.dept_no = de.dept_no)
WHERE (de.to_date = '9999-01-01')
AND (birth_date BETWEEN '1965-01-01' AND '1965-12-31')
GROUP BY de.dept_no, e.emp_no, t.title, d.dept_name
ORDER BY emp_no;

SELECT COUNT(dept_name),
	dept_name,
	title
INTO mentor_counts
FROM mentorship_departments
GROUP BY dept_name, title
ORDER BY dept_name;
	