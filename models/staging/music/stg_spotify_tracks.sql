with base as (
    select
       track_id, 
       track_name, 
       popularity, 
       duration_seconds,
       artists,
       id_artists,
       release_date, 
       danceability, 
       energy, 
       loudness, 
       speechiness, 
       acousticness, 
       instrumentalness, 
       liveness, 
       positiveness, 
       tempo, 
       beats_per_bar
     from 
        {{ source('raw_data', 'spotify_tracks_data') }} t1 
    
)

select * from base
