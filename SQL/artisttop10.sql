.mode column
select artist, count(*) from tunes group by artist order by count(*) desc, artist asc limit 10;
