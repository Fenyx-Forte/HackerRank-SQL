SELECT (salary * months) AS earnings, COUNT(1)
FROM employee
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1;