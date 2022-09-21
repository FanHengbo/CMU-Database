with area_of_interest(id, cnt) as (select area, count(area)
from artist 
where begin_date_year < 1850
group by area)
select area.name, cnt 
from area_of_interest, area
where area.id = area_of_interest.id
order by cnt DESC LIMIT 10;

