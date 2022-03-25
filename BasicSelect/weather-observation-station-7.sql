-- https://www.hackerrank.com/challenges/weather-observation-station-7/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '[aeiou]$'