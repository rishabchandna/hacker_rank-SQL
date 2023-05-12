select hacker_id,name,
sum(max_score) as final_score
from (
select a.hacker_id, name,challenge_id, max(score) as max_score
from hackers as a
left join 
submissions as b
on a.hacker_id = b.hacker_id
group by 1,2,3
) as k
group by 1,2
having final_score > 0
order by final_score desc,hacker_id asc