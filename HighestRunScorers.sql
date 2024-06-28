select * from Ball_By_Ball; 

select * from Match order by match_id asc;

select * from Player;

-- Highest Run Scorers

select distinct p.Player_Name, 
sum(b.Runs_scored) over (Partition by p.Player_name) As Total_runs

from Ball_By_Ball as b
inner join Player_match pm
on b.MatcH_id = pm.Match_Id
inner join player p
on pm.Player_Id = p.Player_Id

where p.PLAYER_SK = b.StrikerSK 

order by Total_runs desc;

