# Pewlett-Hackard-Analysis
SQL, Postgre, and pgAdmin


## Overview of the analysis: Explain the purpose of this analysis.
The purpose of this project was to explore the use of SQL coding to help with data analysis as part of my week 7 DU Computer Programming Bootcamp.  The project included:
*  Designing an entity relationship diagram (ERD) to aid in visualizing the connections between the data sets; this was done with Quick DBD at quickdatabasediagrams.com
*  Creating and using a SQL database via PostgreSQL
* Importing and exporting large CSV datasets into pgAdmin.
* Practicing using different joins to create new tables in pgAdmin.
* Writing basic- to intermediate-level SQL statements (ex- group by, order by, count, distinct on, and using aliases)

To apply these concepts I helped a mock company, called Pewlett Hackard, analyze employee and department records in order to prepare for their future as they anticipate large number of employees from the Baby Boomer generation to be retiring in the near future.  Initially I was given 6 csv files (see Figure 1 below) that included information, such as:
* empoloyee info -  ID numbers; personal info, such as date of birth; dates of employment; titles; and salaries;
* department info -  department names; IDs; and managers;<br><br>

![This is an image](https://github.com/bartblack13/Pewlett-Hackard-Analysis/blob/main/EmployeeDB.png)
<br />**Figure 1: Initial Data ERD**<br /><br />

By using SQL coding to write quieries and join data, I generated an additional 15 csv files, totalling 21 tables.  Some of these tables were generated as part of the quiery process, but other tables answered specific questions, for example: how many current employees are of retiring age; how many employees from each department are potentially retiring; what are the titles from the reitiring eligible employees; and which employees could be elegible for a mentorship program to curb the shift in employee numbers due to upcoming retirements.  Both the Number of Retiring Employees by Title and the Employees Eligible for the Mentorship Program are discussed below.

## Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
1. There are 72,459 soon-to-retire employees (See Table 1 below)
2. Senior Engineers and Senior staff make up 50,842 of the 72,459 soon-to-retire employees (aproximately 70% of the positions becoming open will be senior level positions, creating a huge void in the experience of the work force).
3. There are 1,549 people are on the mentorship list.
4. Mentorship eligible employees are outnumbered by potentially vacant positions (overall) by 47:1, which means PH will probably have to focus their hiring from outside the company instead of from internal candidates.<br>

## Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming     "silver tsunami."
* How many roles will need to be filled as the "silver tsunami" begins to make an impact?<br><br>
By selecting emp_no and to_date from the titles data set, and setting the tot_date to 9999-01-01, representing current employees, and then using the count function, I was able to determine that there are 240,124 current employees within the company (see Figure 2).  Using the code I wrote during the module, I generated a data set, which consisted of all of the current employees that met the potentially-retiring criteria.  This list contained 72,459 retirement ready employees.  Do some basic math, we see that aproximately 30% of the PH work force, could potentially be retiring soon.<br /><br />

![This is an image](https://github.com/bartblack13/Pewlett-Hackard-Analysis/blob/main/all_current_emp.png)
<br />**Figure 2: All Current Employees**<br /><br />

* Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?<br><br>

The most basic answer to this question is no.  There are not enough qualified employees to mentor the next generation of employees.  I calculated out the retirement-ready employees and grouped them according to their job titles, represented in the Unique Titles table below (see Table 1). This table includes 72,459 employees.  I then refactored the code and retrieved the employees that met the criteria to be in the mentorship program, grouped them again by their job titles.  This time, I used the to_date within the titles data set, instead of the dept_no data set, so that I could pull out the most recent job title for each employee (the dept_no to_date represents last date of employment).  I then used the "destinct on" function to grab the first mention of each employee by their employee number and sorted them according to their job titles (see Table 2).  

<br>As can be seen below, 1549 people are on the mentorship list. By comparing the two table, we can see that retirement-ready senior engineers out weigh mentor-capable senior engineers by aproximately 50:1.  This is equally true for Senior Staff in both categories.  We also see that there are not any managers listed in the mentorship list.  Pewlette Hackard has 9 departments, only 5 active managers (calculated in the manager_info quiery), 2 managers meet the criteria for potential retirement, and 0 managers are listed as potential mentors. This in and of itself is problamatic for PH.<br /><br />

![This is an image](https://github.com/bartblack13/Pewlett-Hackard-Analysis/blob/main/retiring_titles%20table.png)
<br />**Table 1: Unique Titles**<br /><br />

![This is an image](https://github.com/bartblack13/Pewlett-Hackard-Analysis/blob/main/mentors_per_current_job_title%20table.png)
<br />**Table 2: Mentor Eligible Employee's Titles**<br /><br />
