SELECT last_name,ROUND(MONTHS_BETWEEN(sysdate,hire_date)) AS "MONTHS_WORKED"
FROM employees
ORDER BY hire_date DESC
/
