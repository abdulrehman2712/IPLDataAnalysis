select * from match;
select * from Player_match;


--- Most ManOfMatches
select distinct Player_name,  
count(is_manofThematch) over( partition by Player_name) as MOMs

from Player_match
where is_manofThematch = 1
order by MOMs desc;