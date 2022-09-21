
select artist.name, count(artist_alias.artist) as cnt
from artist, artist_alias
where artist.id = artist_alias.artist and begin_date_year > 1950 and artist.area = (SELECT id FROM area where name = 'United Kingdom')
group by artist_alias.artist
order by cnt DESC LIMIT 10;
