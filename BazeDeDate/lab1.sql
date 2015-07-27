-- 35. Afişaţi numele şi prenumele salariaţilor angajaţi în luna iunie 1987.

SELECT distinct employee_id
FROM job_history
ORDER BY employee_id DESC;

SELECT employee_id
FROM job_history
ORDER BY employee_id;

SELECT first_name, last_name
FROM employees
WHERE TO_CHAR(hire_date, 'MON YYYY') = 'JUN 1987';

SELECT *
FROM employees
WHERE last_name = 'King';

SELECT first_name, last_name
FROM employees
WHERE TO_CHAR(hire_date, 'MON YYYY') = 'Jun 1987';

SELECT distinct department_id
FROM employees
WHERE department_id IS NOT NULL;

SELECT distinct department_id
from employees;

SELECT department_name
FROM departments
WHERE location_id = 1700 AND manager_id IS NOT NULL;

-- 36. Listaţi codurile angajaţilor care au avut şi alte joburi faţă de cel prezent. Ordonaţi rezultatul descrescător după codul angajatului.

SELECT distinct employee_id
FROM job_history
ORDER BY employee_id DESC;

-- 37. Afişaţi numele şi data angajării pentru cei care lucrează în departamentul 80 şi au fost angajaţi în lunamartie a anului 1997.

SELECT first_name, last_name, hire_date
FROM employees
WHERE department_id = 80 AND TO_CHAR(hire_date, 'MON YYYY') = 'MAR 1997';

-- 38. Afişaţi numele joburilor care permit un salariu mai mare de 8000$.

SELECT job_title
FROM jobs
WHERE min_salary >= 8000;

-- 39. Care este grila de salarizare a unui salariu de 10000$?

SELECT grade_level
FROM job_grades
WHERE lowest_sal = 10000 OR highest_sal = 10000;

-- 40. Listaţi numele tuturor angajaţilor al căror nume conţine 2 litere 'L'.

SELECT last_name
FROM employees
WHERE last_name LIKE '%l%l%';

-- 41. Afişaţi informaţii complete despre subordonaţii direcţi ai angajatului având codul 123.

SELECT *
FROM employees
WHERE manager_id = 123;

-- 42. Afişaţi numele, salariul, comisionul şi venitul lunar total pentru toţi angajaţii care câştigă comision, dar un comision care nu depăşeşte 25% din salariu.

SELECT last_name, salary, commission_pct, salary + commission_pct * salary AS "Venit lunar"
FROM employees
WHERE commission_pct IS NOT NULL AND commission_pct <= (25 / 100) * salary;
