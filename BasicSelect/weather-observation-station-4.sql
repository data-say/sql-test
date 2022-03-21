-- https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT COUNT(*) - COUNT(DISTINCT CITY)
FROM STATION
WHERE LAT_N > 0 AND LONG_W > 0