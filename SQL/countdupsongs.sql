.mode column
select song, count(*) from tunes group by song having count(*) > 1 order by song;
