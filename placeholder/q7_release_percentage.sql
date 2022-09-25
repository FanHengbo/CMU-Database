with past_year(id, percentage) as
(
select distinct release, date_year, date_month
from release_info join release on release_info.release = release.id
where (date_year >= 2019 and date_month >= 7) or (date_year <= 2020 and date_month <= 7)
)
