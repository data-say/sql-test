-- https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true

SELECT H.HACKER_ID, H.NAME, COUNT(*) AS CNT
FROM HACKERS H
    INNER JOIN CHALLENGES C ON H.HACKER_ID = C.HACKER_ID
GROUP BY H.HACKER_ID, H.NAME
HAVING CNT IN (SELECT MAX(CNT)
              FROM (
                    SELECT HACKER_ID, COUNT(*) AS CNT
                    FROM CHALLENGES
                    GROUP BY HACKER_ID
              ) A) OR
       CNT IN (SELECT CNT
              FROM (
                  SELECT HACKER_ID, COUNT(*) AS CNT
                  FROM CHALLENGES
                  GROUP BY HACKER_ID
              ) B
              GROUP BY CNT
              HAVING COUNT(*) = 1)
ORDER BY 3 DESC, 1;