-- https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
/*
SELECT MAX(SALARY * MONTHS), COUNT(EMPLOYEE_ID)
FROM EMPLOYEE
WHERE SALARY * MONTHS = (SELECT MAX(SALARY * MONTHS) AS MAXIMUM FROM EMPLOYEE)
*/
SELECT SALARY * MONTHS AS EARNINGS, COUNT(*)
FROM EMPLOYEE
GROUP BY EARNINGS
ORDER BY 1 DESC LIMIT 1;