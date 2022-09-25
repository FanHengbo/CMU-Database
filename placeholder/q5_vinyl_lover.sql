with coldplay_release(id, name) as(
select release.id , release.name from release where release.artist_credit in (select id from artist_credit where name like 'Coldplay%'))
, vinyl_type(id) as (
select release from medium where format in (select id from medium_format where name like '%Vinyl'))

select distinct coldplay_release.name from vinyl_type,coldplay_release
coldplay_release join release_info  on release_info.release = coldplay_release.id
where coldplay_release.id = vinyl_type.id
order by date_year, date_month, date_day;

