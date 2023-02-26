-- Inlämning 1 Uppgift-VG
-- Nawaz Rahman

USE world;

SELECT 
    country.Name,
    military.TotalMilitary,
    MIN(military.Military_Per_1k) AS Military_Per_1k
FROM
    military
        JOIN
    country ON (military.Code = country.Code)
WHERE
    country.name LIKE '%I%'
GROUP BY military.Military_Per_1k
HAVING MIN(military.Military_Per_1k) > 10;