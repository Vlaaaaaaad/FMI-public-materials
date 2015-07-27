-- 1. Afişaţi numele departamentelor pentru care suma alocată salariilor depăşeşte valoare medie alocată pe departamente.

SELECT department_name, AVG(salary) dept_cost
FROM employees e, departments d
WHERE e.department_id = d.department_id
GROUP BY department_name
ORDER BY 2;

-- 1. Varianta 1

WITH dept_costuri AS (
        SELECT department_name, SUM(salary) dept_cost
        FROM employees e, departments d
        WHERE e.department_id = d.department_id
        GROUP BY department_name)
SELECT *
FROM dept_costuri
WHERE dept_cost > (SELECT avg(dept_cost) FROM dept_costuri)
ORDER BY department_name;

-- 1. Varianta 2

WITH dept_costuri AS (
        SELECT department_name, SUM(salary) dept_cost
        FROM employees e, departments d
        WHERE e.department_id= d.department_id
        GROUP BY department_name),
medie_cost AS (
        SELECT AVG(dept_cost) medie
        FROM dept_costuri)
SELECT *
FROM dept_costuri, medie_cost
WHERE dept_cost > medie
ORDER BY department_name;

-- 2. Daţi o metodă de rezolvare a cererii anterioare fără să utilizaţi clauza WITH. Verificaţi rezultatul obţinut.

SELECT *
FROM
        (SELECT department_name, SUM(salary) dept_cost
        FROM employees e, departments d
        WHERE e.department_id = d.department_id
        GROUP BY department_name) dept_costuri,
        (SELECT round(AVG(dept_cost), 2) medie
        FROM (SELECT department_name, SUM(salary) dept_cost
        FROM employees e, departments d
        WHERE e.department_id = d.department_id
        GROUP BY department_name
        )) medie_cost
WHERE dept_cost > medie
ORDER BY department_name;

-- 3. Modificaţi cererea anterioară astfel încât să obţineţi acelaşi rezultat ca în cazul punctului 1.


-- 4. Modificaţi cererile de la punctul 1 astfel încât să obţineţi acelaşi rezultat ca în cazul punctului 2.


-- 5. Obțineți numele primilor 5 angajaţi care au cel mai mare salariul (top 5 angajați în funcție de salariu). Studiați cele două alternative de rezolvare. Rezultatul obținut va fi mereu același indiferent de varianta aleasă?

-- 5. Varianta 1

SELECT last_name, job_id, salary
FROM employees e
WHERE 5 > (SELECT COUNT(*)
           FROM employees
           WHERE salary > e.salary)
ORDER BY salary DESC;

-- 5. Varianta 2

SELECT *
FROM (SELECT last_name, job_id, salary
         FROM employees
         ORDER BY salary DESC)
WHERE ROWNUM <= 5;


-- 6. Obţineți top 5 departamente din punct de vedere al numărului de angajaţi.

SELECT department_name
FROM employees
RIGHT OUTER JOIN departments
USING(department_id);

SELECT department_id, department_name
FROM departments
WHERE department_id NOT IN
  ( SELECT department_id
    FROM employees
    WHERE department_id IS NOT NULL);

SELECT *
FROM ( SELECT COUNT (*)
        FROM employees
        GROUP BY department_id
        ORDER BY 1 DESC )
WHERE ROWNUM <= 5;

SELECT *
FROM ( SELECT COUNT (*) "TOP", department_name
        FROM employees
        JOIN departments USING (department_id)
        GROUP BY department_name
        ORDER BY 1 DESC )
WHERE ROWNUM <= 5;

SELECT *
FROM ( SELECT COUNT (*) "NR", department_name
        FROM employees
        JOIN departments USING (department_id)
        GROUP BY department_name
        ORDER BY 1 DESC )
WHERE ROWNUM <= 5;

SELECT *
FROM ( SELECT COUNT (*), department_name
        FROM employees
        JOIN departments USING (department_id)
        GROUP BY department_name
        ORDER BY 1 DESC )
WHERE ROWNUM <= 5;

SELECT *
FROM ( SELECT COUNT (*) "NR.Angajati", department_name
        FROM employees
        JOIN departments USING (department_id)
        GROUP BY department_name
        ORDER BY 1 DESC )
WHERE ROWNUM <= 5;

SELECT a.NR, department_name
FROM ( SELECT COUNT (*) "NR", department_id
        FROM employees

        GROUP BY department_id
        ORDER BY 1 DESC ) a JOIN departments d ON(a.department_id = d.department_id)
