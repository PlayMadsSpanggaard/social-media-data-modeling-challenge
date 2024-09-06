
SELECT * FROM (VALUES
    ('United States of America', 'United States'),
    ('Russian Federation', 'Russia'),
    ('Korea, Republic of', 'South Korea'),
    ('Republic of Korea', 'South Korea'),
    ('Viet Nam', 'Vietnam'),
    ('Iran, Islamic Republic of...', 'Iran'),
    ('Venezuela, Bolivarian Republic of...', 'Venezuela'),
    ('Venezuela, Bolivarian Republic of', 'Venezuela'),
    ('Bolivia, Plurinational State of', 'Bolivia'),
    ('Tanzania, United Republic of', 'Tanzania'),
    ('Syrian Arab Republic', 'Syria'),
    ('Moldova, Republic of', 'Moldova'),
    ('Congo, Republic of the...', 'Congo'),
    ('Lao People''s Democratic Republic', 'Laos'),
    ('Brunei Darussalam', 'Brunei'),
    ('Eswatini', 'Swaziland'),
    ('North Macedonia', 'Macedonia'),
    ('Palestine, State of', 'Palestine'),
    ('Libyan Arab Jamahiriya', 'Libya'),
    ('Czechia', 'Czech Republic'),
    ('Côte d''Ivoire', 'Ivory Coast'),
    ('United Kingdom of Great Britain and Northern Ireland', 'United Kingdom'),
    ('Britain', 'United Kingdom'),
    ('Democratic People''s Republic of Korea', 'North Korea'),
    ('Democratic Republic of the Congo', 'Congo'),
    ('United Republic of Tanzania', 'Tanzania'),
    ('Republic of North Macedonia', 'Macedonia'),
    ('Republic of Moldova', 'Moldova'),
    ('Czech Republic', 'Czechia')
) AS t (old_name, new_name)