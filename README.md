
# Overview of the project

Pewlett-Hackard is an big corporation that employing large amount of employees. Many employees are starting to get to the age where they will be retiring, putting Pewlett-Hackard in a position where it needs to fill many positions. The purpose of this analysis is to find how many employees are in a position to retiring, and how many employees could be eligible to participate in a mentorship program to help mentor new hires.
We will be gathering the required data by querying a database using SQL. Each of the two questions will be broken down into smaller sub questions as follows:
Determine how many employees are in a position to retire and their titles.
Create a Retirement Titles table that holds all the titles of current employees who were born between January 1, 1952 and December 31, 1955.
Because there are some employees may have multiple titles in the database—for example, due to promotions— we need to create a table that contains the most recent title of each employee.
Finally, create a final table that has the number of retirement-age employees grouped by most recent job title.
Determine the employees eligible for the Mentorship Program.

![1](https://github.com/Hotpocket106/Pewlett-Hackard-Analysis/blob/main/1.jpg?raw=true)

# Result

We started with ERD diagram outline to whole datasets through all csv files provided and linking
them together using each primary key provided in the file to find out the relationship between
each dataset. After using group by and count function we can find out excatly how many positions are there
in the company and how many people are occupying a certain position.
![2](https://github.com/Hotpocket106/Pewlett-Hackard-Analysis/blob/main/2.jpg?raw=true)
However there are lots of dulipate values due to multiple people are occupying 2 or more positions
and people who are no long active in the company.
So we used DISTINC ON function to filter out those employees and we get a more accurate data from datasets provided.


# Summary

There are total of 1549 active employees approching retire age and eligible for mentorship program.
Company may need to provide about 90,000 job position for replacement when following employees are retired. 


