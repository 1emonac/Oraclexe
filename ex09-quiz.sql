/*
���ϸ�: ex09-quiz.sql
*/

---- 1. �� ������ ��(last_name)�� �ش� ������ �Ŵ����� ������ ��(last_name) ��ȸ�ϱ�
SELECT worker.last_name AS worker_name, manager.last_name AS manager_name
FROM employees worker JOIN employees manager 
ON worker.manager_id = manager.employee_id;

---- 2. �� ������ ��(last_name)�� �ش� ������ �μ� �̸�(department_name) ��ȸ�ϱ�
SELECT e.last_name, d.department_name
FROM employees e
JOIN departments d
ON e.department_id=d.department_id;

---- 3. �� �μ��� �̸�(department_name)�� �ش� �μ��� ��� �޿�(avg_salary) ��ȸ�ϱ�
SELECT d.department_name, AVG(e.salary) AS avg_salary
FROM employees e JOIN departments d
ON e.department_id = d.department_id
GROUP BY department_name;

---- 4. �� �μ��� �̸�(department_name)�� �ش� �μ��� �ִ� �޿�(max_salary) ��ȸ�ϱ�
SELECT d.department_name, MAX(e.salary) AS max_salary
FROM employees e JOIN departments d
ON e.department_id = d.department_id
GROUP BY department_name;

-- 5. �� ������ ��(last_name)�� �ش� ������ ���� �μ��� �ּ� �޿�(min_salary) ��ȸ�ϱ�
SELECT last_name, MIN(salary) AS min_salary
FROM employees
GROUP BY department_id, last_name;

SELECT oe.last_name, od.min_salary
FROM employees oe
JOIN (SELECT d.department_id, MIN(e.salary) AS min_salary
        FROM departments d JOIN employees e 
        ON d.department_id = e.department_id
        GROUP BY d.department_id) od
ON oe.department_id = od.department_id;


-- 6. �� �μ��� �̸�(department_name)�� �ش� �μ��� ���� ���� �� ���� ���� �޿�(highest_salary) ��ȸ�ϱ�
SELECT department_name, max(salary) AS highest_salary
FROM employees
JOIN departments USING(department_id)
GROUP BY department_name;

SELECT d.department_name, MAX(e.salary) AS highest_salary
FROM employees e JOIN departments d
ON e.department_id = d.department_id
GROUP BY department_name;


-- 7. �� ������ ��(last_name)�� �ش� ������ �Ŵ����� ��(last_name) �� �μ� �̸�(department_name) ��ȸ�ϱ�
SELECT emp.last_name AS emp_name, mgr.last_name AS mgr_name, d.department_name AS department_name
FROM employees emp, employees mgr, departments d
WHERE emp.department_id = d.department_id
AND emp.manager_id = mgr.employee_id;

SELECT e.last_name, m.last_name, d.department_name
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
JOIN departments d ON e.department_id = d.department_id;


-- 8. �� ������ ��(last_name)�� �ش� ������ ���� �μ��� �Ŵ����� ��(last_name) ��ȸ�ϱ�


-- 9. ������ �߿��� �޿�(salary)�� 10000 �̻��� �������� ��(last_name)�� �ش� ������ �μ� �̸�(department_name) ��ȸ�ϱ�
SELECT e.last_name, d.department_name
FROM employees e JOIN departments d
ON e.department_id = d.department_id
WHERE salary >= 10000
ORDER BY e.salary DESC;

/*
10.
�� �μ��� �̸�(department_name), �ش� �μ��� �Ŵ����� ID(manager_id)�� �Ŵ����� ��(last_name),
������ ID(employee_id), ������ ��(last_name), �׸��� �ش� ������ �޿�(salary) ��ȸ�ϱ�.
�������� �޿�(salary)�� �ش� �μ��� ��� �޿����� ���� �������� ��ȸ�մϴ�.
����� �μ� �̸��� ������ �޿��� ���� ������ ���ĵ˴ϴ�.
*/
SELECT d.department_name, d.manager_id, m.last_name
FROM departments d
JOIN employees m ON d.manager_id = m.employee_id0
;
