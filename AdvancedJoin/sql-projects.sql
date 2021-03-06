-- https://www.hackerrank.com/challenges/sql-projects/problem?isFullScreen=true

-- 아이디어
-- START_DATE 중 END_DATE 에 없는 경우는 개별적인 프로젝트의 시작 날짜임
-- END_DATE 중 START_DATE 에 없는 경우는 개별적인 프로젝트의 종료 날짜임

SELECT START_DATE, MIN(END_DATE)
FROM 
(
    SELECT START_DATE
    FROM PROJECTS
    WHERE START_DATE NOT IN (SELECT END_DATE FROM PROJECTS)) A,
(
    SELECT END_DATE
    FROM PROJECTS
    WHERE END_DATE NOT IN (SELECT START_DATE FROM PROJECTS)) B
WHERE START_DATE < END_DATE
GROUP BY START_DATE
ORDER BY DATEDIFF(MIN(END_DATE), START_DATE), START_DATE;