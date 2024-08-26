with nba as (
    select 
        *,
        'nba' as appName,
        'google_play' as platformName 
    from {{source ('main', 'nba_g') }}
)

select * from nba