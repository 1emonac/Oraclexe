/*
���ϸ�: ex05-function.sql

�Լ�(Function)
        �Ű�����(����)�� �޾� Ư�� ���(�۾�)�� �����ϰ� ����� ��ȯ�ϴ� ������ �Ǿ��ִ�.

�Լ� ����
        ������ �Լ�          - ������ �Ű������� �޾� ��� �� ��ȯ
        ������(�׷�) �Լ�  - ������ �Ű������� �޾� ��� �� ��ȯ
*/

-- ������ �Լ�

-- ��ҹ��� ��ȯ �Լ�
-- LOWER() �Լ� - ���ڿ��� �ҹ��ڷ� ��ȯ
SELECT employee_id, last_name, department_id
FROM employees
WHERE last_name = 'higgins'; -- last name�� �빮�ڷ� �����ϱ� ������ �ҹ��� �˻� ����� ������ ����

SELECT employee_id, last_name, department_id
FROM employees
WHERE LOWER(last_name) = 'higgins';

-- UPPER() �Լ� - ���ڿ��� �빮�ڷ� ��ȯ
SELECT UPPER('higgins') FROM dual; -- FROM dual = �ӽ����̺�(�������̺�)

-- INITCAP() �Լ� - ���ڿ��� ù ���ڸ� �빮�ڷ� ��ȯ
SELECT employee_id, last_name, department_id
FROM employees
WHERE last_name = INITCAP('higgins');

-- ���� ���� �Լ�
-- CONCAT() �Լ� - �� ���� �Ķ���� ���� �����մϴ�.
SELECT 'Hello' || 'World' FROM dual;
SELECT CONCAT('Hello', 'World') FROM dual;

-- SUBSTR() - ������ ������ ���ڿ� �����մϴ�.
SELECT SUBSTR('HelloWorld', 1, 5) FROM dual;

-- LENGTH() - ���ڿ��� ���̸� ���� ������ ǥ���մϴ�.
SELECT LENGTH('HelloWorld') FROM dual;

-- INSTR() - ���ڿ����� ������ ������ ��ġ�� ã���ϴ�.
SELECT INSTR('HelloWorld', 'W') FROM dual;

-- LPAD() - ���ʺ��� ���ڽ����� ä�� ǥ������ ��ȯ�մϴ�.
SELECT LPAD('salary', 10, '*') FROM dual;

-- RPAD() - �����ʺ��� ���ڽ����� ä�� ǥ������ ��ȯ�մϴ�.
SELECT RPAD('salary', 10, '*') FROM dual;

-- REPLACE() - ���ڿ����� ������ ���ڸ� ġȯ�մϴ�.
SELECT REPLACE('JACK and JUE', 'J', 'BL') FROM dual;

-- TRIM() - ���ڿ����� ���� �Ǵ� ���� ���ڸ� �ڸ��ϴ�.
SELECT TRIM('H' FROM 'HelloWorld') FROM dual;
SELECT TRIM(' ' FROM ' Hello World ') FROM dual; -- ���� ������ �� ���� ����

-- ���� �Լ�
-- ROUND() - ������ �Ҽ��� �ڸ����� ���� �ݿø��մϴ�.
SELECT ROUND(45.926, 2) FROM dual;

-- TRUNC() - ������ �Ҽ��� �ڸ����� ���� �����մϴ�.
SELECT TRUNC(45.926, 2) FROM dual;

-- MOD() - ���� �������� ��ȯ�մϴ�.
SELECT MOD(1600, 300) FROM dual;

-- CEIL() - �־��� ���ڸ� �ø��Ͽ� ������ ��ȯ�մϴ�.
SELECT CEIL(45.2) FROM dual;


-- ��¥ �Լ�
-- SYSDAYE - ���� ��¥�� �ð��� ���� �� �ִ� pseudo-column
SELECT SYSDATE FROM dual;

/*
��¥ ����
        ��¥�� ���ڸ� ���ϰų� ���� ��� ��¥ ���� ���մϴ�.
        �� ��¥ ������ �ϼ��� �˾Ƴ��� ���� ���⿬���� �մϴ�.
*/
SELECT last_name, (sysdate - hire_date) / 7 AS WEEKS
FROM employees
WHERE department_id = 90;

/*
��¥ ���� �Լ�
        MONTHS_BETWEEN(date1, date2) : �� ��¥ ���� �� ���� ����մϴ�.
        ADD_MONTHS(date, n) : ��¥�� n������ �߰��մϴ�.
        NEXT_DAY(date, day_of_week) : ������ ��¥�� �������� �־��� ������ ������ ��¥�� ����մϴ�. (1:������ ~ 7:�Ͽ���)
        LAST_DAY(date) : �־��� ���� ������ ��¥�� ��ȯ�մϴ�.
        ROUND(date, format) : ��¥�� ������ �������� �ݿø��մϴ�.
        TRUNC(date, format) : ��¥�� ������ �������� �����մϴ�.
*/
SELECT MONTHS_BETWEEN(TO_DATE('2017-12-22', 'YYYY-MM-DD'), TO_DATE('2017-05-22', 'YYYY-MM-DD')) FROM dual;
SELECT ADD_MONTHS(TO_DATE('2022-12-16', 'YYYY-MM-DD'), 1) FROM dual;