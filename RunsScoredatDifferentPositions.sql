select * from Ball_By_Ball order by match_id asc; 

select * from Match ;

select * from Player;

select * from Player_match;

select * from team;



--- Players Runs Scored as per the order
select distinct Striker_batting_position,
sum(runs_scored) over(partition by Striker_batting_position) as RunsScored
from ball_by_ball 
where Strikersk = 7
order by RunsScored desc;

-- Most Successfull Team
select distinct match_winner,
count(match_winner) over(partition by match_winner) as MostWins

from match

order by MostWins desc
;

