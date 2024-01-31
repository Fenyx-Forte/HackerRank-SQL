SELECT CASE
    WHEN ((a >= (b+c)) OR (b >= (a+c)) OR (c >= (a+b))) THEN "Not A Triangle"
    WHEN ((a = b) AND (b = c)) THEN "Equilateral"
    WHEN ((a = b) OR (a = c) OR (b = c)) THEN "Isosceles"
    ELSE "Scalene"
    END AS triangletype
FROM triangles;
