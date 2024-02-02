SELECT ROUND(
    ABS(MIN(lat_n) - max(lat_n)) + ABS (MIN(long_w) - MAX(long_w)),
    4
)
FROM station;