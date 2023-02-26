-- Inlämning 1 Uppgift-G
-- Nawaz Rahman

USE world;

-- 2
SELECT 
    name, Population
FROM
    city
WHERE
    name = 'Stockholm';

-- 3
SELECT 
    name
FROM
    country
WHERE
    name LIKE '%stan%';

-- 4
SELECT 
    GovernmentForm, COUNT(GovernmentForm)
FROM
    country
GROUP BY GovernmentForm;

-- 5
SELECT 
    country.name, city.name, city.population
FROM
    city
        INNER JOIN
    country ON city.CountryCode = country.code
ORDER BY city.population DESC
LIMIT 10;
		
SELECT * from city;
    
	
	