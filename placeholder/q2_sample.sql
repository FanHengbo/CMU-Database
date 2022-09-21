
with work_type_name(T, N) as (
SELECT work_type.name, work.name FROM work, work_type WHERE work.type = work_type.id),
longest_name(T, len) as (
select T, max(length(N)) from work_type_name group by T)

SELECT work_type_name.T, N 
from work_type_name, longest_name
where length(N) = len and work_type_name.T = longest_name.T;


