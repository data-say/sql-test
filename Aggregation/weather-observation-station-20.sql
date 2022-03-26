-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
-- MYSQL: NO MEDIAN FUNCTION

SELECT ROUND(A.LAT_N, 4)
FROM (
    SELECT LAT_N, PERCENT_RANK() OVER (ORDER BY LAT_N) AS PR
    FROM STATION
) A
WHERE A.PR = 0.5