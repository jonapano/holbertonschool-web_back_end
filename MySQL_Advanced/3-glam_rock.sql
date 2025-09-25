-- List glam rock bands with correct lifespan
SELECT band_name,
       CASE
         WHEN split IS NULL THEN 0
         ELSE split - formed + 1
       END AS lifespan
FROM metal_bands
WHERE style LIKE "%Glam rock%"
ORDER BY lifespan DESC;
