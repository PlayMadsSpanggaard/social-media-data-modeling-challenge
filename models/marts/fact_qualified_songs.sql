with source as (
    select 
    'universal_top_spotify_songs' as src,
    snapshot_date,
    song,
    artists,
    position,
    popularity,
    country_code,
    danceability,
    energy,
    key,
    loudness,
    mode,
    speechiness,
    acousticness,
    instrumentalness,
    liveness,
    valence,
    tempo,
    release_date
from {{ ref('stg__classify_songs_tsongs') }}
union
select 
    'spotify_top_50_playlists' as src,
    snapshot_date,
    song,
    artists,
    position,
    popularity,
    country_code,
    danceability,
    energy,
    key,
    loudness,
    mode,
    speechiness,
    acousticness,
    instrumentalness,
    liveness,
    valence,
    tempo,
    release_date
 from {{ ref('stg__classify_songs_t50') }})
select 
    s.src,
    s.snapshot_date,
    song.song_pk,
    artists.artists_pk,
    position,
    popularity,
    country.countries_pk,
    danceability,
    energy,
    key,
    loudness,
    mode,
    speechiness,
    acousticness,
    instrumentalness,
    liveness,
    valence,
    tempo,
    song.release_date
from source s
left join {{ ref('dim_songs') }} song on s.song = song.song and s.artists = song.artists and s.release_date = song.release_date
left join {{ ref('dim_artists') }} artists on s.artists = artists.artists 
left join {{ ref('dim_countries') }} country on s.country_code = country.country_code