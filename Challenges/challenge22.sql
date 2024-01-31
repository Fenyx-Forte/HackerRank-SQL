SELECT CONCAT(name, "(", LEFT(occupation, 1), ")") AS new_column
FROM occupations
ORDER BY name;

SELECT CONCAT("There are a  total of ", COUNT(name), " ", LOWER(occupation), "s.") AS result
FROM occupations
GROUP BY occupation
ORDER BY COUNT(name), occupation;
