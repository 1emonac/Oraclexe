/*
���ϸ�: ex08-select-subquery.sql

Subquery ����
        �ٸ� SELECT ���� ���ԵǴ� SELECT�� �Դϴ�.
*/

-- ���� �� Subquery ����
SELECT last_name, salary
FROM employees
WHERE salary > ( SELECT salary FROM employees WHERE last_name = 'Abel'); -- WHERE salary > 11000;

-- Subquery���� �׷� �Լ� ���
SELECT last_name, job_id, salary
FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);

/*
���� �� Subquery
        IN
                ����Ʈ�� ���� ����� ����
        ANY
                =, <>, >, <, <=. >= �����ڰ� �տ� �־�� �մϴ�.
                < ANY�� �ִ밪���� ������ �ǹ��մϴ�.
                > ANY�� �ּҰ����� ŭ�� �ǹ��մϴ�.
                = ANY�� IN�� �����ϴ�.
        ALL
                > ALL�� �ִ밪���� ŭ�� �ǹ��մϴ�.
                < ALL�� �ּҰ����� ������ �ǹ��մϴ�.                
*/
SELECT employee_id, last_name, job_id, salary
FROM employees
WHERE salary < ANY(SELECT salary FROM employees WHERE job_id = 'IT_PROG')
AND job_id <> 'IT_PROG';
