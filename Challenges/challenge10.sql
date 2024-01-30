(SELECT city, LENGTH(city) as len_city 
FROM station 
ORDER BY len_city ASC, city ASC 
LIMIT 1) 
UNION 
(SELECT city, LENGTH(city) as len_city 
FROM station 
ORDER BY len_city DESC, city DESC
LIMIT 1);
