SELECT 
    w.*, 
    g.geometry
FROM 
    {{ ref("stg_weather") }} AS w
LEFT JOIN 
    {{ ref("stg_geo") }} AS g
    ON w.city = g.city