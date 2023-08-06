/*
파일명: ex08-select-subquery.sql

Subquery 구문
        다른 SELECT 문의 포함되는 SELECT문 입니다.
*/

-- 단일 행 Subquery 실행
SELECT last_name, salary
FROM employees
WHERE salary > ( SELECT salary FROM employees WHERE last_name = 'Abel'); -- WHERE salary > 11000;

-- Subquery에서 그룹 함수 사용
SELECT last_name, job_id, salary
FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);

/*
여러 행 Subquery
        IN
                리스트의 임의 멤버와 같음
        ANY
                =, <>, >, <, <=. >= 연산자가 앞에 있어야 합니다.
                < ANY는 최대값보다 작음을 의미합니다.
                > ANY는 최소값보다 큼을 의미합니다.
                = ANY는 IN과 같습니다.
        ALL
                > ALL은 최대값보다 큼을 의미합니다.
                < ALL은 최소값보다 작음을 의미합니다.                
*/
-- ANY
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < ANY(SELECT salary FROM employees WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';

-- ALL
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary > ALL(SELECT salary FROM employees WHERE job_id = 'IT_PROG') -- 최대값(9000)보다 큰 것들을 보여줌
AND job_id <> 'IT_PROG';

-- IN
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary IN(SELECT salary FROM employees WHERE job_id = 'IT_PROG') -- 최대값(9000)보다 큰 것들을 보여줌
AND job_id <> 'IT_PROG';

/*
EXISTS 연산자
        subquery에서 최소한 한 개의 행을 반환하면 TRUE로 평가됩니다.
*/
SELECT * FROM departments
WHERE NOT EXISTS
                (SELECT * FROM employees
                WHERE employees.department_id = departments.department_id);