WHERE ROWNUM <= 5;

SELECT a."NR an", department_name
FROM ( SELECT COUNT (*) "NR an", department_id
        FROM employees
        GROUP BY department_id
        ORDER BY 1 DESC ) a JOIN departments d ON(a.department_id = d.department_id)
WHERE ROWNUM <= 5;

-- 7. Determinați cele mai prost plătite 3 job-uri, din punct de vedere al mediei salariilor.

SELECT *
FROM ( SELECT ROUND(AVG(salary), 2) "Media Salariilor", job_title
        FROM employees
        JOIN jobs USING (job_id)
        GROUP BY job_title
        ORDER BY 1)
WHERE ROWNUM <= 3;

-- 8. Afişați numele, job-ul şi salariul celor mai prost plătiţi angajaţi din fiecare departament.

-- 8. Fără sincronizare

SELECT last_name, salary, job_id, department_id
FROM employees
WHERE (department_id, salary) IN (SELECT department_id, MIN(salary)
                                   FROM employees
                                   GROUP BY department_id);

-- 8. Cu sincronizare

SELECT last_name, salary, job_id, department_id
FROM employees e
WHERE salary = (SELECT MIN(salary)
                 FROM employees
                 WHERE department_id = e.department_id);


-- 9. Obțineți pentru fiecare job, numele şi salariul angajaţilor care sunt cel mai bine plătiţi pe jobul respectiv. Rezolvați problema cu sincronizare şi fără sincronizare.

SELECT last_name, salary
FROM employees
ORDER BY salary DESC;

SELECT *
FROM (SELECT last_name, salary
      FROM employees
      ORDER BY salary DESC
      )
WHERE ROWNUM < 4;

-- 10. Modificați cererea anterioară astfel încât să afișați pentru fiecare job top 3 angajați din punct de vedere al salariului primit.

SELECT job_id, salary, dense_rank() OVER
               (ORDER BY salary DESC) rang
FROM employees;

SELECT job_id, salary, dense_rank() OVER
               (PARTITION BY job_id ORDER BY salary DESC) rang
FROM employees;

SELECT *
FROM departments;
SELECT *
FROM(
SELECT job_id, salary, dense_rank() OVER
               (PARTITION BY job_id ORDER BY salary DESC) rang
FROM employees
)
WHERE rang <= 3;

-- 11. Obţineți codurile şi numele departamentelor în care nu lucrează nimeni. Pentru rezolvare utilizați operatorul NOT IN.

SELECT department_name
FROM employees
LEFT OUTER JOIN departments USING(department_id);

SELECT department_id, department_name
FROM departments
WHERE department_id NOT IN ( SELECT department_id
                             FROM employees
                             WHERE department_id IS NOT NULL);

SELECT department_name
FROM employees
RIGHT OUTER JOIN departments USING(department_id);

-- 12. Determinați salariaţii care nu au subordonaţi.

SELECT *
FROM employees
START WITH employee_id = 100 CONNECT BY manager_id = employee_id;

SELECT *
FROM employees
START WITH employee_id = 100 CONNECT BY PRIOR manager_id = employee_id;

SELECT *
FROM employees
START WITH employee_id = 100 CONNECT BY manager_id = PRIOR employee_id;

SELECT manager_id
FROM employees;

SELECT last_name
FROM employees
WHERE employee_id NOT IN (SELECT NVL(manager_id, 110)
                          FROM employees);

SELECT last_name
FROM employees
WHERE employee_id NOT IN (SELECT NVL(manager_id, 0)
                          FROM employees);

SELECT last_name, level
FROM employees
START WITH employee_id = 100 CONNECT BY manager_id = PRIOR employee_id;

SELECT last_name
FROM employees
MINUS(
SELECT last_name
FROM employees
WHERE employee_id NOT IN (SELECT manager_id
                           FROM employees
                           WHERE manager_id IS NOT NULL
                          ));

SELECT last_name
FROM employees
WHERE employee_id NOT IN (SELECT manager_id
                           FROM employees);

SELECT last_name
FROM employees
MINUS( SELECT last_name
       FROM employees
       WHERE employee_id NOT IN (SELECT manager_id
                                  FROM employees
                                ));

SELECT last_name
FROM employees
WHERE employee_id NOT IN (SELECT manager_id
                           FROM employees
                           WHERE manager_id IS NOT NULL);

