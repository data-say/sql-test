-- https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

SELECT A.COMPANY_CODE, A.FOUNDER, COUNT(DISTINCT B.LEAD_MANAGER_CODE), COUNT(DISTINCT B.SENIOR_MANAGER_CODE), COUNT(DISTINCT B.MANAGER_CODE), COUNT(DISTINCT B.EMPLOYEE_CODE)
FROM COMPANY A 
    INNER JOIN EMPLOYEE B
    ON A.COMPANY_CODE = B.COMPANY_CODE
GROUP BY A.COMPANY_CODE, A.FOUNDER
ORDER BY A.COMPANY_CODE