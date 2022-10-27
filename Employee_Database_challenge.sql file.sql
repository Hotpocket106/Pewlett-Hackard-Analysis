SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
LEFT JOIN titles as ti
ON(e.emp_no=ti.emp_no)
WHERE(e.birth_date BETWEEN '1952-01-01' AND '1955-12-31');

CREATE TABLE titles (
     emp_no INT NOT NULL,
     title VARCHAR(40) NOT NULL,
     from_date date NOT NULL,
	 to_date date NOT NULL
);

SELECT * FROM retirement_titles;

SELECT DISTINCT ON (re.emp_no)re.emp_no,
re.first_name,
re.last_name,
title

INTO unique_titles
FROM retirement_titles as re
WHERE (re.to_date='9999-01-01')
ORDER BY re.emp_no, re.to_date DESC;

SELECT title, COUNT(*)
INTO retiring_titles
From unique_titles as ut
GROUP BY title
ORDER BY COUNT(*)DESC;

SELECT * FROM retiring_titles

SELECT DISTINCT ON (e.emp_no)e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibilty
FROM employees as e
	INNER JOIN dept_emp as de
	ON(e.emp_no=de.emp_no)
	INNER JOIN titles as ti
	ON(e.emp_no=ti.emp_no)
WHERE(de.to_date='9999-01-01') 
AND (e.birth_date BETWEEN'1965-01-01' AND'1965-12-31')

SELECT * FROM mentorship_eligibilty