SELECT COUNT(manager_id)
FROM employees;

SELECT COUNT(DISTINCT manager_id)
FROM employees;

-- 13. Folosind operatorul ALL, afişaţi angajaţii care câştigă mai mult decât oricare funcţionar (CLERK). Ce rezultat este obținut dacă se înlocuieşte ALL cu ANY?

SELECT last_name
FROM employees
WHERE salary >= ALL (
    SELECT salary
    FROM employees);

SELECT last_name
FROM employees
MINUS (SELECT last_name
       FROM employees);

SELECT last_name
FROM employees
WHERE salary >= ALL (
    SELECT salary
    FROM employees);

SELECT last_name
FROM employees
WHERE salary >= ALL (
    SELECT salary
    FROM employees
    WHERE job_id LIKE 'CLERK');

SELECT salary
FROM employees
WHERE job_id LIKE '%CLERK';

SELECT last_name
FROM employees
WHERE salary >= ALL (
    SELECT salary
    FROM employees
    WHERE job_id LIKE '%CLERK');

-- 14. Afişați numele şi salariul angajaţilor al căror salariu este mai mare decât salariile medii din toate departamentele. Rezolvați problema în două variante.

SELECT last_name, salary
FROM employees
WHERE salary > ALL(SELECT AVG(salary)
                    FROM employees
                    GROUP BY department_id);

SELECT AVG(salary)
FROM employees
GROUP BY department_id
ORDER BY 1;

SELECT last_name, salary
FROM employees
WHERE salary > ANY(SELECT AVG(salary)
                    FROM employees
                    GROUP BY department_id);

SELECT last_name, salary
FROM employees
WHERE salary > ALL(SELECT AVG(salary)
                    FROM employees
                    GROUP BY department_id);

SELECT last_name, salary
FROM employees;

SELECT *
FROM employees;

SELECT AVG(salary)
FROM employees
GROUP BY department_id;

SELECT last_name, salary
FROM employees
WHERE salary > (SELECT MAX(AVG(salary))
                 FROM employees
                 GROUP BY department_id);

SELECT *
FROM employees
--WHERE
SELECT last_name, salary
FROM employees
WHERE salary IN(SELECT AVG(salary)
                 FROM employees
                 GROUP BY department_id);

--ex15
SELECT last_name
FROM employees
--JOIN job_history
WHERE MONTHS_BETWEEN(SYSDATE, hire_date) >= ALL(SELECT AVG(MONTHS_BETWEEN(SYSDATE, hire_date))
                                                 FROM employees
                                                 GROUP BY department_id);

SELECT *
FROM employees
LEFT OUTER JOIN departments USING (department_id);

SELECT *
FROM employees
RIGHT OUTER JOIN departments USING (department_id);

SELECT MAX(MONTHS_BETWEEN(SYSDATE, hire_date))
FROM employees
GROUP BY NVL(department_id, 0);

SELECT MAX(MONTHS_BETWEEN(SYSDATE, hire_date))
FROM employees
GROUP BY department_id;

SELECT last_name
FROM employees
--JOIN job_history
WHERE MONTHS_BETWEEN(SYSDATE, hire_date) >= ALL(SELECT MAX(MONTHS_BETWEEN(SYSDATE, hire_date))
                                                 FROM employees
                                                 GROUP BY department_id);

SELECT MAX(MONTHS_BETWEEN(SYSDATE, hire_date))
FROM employees
GROUP BY department_id;

SELECT last_name, department_id
FROM employees d
WHERE MONTHS_BETWEEN(SYSDATE, hire_date) >= (SELECT MAX(MONTHS_BETWEEN(SYSDATE, hire_date))
                                              FROM employees e
                                              WHERE d.department_id = e.department_id
                                              GROUP BY department_id);

SELECT last_name, department_id
FROM employees
WHERE MONTHS_BETWEEN(SYSDATE, hire_date) >= (SELECT MAX(MONTHS_BETWEEN(SYSDATE, hire_date))
                                              FROM employees e
                                              WHERE employees.department_id = e.department_id
                                              GROUP BY department_id);

SELECT last_name, department_id d
FROM employees
WHERE MONTHS_BETWEEN(SYSDATE, hire_date) >= (SELECT MAX(MONTHS_BETWEEN(SYSDATE, hire_date))
                                              FROM employees e
                                              WHERE employees.department_id = e.department_id
                                              GROUP BY department_id);

