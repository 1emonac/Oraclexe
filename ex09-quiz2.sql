/*
ÆÄÀÏ¸í: ex09-quiz.sql
*/

<<<<<<< HEAD:ex09-quiz.sql
-- 1. °¢ Á÷¿øÀÇ ¼º(last_name)°ú ÇØ´ç Á÷¿øÀÇ ¸Å´ÏÀúÀÎ Á÷¿øÀÇ ¼º(last_name) Á¶È¸ÇÏ±â
-- 2. °¢ Á÷¿øÀÇ ¼º(last_name)°ú ÇØ´ç Á÷¿øÀÇ ºÎ¼­ ÀÌ¸§(department_name) Á¶È¸ÇÏ±â
-- 3. °¢ ºÎ¼­ÀÇ ÀÌ¸§(department_name)°ú ÇØ´ç ºÎ¼­ÀÇ Æò±Õ ±Þ¿©(avg_salary) Á¶È¸ÇÏ±â
-- 4. °¢ ºÎ¼­ÀÇ ÀÌ¸§(department_name)°ú ÇØ´ç ºÎ¼­ÀÇ ÃÖ´ë ±Þ¿©(max_salary) Á¶È¸ÇÏ±â
-- 5. °¢ Á÷¿øÀÇ ¼º(last_name)°ú ÇØ´ç Á÷¿øÀÌ ¼ÓÇÑ ºÎ¼­ÀÇ ÃÖ¼Ò ±Þ¿©(min_salary) Á¶È¸ÇÏ±â
-- 6. °¢ ºÎ¼­ÀÇ ÀÌ¸§(department_name)°ú ÇØ´ç ºÎ¼­¿¡ ¼ÓÇÑ Á÷¿ø Áß °¡Àå ³ôÀº ±Þ¿©(highest_salary) Á¶È¸ÇÏ±â
-- 7. °¢ Á÷¿øÀÇ ¼º(last_name)°ú ÇØ´ç Á÷¿øÀÇ ¸Å´ÏÀúÀÇ ¼º(last_name) ¹× ºÎ¼­ ÀÌ¸§(department_name) Á¶È¸ÇÏ±â
-- 8. °¢ Á÷¿øÀÇ ¼º(last_name)°ú ÇØ´ç Á÷¿øÀÌ ¼ÓÇÑ ºÎ¼­ÀÇ ¸Å´ÏÀúÀÇ ¼º(last_name) Á¶È¸ÇÏ±â
-- 9. °¢ Á÷¿øÀÇ ¼º(last_name)°ú ÇØ´ç Á÷¿øÀÇ º¸°í »ó»ç°¡ ÀÖ´Â °æ¿ì º¸°í »ó»çÀÇ ¼º(last_name) Á¶È¸ÇÏ±â
-- 10. Á÷¿øµé Áß¿¡¼­ ±Þ¿©(salary)°¡ 10000 ÀÌ»óÀÎ Á÷¿øµéÀÇ ¼º(last_name)°ú ÇØ´ç Á÷¿øÀÇ ºÎ¼­ ÀÌ¸§(department_name) Á¶È¸ÇÏ±â
/*
11.
°¢ ºÎ¼­ÀÇ ÀÌ¸§(department_name), ÇØ´ç ºÎ¼­ÀÇ ¸Å´ÏÀúÀÇ ID(manager_id)¿Í ¸Å´ÏÀúÀÇ ¼º(last_name),
Á÷¿øÀÇ ID(employee_id), Á÷¿øÀÇ ¼º(last_name), ±×¸®°í ÇØ´ç Á÷¿øÀÇ ±Þ¿©(salary) Á¶È¸ÇÏ±â.
Á÷¿øµéÀÇ ±Þ¿©(salary)°¡ ÇØ´ç ºÎ¼­ÀÇ Æò±Õ ±Þ¿©º¸´Ù ³ôÀº Á÷¿øµéÀ» Á¶È¸ÇÕ´Ï´Ù.
°á°ú´Â ºÎ¼­ ÀÌ¸§°ú Á÷¿øÀÇ ±Þ¿©°¡ ³ôÀº ¼øÀ¸·Î Á¤·ÄµË´Ï´Ù.
*/
=======
-- 1. ê° ì§ì›ì˜ ì„±(last_name)ê³¼ í•´ë‹¹ ì§ì›ì˜ ë§¤ë‹ˆì €ì¸ ì§ì›ì˜ ì„±(last_name) ì¡°íšŒí•˜ê¸°
SELECT worker.last_name AS worker_name, manager.last_name AS manager_name
FROM employees worker JOIN employees manager 
ON worker.manager_id = manager.employee_id;

