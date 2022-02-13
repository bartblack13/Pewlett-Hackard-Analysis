-- challenge deliverable 1: number of retiring employees by title
select e.emp_no, 
		e.first_name, 
		e.last_name, 
		t.title, 
		t.from_date, 
		t.to_date
into retirement_titles
from employees as e
left join titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--      AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
-- 	 AND (t.to_date = '9999-01-01');
order by emp_no ASC, to_date DESC;	 

Select * from retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) 
	emp_no,
	first_name,
	last_name,
	title

INTO unique_titles
FROM retirement_titles as rt
WHERE rt.to_date = '9999-01-01'
-- ORDER BY _____, _____ DESC;
order by emp_no ASC, to_date DESC;	 

Select * from unique_titles;

-- Employee count by title on new retiring_titles table
SELECT COUNT(ut.emp_no), ut.title
Into retiring_titles
FROM unique_titles as ut
-- LEFT JOIN dept_emp as de
-- ON ce.emp_no = de.emp_no
GROUP BY ut.title
ORDER BY COUNT(ut.emp_no) DESC;

Select * from retiring_titles;

-- challange Deliverable 2 mentorship_eligibilty

Select DISTINCT ON (emp_no) e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		de.to_date,
		t.title
into mentorship_eligibilty
from employees as e
inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join titles as t
on (e.emp_no = t.emp_no)
where (e.birth_date between '1965-01-01' and '1965-12-31') 
		AND (de.to_date = '9999-01-01')
order by emp_no ASC;

select * from mentorship_eligibilty;

-- part 3 deliverable 3
-- Select e.emp_no,
Select DISTINCT ON (emp_no) e.emp_no,
		e.first_name,
		e.last_name,
		e.birth_date,
		de.from_date,
		t.to_date,
		t.title
into mentors_current_position
from employees as e
inner join dept_emp as de
on (e.emp_no = de.emp_no)
inner join titles as t
on (e.emp_no = t.emp_no)
where (e.birth_date between '1965-01-01' and '1965-12-31') 
		AND (t.to_date = '9999-01-01')
order by emp_no ASC;

select count(emp_no) from mentors_current_position;

-- count per position title of mentors
SELECT COUNT(mcp.emp_no), mcp.title
Into mentors_per_current_job_title
FROM mentors_current_position as mcp
-- LEFT JOIN dept_emp as de
-- ON ce.emp_no = de.emp_no
GROUP BY mcp.title
ORDER BY COUNT(mcp.emp_no) DESC;

-- all current employee list from title data
SELECT t.emp_no,
		t.to_date
Into all_current_emp
FROM titles as t
where t.to_date = ('9999-01-01');

select count(emp_no)
from all_current_emp;

select count(emp_no)
from current_emp;