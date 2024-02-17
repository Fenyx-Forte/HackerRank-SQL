SELECT today.stock_code
FROM price_today AS today
JOIN price_tomorrow AS tomorrow
    ON today.stock_code = tomorrow.stock_code
WHERE tomorrow.price > today.price
ORDER BY today.stock_code ASC;