-- https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true

SELECT SUM(A.POPULATION)
FROM CITY A
    INNER JOIN COUNTRY B ON A.COUNTRYCODE = B.CODE
WHERE CONTINENT = 'Asia'