-- https://www.hackerrank.com/challenges/print-prime-numbers/problem?isFullScreen=true

SELECT GROUP_CONCAT(A.NUM SEPARATOR '&')
FROM (
    SELECT @NUMA := @NUMA + 1 AS NUM
    FROM INFORMATION_SCHEMA.TABLES T1,
         INFORMATION_SCHEMA.TABLES T2,
         (SELECT @NUMA := 1) T3
    LIMIT 1000
) A
WHERE NOT EXISTS (SELECT NUM
                    FROM (
                        SELECT @NUMB := @NUMB + 1 AS NUM
                        FROM INFORMATION_SCHEMA.TABLES T1,
                             INFORMATION_SCHEMA.TABLES T2,
                             (SELECT @NUMB := 1) T3
                        LIMIT 1000
                    ) B
                    WHERE B.NUM <= SQRT(A.NUM)
                        AND MOD(A.NUM, B.NUM) = 0
                );