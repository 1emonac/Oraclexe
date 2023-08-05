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

