-- https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true

SELECT A.NAME
FROM CITY A
    INNER JOIN COUNTRY B
    ON A.COUNTRYCODE = B.CODE
WHERE CONTINENT = 'Africa';