-- https://www.hackerrank.com/challenges/weather-observation-station-3/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0
    AND LAT_N > 0 AND LONG_W > 0