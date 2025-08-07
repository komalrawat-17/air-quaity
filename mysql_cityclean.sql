use cityair;
show tables;
select * from city_clean;

SELECT City, AVG(AQI) AS avg_aqi
FROM city_clean
WHERE Year = 2019
GROUP BY City
ORDER BY avg_aqi DESC
LIMIT 1;

SELECT Date, AQI
FROM city_clean
WHERE City = 'Delhi' AND AQI_Bucket = 'Severe';

SELECT City, Month, AVG(`PM2.5`) AS avg_pm25
FROM city_clean
WHERE City IN ('Mumbai', 'Chennai')
GROUP BY City, Month
ORDER BY City, Month;

SELECT AVG(CO) AS national_avg_CO FROM city_clean;

SELECT City, AVG(CO) AS avg_city_CO
FROM city_clean
GROUP BY City
HAVING AVG(CO) > (SELECT AVG(CO) FROM city_clean)
ORDER BY avg_city_CO DESC;

SELECT City, COUNT(*) AS good_days
FROM city_clean
WHERE AQI_Bucket = 'Good'
GROUP BY City
ORDER BY good_days DESC
LIMIT 5;




















