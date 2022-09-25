select format("%ds", date_year / 10 * 10) as decade, count(*)
from (select distinct release.id, date_year from release_info join release on release_info.release = release.id)
where date_year not null and date_year >= 1900
group by decade
order by decade;