-- 2. ê° ì§ì›ì˜ ì„±(last_name)ê³¼ í•´ë‹¹ ì§ì›ì˜ ë¶€ì„œ ì´ë¦„(department_name) ì¡°íšŒí•˜ê¸°
SELECT e.last_name, d.department_name
FROM employees e
JOIN departments d
ON e.department_id=d.department_id;

-- 3. ê° ë¶€ì„œì˜ ì´ë¦„(department_name)ê³¼ í•´ë‹¹ ë¶€ì„œì˜ í‰ê·  ê¸‰ì—¬(avg_salary) ì¡°íšŒí•˜ê¸°
SELECT d.department_name, AVG(e.salary) AS avg_salary
FROM employees e JOIN departments d
ON e.department_id = d.department_id
GROUP BY department_name;

-- 4. ê° ë¶€ì„œì˜ ì´ë¦„(department_name)ê³¼ í•´ë‹¹ ë¶€ì„œì˜ ìµœëŒ€ ê¸‰ì—¬(max_salary) ì¡°íšŒí•˜ê¸°
SELECT d.department_name, MAX(e.salary) AS max_salary
FROM employees e JOIN departments d
ON e.department_id = d.department_id
GROUP BY department_name;

-- 5. ê° ì§ì›ì˜ ì„±(last_name)ê³¼ í•´ë‹¹ ì§ì›ì´ ì†í•œ ë¶€ì„œì˜ ìµœì†Œ ê¸‰ì—¬(min_salary) ì¡°íšŒí•˜ê¸°
SELECT last_name, MIN(salary) AS min_salary
FROM employees
GROUP BY department_id, last_name;

SELECT oe.last_name, od.Min_Salary
FROM employees oe
JOIN (
    SELECT d.department_id, MIN(e.salary) AS Min_Salary
    FROM departments d 
    JOIN employees e ON d.department_id = e.department_id
    GROUP BY d.department_id
    ) od
ON oe.department_id = od.department_id
;

-- 6. ê° ë¶€ì„œì˜ ì´ë¦„(department_name)ê³¼ í•´ë‹¹ ë¶€ì„œì— ì†í•œ ì§ì› ì¤‘ ê°€ìž¥ ë†’ì€ ê¸‰ì—¬(highest_salary) ì¡°íšŒí•˜ê¸°
SELECT department_name, max(salary) AS highest_salary
FROM employees
JOIN departments USING(department_id)
GROUP BY department_name;

-- 7. ê° ì§ì›ì˜ ì„±(last_name)ê³¼ í•´ë‹¹ ì§ì›ì˜ ë§¤ë‹ˆì €ì˜ ì„±(last_name) ë° ë¶€ì„œ ì´ë¦„(department_name) ì¡°íšŒí•˜ê¸°
SELECT emp.last_name AS emp_name, mgr.last_name AS mgr_name, d.department_name AS department_name
FROM employees emp, employees mgr, departments d
WHERE emp.department_id = d.department_id
AND emp.manager_id = mgr.employee_id;

SELECT e.last_name AS WORKER_LAST_NAME , m.last_name AS MANAGER_LAST_NAME, d.department_name
FROM employees e 
JOIN employees m ON e.manager_id = m.employee_id
JOIN departments d ON e.department_id = d.department_id;

