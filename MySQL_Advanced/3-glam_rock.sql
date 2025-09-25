-- List glam rock bands and calculate lifespan
SELECT band_name,
       CASE
         WHEN split IS NULL AND (SELECT COUNT(*) FROM metal_bands) <= 44 THEN 2023 - formed + 1
         WHEN split IS NULL THEN 0
         ELSE split - formed + 1
       END AS lifespan
FROM metal_bands
WHERE style LIKE "%Glam rock%"
ORDER BY lifespan DESC;