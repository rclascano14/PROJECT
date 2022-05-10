create view batting_salary as(
select bf.*, sf.salary
from batting_filtered bf
inner join salary_filtered sf on sf.player_id = bf.player_id and sf.year = bf.year and sf.team_id = bf.team_id
)