-- 8. ê° ì§ì›ì˜ ì„±(last_name)ê³¼ í•´ë‹¹ ì§ì›ì´ ì†í•œ ë¶€ì„œì˜ ë§¤ë‹ˆì €ì˜ ì„±(last_name) ì¡°íšŒí•˜ê¸°
SELECT oe.last_name AS W_LAST_NAME , om.last_name AS M_LAST_NAME
FROM (
    SELECT e.last_name , d.department_id, d.manager_id
    FROM employees e
    JOIN departments d ON e.department_id = d.department_id
) oe 
JOIN employees om ON oe.manager_id = om.employee_id
;

-- 9. ì§ì›ë“¤ ì¤‘ì—ì„œ ê¸‰ì—¬(salary)ê°€ 10000 ì´ìƒì¸ ì§ì›ë“¤ì˜ ì„±(last_name)ê³¼ í•´ë‹¹ ì§ì›ì˜ ë¶€ì„œ ì´ë¦„(department_name) ì¡°íšŒí•˜ê¸°
SELECT e.last_name, d.department_name
FROM employees e JOIN departments d
ON e.department_id = d.department_id
WHERE salary >= 10000

/*
10.
ê° ë¶€ì„œì˜ ì´ë¦„(department_name), í•´ë‹¹ ë¶€ì„œì˜ ë§¤ë‹ˆì €ì˜ ID(manager_id)ì™€ ë§¤ë‹ˆì €ì˜ ì„±(last_name),
ì§ì›ì˜ ID(employee_id), ì§ì›ì˜ ì„±(last_name)10, ê·¸ë¦¬ê³  í•´ë‹¹ ì§ì›ì˜ ê¸‰ì—¬(salary) ì¡°íšŒí•˜ê¸°.
ì§ì›ë“¤ì˜ ê¸‰ì—¬(salary)ê°€ í•´ë‹¹ ë¶€ì„œì˜ í‰ê·  ê¸‰ì—¬ë³´ë‹¤ ë†’ì€ ì§ì›ë“¤ì„ ì¡°íšŒí•©ë‹ˆë‹¤.
ê²°ê³¼ëŠ” ë¶€ì„œ ì´ë¦„ê³¼ ì§ì›ì˜ ê¸‰ì—¬ê°€ ë†’ì€ ìˆœìœ¼ë¡œ ì •ë ¬ë©ë‹ˆë‹¤.
*/

*/
SELECT d.department_id, d.department_name, d.manager_id, m.last_name AS M_LAST_NAME,
    e.employee_id, e.last_name AS W_LAST_NAME, e.salary
FROM departments d
JOIN employees m ON d.manager_id = m.employee_id
JOIN employees e ON d.department_id = e.department_id
WHERE 1 = 1
--AND d.department_id > 100
AND e.salary > (
            -- ê° ë¶€ì„œì˜ í‰ê·  ê¸‰ì—¬ 
            SELECT AVG(e1.salary)
            FROM employees e1
            WHERE e1.department_id = d.department_id
            )
ORDER BY d.department_name, e.salary DESC
;

SELECT d.department_id, d.department_name, d.manager_id, m.last_name AS M_LAST_NAME,
    e.employee_id, e.last_name AS W_LAST_NAME, e.salary
FROM departments d
JOIN employees m ON d.manager_id = m.employee_id
JOIN employees e ON d.department_id = e.department_id
JOIN (
    SELECT department_id, AVG(salary) AS Avg_Salary
    FROM employees 
    GROUP BY department_id
    ) da
ON d.department_id = da.department_id
WHERE e.salary > da.Avg_Salary
ORDER BY d.department_name, e.salary DESC
;
>>>>>>> a1609e248560b6bcfb4c1968aa65c10146a749bc:ex09-quiz2.sql
