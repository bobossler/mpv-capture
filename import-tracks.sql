.mode list
delete from stage_tracks;
.import /home/bobossler/mpv-capture/import-tracks stage_tracks
delete from stage_tracks where artist like '%EL.US%';
insert into tunes select artist, song, CURRENT_DATE, CURRENT_DATE from stage_tracks;
