SELECT DISTINCT city
FROM STATION
WHERE REGEXP_LIKE(city,"^[aeiou]");