--Q.1
select distinct deptname
from department;
--Q.2
select count(acnum)as total_research_fields
from academic
where acnum = 100;
--Q.3
select instname, deptname
from department
order by instname,deptname;
--ASC can be used in order by, but I haven’t used it as order by is by default ASC.
--Q.4
select famname, givename
from academic
where deptnum between 200 and 299 or famname like 'T%' or givename like 'T%';
--Q.5
select ac.acnum
from academic ac
join author au
on ac.acnum=au.acnum
group by ac.acnum
having count(ac.acnum)>=2;
--Q.6
select distinct famname,givename
from academic
join interest
on academic.acnum=interest.acnum
where lower(interest.DESCRIP) LIKE '%database%' or lower(interest.DESCRIP) LIKE '%db%'
order by academic.famname;
--Q.7
select famname,givename
from academic
where lower(TITLE) LIKE '%prof%';
--Q.8
select famname,givename from author
where acnum Not in (select acnum from academic
join interest
on academic.acnum=interest.acnum
join field
on interest.fieldnum=field.fieldnum
where field.title='Logic Programming')
--Q.9
select panum,title
from paper
where panum>=100 and panum<=200;
--Q.10
select dept.deptnum, dept.deptname, ac.acnum, i.fieldnum
from department dept, academic ac, interest I
where dept.deptnum=ac.deptnum and ac.acnum=i.acnum
order by dept.deptnum;
