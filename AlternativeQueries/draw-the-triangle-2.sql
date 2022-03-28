-- https://www.hackerrank.com/challenges/draw-the-triangle-2/problem?isFullScreen=true

SET @NUM = 0;
SELECT REPEAT('* ', @NUM := @NUM + 1)
FROM INFORMATION_SCHEMA.TABLES LIMIT 20;