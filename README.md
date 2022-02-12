# Pewlett-Hackard-Analysis
SQL, Postgre, and pgAdmin


## Overview of the analysis: Explain the purpose of this analysis.
The purpose of this project was to explore the use of SQL coding to help with data analysis as part of my week 7 DU Computer Programming Bootcamp.  The project included:
*  Designing an entity relationship diagram (ERD) to aid in visualizing the connections between the data sets; this was done with Quick DBD at quickdatabasediagrams.com
*  Creating and using a SQL database via PostgreSQL
* Importing and exporting large CSV datasets into pgAdmin.
* Practicing using different joins to create new tables in pgAdmin.
* Writing basic- to intermediate-level SQL statements (ex- group by, order by, count, distinct on, and using aliases)

To apply these concepts I helped a mock company, called Pewlett Hackard, analyze employee and department records in order to prepare for their future as they anticipate large number of employees from the Baby Boomer generation to be retiring in the near future.  Initially I was given 6 csv files that included information, such as:
* empoloyee info -  ID numbers; personal info, such as date of birth; dates of employment; titles; and salaries;
* department info -  department names; IDs; and managers;

By using SQL coding to write quieries and join data, I generated an additinal 14 csv files, totally 20 tables.  Some of these tables were generated as part of the quiery process, but others were tables that answered specific questions, for example: how many current employees are of retiring age, how many employees from each department are potentially retiring, what are the titles from the reitiring eligible employees, and which employees could be elegible for a mentorship program to curb the shift in employee numbers due to upcoming retirements.  Both the Number of Retiring Employees by Title and the Employees Eligible for the Mentorship Program are discussed below.

## Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

## Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming     "silver tsunami."
* How many roles will need to be filled as the "silver tsunami" begins to make an impact?
* Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
