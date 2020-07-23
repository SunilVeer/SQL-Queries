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
