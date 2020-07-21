# SQL-Queries

## The relational schema for the Academics database is as follows:

DEPARTMENT(deptnum, descrip, instname, deptname, state, postcode)
ACADEMIC(acnum, deptnum*, famname, givename, initials, title)
PAPER(panum, title)
AUTHOR(panum*, acnum*)
FIELD(fieldnum, id, title)
INTEREST(fieldnum*, acnum*, descrip)

## Some notes on the Academics database:
●	An academic department belongs to one institution (instname) and often has many academics. An academic only works for one department.
●	Research papers (PAPER) are often authored by several academics, and of course an academic often writes several papers (AUTHOR).
●	A research field (FIELD) often attracts many academics and an academic can have interest (INTEREST) in several research fields.
 
## Write SQL Queries:

Write ONE SQL query for each of questions 1--10, and each component of an SQL statement must be on a separate line. Your query should not produce duplicates in output but use DISTINCT only if necessary. Include any explanation as comments starting with “--” to make the whole SQL script file (.sql) executable (in SQL Developer and other SQL client programs).
 
1. List the deptname of all departments in the database.

2. How many research fields do an academic whose acnum=100. Return the total number.

3. List in alphabetical order the institution name (instname) and department name (deptname) of all academics.

4. Return the famname and givename of academics whose deptnum is in the range [200..299] or whose famname or givename starts with “T”.

5. List the acnum of academics having published at least two papers. (Hint: Join).

6. List in alphabetical order the famname, givename of academics who has interests in Databases. Note: the values for “Databases” include “DB” or “Database”.

7. Find academics who have a Professor title. Give their famname and givename. 

8. Find authors who have no interest in the field of “Logic Programming” (field.title). List their famname and givename.

9. The below query is meant to list the paper number (panum) and title of papers whose panum is between 100 and 200. But it has errors. Give the correct SQL query.
select panum, title
from paper
where panum >=100 and <=200;

10. The query is meant to list deptment number (deptnum), deptname and academics (acnum) for papers, and research interest (fieldnum) for each academic, but it has errors. Give the correct SQL query.
select deptnum, deptname
from department, interest, academic
where author.acnum=interest.acnum
order by deptnum;
