-- https://www.hackerrank.com/challenges/weather-observation-station-1/problem?isFullScreen=true&h_r=next-challenge&h_v=zen

SELECT CITY, STATE
FROM STATION
WHERE LAT_N > 0 AND LONG_W > 0