SELECT last_name, department_id
FROM employees
WHERE MONTHS_BETWEEN(SYSDATE, hire_date) >= (SELECT MAX(MONTHS_BETWEEN(SYSDATE, hire_date))
                                              FROM employees e
                                              WHERE employees.department_id = e.department_id
                                              GROUP BY department_id);

SELECT first_name, last_name, department_id
FROM employees
WHERE MONTHS_BETWEEN(SYSDATE, hire_date) >= (SELECT MAX(MONTHS_BETWEEN(SYSDATE, hire_date))
                                              FROM employees e
                                              WHERE employees.department_id = e.department_id
                                              GROUP BY department_id);

SELECT DISTINCT department_id FROM employees;

-- 15. Obţineți numele salariaților care cea mai mare vechime în fiecare departament.
-- 16. Rezolvați exercițiul anterior ținând cont de vechimea cumulată în timp (se ține cont și de istoric).

SELECT e.last_name, e.employee_id, e.department_id, round(sysdate - nvl(data, hire_date) + nvl(nr_zile, 0)) vechime
FROM employees e, (SELECT employee_id, max(end_date) data
                    FROM job_history
                    GROUP BY employee_id) j1,
       (SELECT employee_id, department_id, sum(end_date - start_date) nr_zile
        FROM job_history
        GROUP BY employee_id, department_id) j2
WHERE e.employee_id = j1.employee_id(+)
AND e.employee_id = j2.employee_id(+)
AND e.department_id = j2.department_id(+)
ORDER BY 2;

-- 17. Obţineți numele salariaţilor care lucrează într-un departament în care există cel puţin 2 angajaţi cu salariul în grila de salarizare 1.

SELECT last_name
FROM employees e,
(
        SELECT COUNT(employee_id), department_id
        FROM employees, job_grades
        WHERE grade_level = 1 AND salary > lowest_sal AND salary < highest_sal
        GROUP BY department_id
        HAVING COUNT(employee_id) >= 2
        ORDER BY 1
) e2
WHERE e.department_id = e2.department_id;

-- 18. Obțineți numărul total de angajaţi ai companiei, respectiv numărul celor care au fost angajaţi în anul 1997. Afișați informațiile cerute în următoarea formă:

-- 18. pe linii

(SELECT 'Numar total: ' || COUNT(*) "Numar"
FROM employees)
UNION
        (SELECT 'Numar 1997: ' || COUNT(*)
        FROM employees
        WHERE TO_CHAR(hire_date, 'YYYY') = 1997);

-- 18. pe coloane

SELECT
(
  SELECT COUNT(*) FROM employees
) "Numar total",
(
        SELECT COUNT(*)
        FROM employees
        WHERE TO_CHAR(hire_date, 'YYYY') = 1997
) "Numar 1997"
FROM employees
WHERE ROWNUM = 1;

-- sau

SELECT COUNT(*) "Numar total", SUM(DECODE(TO_CHAR(hire_date, 'yyyy'), 1997, 1, 0)) "Numar 1997"
FROM employees;

-- 19. Folosind operatorul UNION afişaţi codul departamentelor, codul job-urilor şi valoarea medie a salariilor, pentru:
--      -  fiecare departament şi, în cadrul său pentru fiecare job;
--      -  fiecare departament (indiferent de job);
--      -  fiecare job(indiferent de departament);
--      -  întreg tabelul.

SELECT ROUND(AVG(salary), 2)
FROM employees
GROUP BY department_id, job_id
UNION
        SELECT ROUND(AVG(salary), 2)
        FROM employees
        GROUP BY job_id;

SELECT DISTINCT e.department_id, e.job_id, a.nr
FROM employees e,
(SELECT department_id, job_id, COUNT(*) nr FROM employees GROUP BY department_id, job_id) a
WHERE e.department_id = a.department_id AND e.job_id = a.job_id
UNION
        SELECT DISTINCT e.department_id, '-1', a.nr
        FROM employees e,
        (SELECT department_id, COUNT(*) nr FROM employees GROUP BY department_id) a
        WHERE e.department_id = a.department_id
UNION
        SELECT DISTINCT -1, e.job_id, a.nr
        FROM employees e,
        (SELECT job_id, COUNT(*) nr FROM employees GROUP BY job_id) a
        WHERE e.job_id = a.job_id
UNION
        SELECT DISTINCT -1, '-1', a.nr
        FROM employees e,
        (SELECT COUNT(*) nr FROM employees) a;
        --WHERE e.department_id=a.department_id

