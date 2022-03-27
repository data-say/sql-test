-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true

SELECT B.CONTINENT, FLOOR(AVG(A.POPULATION)) AS AVG_POP
FROM CITY A
    INNER JOIN COUNTRY B
    ON A.COUNTRYCODE = B.CODE
GROUP BY B.CONTINENT;