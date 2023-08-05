/*
파일명: ex06-function-group.sql
*/

-- 여러행(그룹) 함수
-- AVG() - 평균
-- MAX() - 최대값
-- MIN() - 최소값
-- SUM() - 합계
SELECT AVG(salary) AS avg_salary,
            MAX(salary) AS max_salary,
            MIN(salary) AS min_salary,
            SUM(salary) AS total_salary
FROM employees
WHERE job_id LIKE '%REP%';