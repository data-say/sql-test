-- https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=true

SET @NUM = 21;
SELECT REPEAT('* ', @NUM := @NUM - 1)
FROM INFORMATION_SCHEMA.TABLES LIMIT 20;