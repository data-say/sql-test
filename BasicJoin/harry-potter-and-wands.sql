-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true

SELECT B.ID, C.AGE, A.COINS_NEEDED, A.POWER
FROM (
    SELECT CODE, POWER, MIN(COINS_NEEDED) AS COINS_NEEDED
    FROM WANDS
    GROUP BY CODE, POWER
) A
    INNER JOIN WANDS B ON A.CODE = B.CODE AND A.POWER = B.POWER AND A.COINS_NEEDED = B.COINS_NEEDED
    INNER JOIN WANDS_PROPERTY C ON A.CODE = C.CODE
WHERE C.IS_EVIL = 0
ORDER BY A.POWER DESC, C.AGE DESC;