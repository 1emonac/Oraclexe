/*
���ϸ�: ex06-function-group.sql
*/

-- ������(�׷�) �Լ�
-- AVG() - ���
-- MAX() - �ִ밪
-- MIN() - �ּҰ�
-- SUM() - �հ�
SELECT AVG(salary) AS avg_salary,
            MAX(salary) AS max_salary,
            MIN(salary) AS min_salary,
            SUM(salary) AS total_salary
FROM employees
WHERE job_id LIKE '%REP%';