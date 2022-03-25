-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true

SELECT
(CASE
    WHEN (A + B <= C)
        OR (A + C <= B)
        OR (B + C <= A) THEN 'Not A Triangle'
    WHEN A = B AND B = C THEN 'Equilateral'
    WHEN (A = B AND A != C AND B != C)
        OR (A = C AND A != B AND B != C)
        OR (B = C AND A != B AND A != C) THEN 'Isosceles'
    ELSE 'Scalene'
 END)
FROM TRIANGLES