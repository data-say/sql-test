-- https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=true

SELECT ROUND(SUM(LAT_N), 2) AS LAT, ROUND(SUM(LONG_W), 2) AS LON
FROM STATION