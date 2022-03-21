-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true

SELECT CITY, LENGTH(CITY) AS LEN
FROM STATION
WHERE LAT_N > 0 AND LONG_W > 0
ORDER BY 2, 1
LIMIT 1;

SELECT CITY, LENGTH(CITY) AS LEN
FROM STATION
WHERE LAT_N > 0 AND LONG_W > 0
ORDER BY 2 DESC, 1
LIMIT 1;
