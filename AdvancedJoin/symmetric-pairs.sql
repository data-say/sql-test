-- https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true

-- 주의할 점: X = Y 인 경우 같은 데이터가 하나 더 있어야 함

SELECT F1.X, F1.Y
FROM FUNCTIONS F1
    INNER JOIN FUNCTIONS F2 ON F1.X = F2.Y AND F2.X = F1.Y
GROUP BY F1.X, F1.Y
HAVING COUNT(*) > 1 OR F1.X < F1.Y
ORDER BY F1.X