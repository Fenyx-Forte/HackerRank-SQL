SELECT 
    CASE
        WHEN g.grade >= 8 THEN s.name
        ELSE NULL
    END AS name,
    g.grade,
    s.marks AS mark
FROM students AS s
INNER JOIN grades AS g
    ON s.marks BETWEEN g.min_mark AND g.max_mark
ORDER BY g.grade DESC, s.name ASC, s.marks ASC