-- sau

SELECT job_id, department_id, COUNT(*)
FROM employees
GROUP BY job_id, department_id
UNION
        SELECT job_id, -1, COUNT(*)
        FROM employees
        GROUP BY job_id
UNION
        SELECT 'Nimic', department_id, COUNT(*)
        FROM employees
        GROUP BY department_id
UNION
                SELECT 'Nimic', -1, COUNT(*)
                FROM employees;

-- 20. Pentru fiecare angajat obțineți următoarele informații despre job-ul prezent, respectiv joburile sale anterioare: numele job-ului, numele departamentului, respectiv data la care a început să lucreze pe job-ul respectiv. Ordonaţi rezultatul după codul angajatului.

SELECT employee_id, job_title, department_name, hire_date "Data"
FROM employees
JOIN jobs USING(job_id)
JOIN departments USING(department_id)
UNION
        SELECT employee_id, job_title, department_name, start_date
        FROM employees
        JOIN jobs USING(job_id)
        JOIN departments USING(department_id)
        JOIN job_history USING(employee_id);


-- 21. Folosind operatorul INTERSECT, obțineți angajaţii care au salariul cel mult 3000 şi lucrează în departamentul 50.

SELECT employee_id, last_name
FROM employees
WHERE salary < 3000
INTERSECT
        SELECT employee_id, last_name
        FROM employees
        WHERE department_id = 50;

-- 22. Obţineți codul, job-ul şi departamentul angajaţilor care în trecut au mai lucrat pe acelaşi job şi în acelaşi departament ca în prezent. Utilizaţi operatorul INTERSECT.

SELECT employee_id, job_id, department_id
FROM employees
INTERSECT
        SELECT employees.employee_id, employees.job_id, employees.department_id
        FROM employees
        JOIN job_history ON(employees.employee_id = job_history.employee_id)
        WHERE employees.job_id = job_history.job_id
             AND employees.department_id = job_history.department_id;

-- 23. Modificaţi cererea anterioară astfel încât să obţineţi numele angajaţilor care îndeplinesc condiţia impusă.

SELECT employee_id, last_name, job_id, department_id
FROM employees
INTERSECT
        SELECT employees.employee_id, employees.last_name, employees.job_id, employees.department_id
        FROM employees
        JOIN job_history ON(employees.employee_id = job_history.employee_id)
        WHERE employees.job_id = job_history.job_id
             AND employees.department_id = job_history.department_id;

-- 24. Afişați codurile departamentelor care nu au angajaţi, implementând operatorul MINUS.

SELECT department_id
FROM departments
MINUS
        SELECT DISTINCT department_id
        FROM employees;

-- 25. Obţineți codurile angajaţilor care nu au avut joburi anterioare
-- 25. a) utilizând operatorul MINUS;

SELECT employee_id
FROM employees
MINUS
        SELECT employees.employee_id
        FROM employees
        JOIN job_history ON(employees.employee_id = job_history.employee_id);

-- 25. b) utilizând operatorul NOT IN.

SELECT employee_id
FROM employees
WHERE employee_id NOT IN(SELECT employees.employee_id
                          FROM employees
                          JOIN job_history ON(employees.employee_id = job_history.employee_id));

-- 26. Obţineți codul, job-ul şi departamentul angajaţilor care în trecut au lucrat pe alte joburi sau în alte departamente faţă de prezent. Utilizaţi operatorul MINUS.

SELECT employee_id, last_name, job_id, department_id
FROM employees
MINUS
        SELECT employees.employee_id, employees.last_name, employees.job_id, employees.department_id
        FROM employees
        JOIN job_history ON(employees.employee_id = job_history.employee_id)
        WHERE employees.job_id = job_history.job_id OR employees.department_id = job_history.department_id;

-- 27. a) Determinați codurile locaţiilor în care nu există departamente. Utilizaţi operatorul MINUS.

SELECT location_id
FROM locations
MINUS
        SELECT location_id
        FROM departments;

-- 27. b) Daţi o altă metodă de rezolvare.
SELECT location_id
FROM locations
WHERE location_id NOT IN
                        (SELECT location_id
                        FROM departments);

-- 27. c) Modificați cererile anterioare astfel încât să obțineți orașele în care nu funcționează departamente.

SELECT location_id, city
FROM locations
MINUS
        SELECT location_id, city
        FROM departments
        JOIN locations USING(location_id);
