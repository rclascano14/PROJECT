create view batting_filtered as(
select *
from batting
where batting.year between 2009 and 2014
)

create view salary_filtered as(
select *
from salary
where salary.year between 2009 and 2014
);
