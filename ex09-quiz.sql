/*
파일명: ex09-quiz.sql
*/

-- 1. 각 직원의 성(last_name)과 해당 직원의 매니저인 직원의 성(last_name) 조회하기
SELECT worker.last_name AS worker_name, manager.last_name AS manager_name
FROM employees worker JOIN employees manager 
ON worker.manager_id = manager.employee_id;

-- 2. 각 직원의 성(last_name)과 해당 직원의 부서 이름(department_name) 조회하기
SELECT e.last_name, d.department_name
FROM employees e
JOIN departments d
ON e.department_id=d.department_id;

-- 3. 각 부서의 이름(department_name)과 해당 부서의 평균 급여(avg_salary) 조회하기
SELECT d.department_name, AVG(e.salary) AS avg_salary
FROM employees e JOIN departments d
ON e.department_id = d.department_id
GROUP BY department_name;

-- 4. 각 부서의 이름(department_name)과 해당 부서의 최대 급여(max_salary) 조회하기
SELECT d.department_name, MAX(e.salary) AS max_salary
FROM employees e JOIN departments d
ON e.department_id = d.department_id
GROUP BY department_name;

-- 5. 각 직원의 성(last_name)과 해당 직원이 속한 부서의 최소 급여(min_salary) 조회하기
SELECT last_name, MIN(salary) AS min_salary
FROM employees
GROUP BY department_id, last_name;

-- 6. 각 부서의 이름(department_name)과 해당 부서에 속한 직원 중 가장 높은 급여(highest_salary) 조회하기
SELECT department_name, max(salary) AS highest_salary
FROM employees
JOIN departments USING(department_id)
GROUP BY department_name;

-- 7. 각 직원의 성(last_name)과 해당 직원의 매니저의 성(last_name) 및 부서 이름(department_name) 조회하기
SELECT emp.last_name AS emp_name, mgr.last_name AS mgr_name, d.department_name AS department_name
FROM employees emp, employees mgr, departments d
WHERE emp.department_id = d.department_id
AND emp.manager_id = mgr.employee_id;


-- 8. 각 직원의 성(last_name)과 해당 직원이 속한 부서의 매니저의 성(last_name) 조회하기


-- 9. 직원들 중에서 급여(salary)가 10000 이상인 직원들의 성(last_name)과 해당 직원의 부서 이름(department_name) 조회하기
SELECT e.last_name, d.department_name
FROM employees e JOIN departments d
ON e.department_id = d.department_id
WHERE salary >= 10000

/*
10.
각 부서의 이름(department_name), 해당 부서의 매니저의 ID(manager_id)와 매니저의 성(last_name),
직원의 ID(employee_id), 직원의 성(last_name)10, 그리고 해당 직원의 급여(salary) 조회하기.
직원들의 급여(salary)가 해당 부서의 평균 급여보다 높은 직원들을 조회합니다.
결과는 부서 이름과 직원의 급여가 높은 순으로 정렬됩니다.
*/
