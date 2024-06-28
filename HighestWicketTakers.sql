select * from Ball_By_Ball; 

select * from Match order by match_id asc;

select * from Player;

select distinct out_type from Ball_By_Ball;

-- Highest Wicket Taker

select distinct p.Player_Name, 
Count(b.Bowler_Wicket) over (Partition by p.Player_name) As Total_Wickets

from Ball_By_Ball as b
inner join Player_match pm
on b.MatcH_id = pm.Match_Id
inner join player p
on pm.Player_Id = p.Player_Id

where p.PLAYER_SK = b.BOWLER_SK and Bowler_Wicket = 1

order by Total_Wickets desc;



