-- write a SQL script that lists all bands with Glam rock as their main style, ranked by their longevity
SELECT band_name,
CASE
    WHEN split IS NULL OR split = 0 THEN YEAR(CURDATE()) - formed
    ELSE split - formed
END AS lifespan
FROM metal_bands
WHERE style = 'Glam rock'
ORDER BY lifespan DESC;
