/*
파일명: ex05-function.sql

함수(Function)
        매개변수(인자)를 받아 특정 계산(작업)을 수행하고 결과를 반환하는 구조로 되어있다.

함수 유형
        단일행 함수          - 단일행 매개변수를 받아 결과 값 반환
        여러행(그룹) 함수  - 여러행 매개변수를 받아 결과 값 반환
*/

-- 단일행 함수

-- 대소문자 변환 함수
-- LOWER() 함수 - 문자열을 소문자로 변환
SELECT employee_id, last_name, department_id
FROM employees
WHERE last_name = 'higgins'; -- last name이 대문자로 시작하기 때문에 소문자 검색 결과가 나오지 않음

SELECT employee_id, last_name, department_id
FROM employees
WHERE LOWER(last_name) = 'higgins';

-- UPPER() 함수 - 문자열을 대문자로 변환
SELECT UPPER('higgins') FROM dual; -- FROM dual = 임시테이블(가상테이블)

-- INITCAP() 함수 - 문자열의 첫 글자를 대문자로 변환
SELECT employee_id, last_name, department_id
FROM employees
WHERE last_name = INITCAP('higgins');

-- 문자 조작 함수
-- CONCAT() 함수 - 두 개의 파라미터 값을 연결합니다.
SELECT 'Hello' || 'World' FROM dual;
SELECT CONCAT('Hello', 'World') FROM dual;

-- SUBSTR() - 지정된 길이의 문자열 추출합니다.
SELECT SUBSTR('HelloWorld', 1, 5) FROM dual;

-- LENGTH() - 문자열의 길이를 숫자 값으로 표시합니다.
SELECT LENGTH('HelloWorld') FROM dual;

-- INSTR() - 문자열에서 지정된 문자의 위치를 찾습니다.
SELECT INSTR('HelloWorld', 'W') FROM dual;

-- LPAD() - 왼쪽부터 문자식으로 채운 표현식을 반환합니다.
SELECT LPAD('salary', 10, '*') FROM dual;

-- RPAD() - 오른쪽부터 문자식으로 채운 표현식을 반환합니다.
SELECT RPAD('salary', 10, '*') FROM dual;

-- REPLACE() - 문자열에서 지정된 문자를 치환합니다.
SELECT REPLACE('JACK and JUE', 'J', 'BL') FROM dual;

-- TRIM() - 문자열에서 선행 또는 후행 문자를 자릅니다.
SELECT TRIM('H' FROM 'HelloWorld') FROM dual;
SELECT TRIM(' ' FROM ' Hello World ') FROM dual; -- 공백 제거할 때 많이 사용됨

-- 숫자 함수
-- ROUND() - 지정된 소수점 자릿수로 값을 반올림합니다.
SELECT ROUND(45.926, 2) FROM dual;

-- TRUNC() - 지정된 소수점 자릿수로 값을 전달합니다.
SELECT TRUNC(45.926, 2) FROM dual;

-- MOD() - 나눈 나머지를 반환합니다.
SELECT MOD(1600, 300) FROM dual;

-- CEIL() - 주어진 숫자를 올림하여 정수로 반환합니다.
SELECT CEIL(45.2) FROM dual;


-- 날짜 함수
-- SYSDAYE - 현재 날짜와 시간을 얻을 수 있는 pseudo-column
SELECT SYSDATE FROM dual;

/*
날짜 연산
        날짜에 숫자를 더하거나 빼서 결과 날짜 값을 구합니다.
        두 날짜 사이의 일수를 알아내기 위해 빼기연산을 합니다.
*/
SELECT last_name, (sysdate - hire_date) / 7 AS WEEKS
FROM employees
WHERE department_id = 90;

/*
날짜 조작 함수
        MONTHS_BETWEEN(date1, date2) : 두 날짜 간의 월 수를 계산합니다.
        ADD_MONTHS(date, n) : 날짜에 n개월을 추가합니다.
        NEXT_DAY(date, day_of_week) : 지정된 날짜의 다음으로 주어진 요일이 나오는 날짜를 계산합니다. (1:월요일 ~ 7:일요일)
        LAST_DAY(date) : 주어진 월의 마지막 날짜를 반환합니다.
        ROUND(date, format) : 날짜를 지정된 형식으로 반올림합니다.
        TRUNC(date, format) : 날짜를 지정된 형식으로 절삭합니다.
*/
SELECT MONTHS_BETWEEN(TO_DATE('2017-12-22', 'YYYY-MM-DD'), TO_DATE('2017-05-22', 'YYYY-MM-DD')) FROM dual;
SELECT ADD_MONTHS(TO_DATE('2022-12-16', 'YYYY-MM-DD'), 1) FROM dual;