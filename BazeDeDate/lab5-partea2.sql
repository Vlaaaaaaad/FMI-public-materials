-- 1. Determinaţi numele şi codul angajaţilor care câştigă mai mult decât angajatul având codul 200.
-- 1. Varianta 1 - Forma relaţională

SELECT a.employee_id, a.last_name
FROM employees a, employees b
WHERE a.salary > b.salary
AND b.employee_id = 200;

-- 1. Varianta 2 - Forma procedurală

SELECT employee_id, last_name
FROM employees e
WHERE EXISTS (SELECT 1
               FROM employees
               WHERE employee_id = 200
               AND e.salary > salary);


-- 2. Daţi o altă metodă de rezolvare pentru problema anterioară, utilizând subcereri şi operatorul „>”.

SELECT employee_id, last_name
FROM employees
WHERE salary > (SELECT salary
                FROM employees
                WHERE employee_id = 200);

SELECT employee_id, last_name
FROM employees,
        (SELECT salary s
         FROM employees
         WHERE employee_id = 200) a
WHERE salary > a.s;

-- 3. Folosind operatorul EXISTS determinaţi numele departamentelor în care lucrează cel puţin un angajat.

SELECT department_id, department_name
FROM departments d
WHERE EXISTS (SELECT 'x'
              FROM employees
              WHERE department_id = d.department_id);

-- 4. Daţi o altă metodă de rezolvare pentru problema anterioară, utilizând subcereri şi operatorul IN.

SELECT d.department_id, d.department_name
FROM departments d,
        (SELECT department_id, COUNT(*) nr
        FROM employees
        WHERE department_id IS NOT NULL
        GROUP BY department_id
        ) a
WHERE a.nr > 0 AND d.department_id = a.department_id;

-- 4. cu IN

SELECT department_id, department_name
FROM departments
WHERE department_id IN (
        SELECT d.department_id
        FROM departments d,
                (SELECT department_id, COUNT(*) nr
                FROM employees
                WHERE department_id IS NOT NULL
                GROUP BY department_id
                ) a
        WHERE a.nr > 0 AND d.department_id = a.department_id);

-- 5. Folosind operatorul EXISTS determinaţi codul şi numele departamentelor în care nu lucrează nimeni.

SELECT department_id, department_name
FROM departments
WHERE NOT EXISTS (SELECT COUNT(*)
                   FROM employees
                   GROUP BY department_id );


SELECT department_id, department_name
FROM departments
WHERE NOT EXISTS (SELECT DISTINCT department_id
                   FROM employees);

-- 6. Afişaţi codul locaţiei şi oraşul în care nu funcţionează departamente, utilizând:
-- 6. a) NOT IN;

SELECT location_id, city
FROM locations
WHERE location_id NOT IN (SELECT location_id
                           FROM departments);

-- 6. b) MINUS;

SELECT location_id, city
FROM locations
MINUS
        SELECT location_id, city
        FROM departments
        JOIN locations USING(location_id);

-- 6. c) NOT EXISTS;

SELECT location_id, city
FROM locations l
WHERE NOT EXISTS(SELECT location_id
                  FROM departments
                  WHERE location_id = l.location_id);

-- 6. d) Outer Join.

SELECT l.location_id, d.location_id, city
FROM locations l
FULL OUTER JOIN departments d ON (d.location_id = l.location_id)
MINUS
        SELECT l.location_id, d.location_id, city
        FROM locations l
        JOIN departments d ON (d.location_id = l.location_id);

-- 7. Determinaţi numele angajaţilor care au lucrat cel puţin la aceleaşi proiecte ca şi angajatul având codul 202 (au lucrat la toate proiectele la care a lucrat angajatul 202 şi eventual la alte proiecte).

SELECT DISTINCT e.employee_id, last_name
FROM employees e
JOIN work w0 ON (e.employee_id = w0.employee_id)
WHERE NOT EXISTS (SELECT 1
                  FROM work
                  WHERE employee_id = 202
                  MINUS
                          SELECT 1
                          FROM work w
                          WHERE w0.project_id = w.project_id );

-- 8. Determinaţi numele angajaţilor care au lucrat cel mult la aceleaşi proiecte ca şi angajatul având codul 202.

SELECT DISTINCT e.employee_id, last_name
FROM employees e
JOIN work w0 ON (e.employee_id = w0.employee_id)
WHERE NOT EXISTS (SELECT 'X'
                  FROM work w
                  WHERE w0.project_id = w.project_id
                  MINUS
                          SELECT 'X'
                          FROM work
                          WHERE employee_id = 202);

-- 9. Determinaţi numele angajaţilor care au lucrat exact la aceleaşi proiecte ca şi angajatul având codul 202.

SELECT DISTINCT e.employee_id, last_name
FROM employees e
JOIN work w0 ON (e.employee_id = w0.employee_id)
WHERE NOT EXISTS (SELECT 'X'
                  FROM work w
                  WHERE w0.project_id = w.project_id
                  MINUS
                          SELECT 'X'
                          FROM work
                          WHERE employee_id = 202)
AND NOT EXISTS (SELECT 1
                  FROM work
                  WHERE employee_id = 202
                  MINUS
                          SELECT 1
                          FROM work w
                          WHERE w0.project_id = w.project_id )
AND e.employee_id != 202;

-- 10. Afişaţi codul şi numele proiectelor la care au lucrat toţi angajaţii din departamentul 20.
-- 10. Varianta 1

SELECT p.project_id, project_name
FROM projects p, work w
WHERE p.project_id = w.project_id
AND employee_id IN (SELECT employee_id
                     FROM employees
                     WHERE department_id = 20)
GROUP BY p.project_id, project_name
HAVING COUNT(*) = (SELECT COUNT(*)
                    FROM employees
                    WHERE department_id = 20);

-- 10. Varianta 2

SELECT DISTINCT p.project_id, project_name
FROM   projects p, work w
WHERE  p.project_id = w.project_id
AND NOT EXISTS (SELECT 'X'
                FROM employees e
                WHERE department_id = 20
                AND NOT EXISTS (SELECT 'X'
                                FROM work w1
                                WHERE e.employee_id = w1.employee_id
                                AND w.project_i d = w1.project_id));

-- 11. Afişaţi codul angajaţilor care au lucrat la toate proiectele care au început în anul 1999.

SELECT DISTINCT e.employee_id
FROM
employees e
--WHERE p.project_id = w.project_id
WHERE NOT EXISTS (SELECT 'X'
                   FROM
                   projects p
                   WHERE TO_CHAR(START_DATE, 'YYYY') = 1999
                   AND NOT EXISTS (SELECT 'X'
                                    FROM
                                    work w1
                                    WHERE e.employee_id = w1.employee_id
                                    AND w1.project_id = p.project_id));

-- 12. Obţineţi ierarhia subaltern-şef. Se vor afişa codul şi numele angajatului însoţit de codul managerului său. De asemenea, se va afişa şi nivelul din ierarhie.

SELECT LEVEL, employee_id, last_name, manager_id
FROM employees
CONNECT BY PRIOR manager_id = employee_id;

-- 13. Obţineţi ierarhia subaltern-şef, considerând ca rădăcină angajatul având codul 103. Se vor afişa codul şi numele angajatului însoţit de codul managerului său. De asemenea, se va afişa şi nivelul din ierarhie.

SELECT LEVEL, employee_id, last_name, manager_id
FROM employees
START WITH employee_id = 103
CONNECT BY PRIOR manager_id = employee_id;

-- 14. Obţineţi ierarhia şef-subaltern, considerând ca rădăcină angajatul având codul 103. Se vor afişa codul şi numele angajatului însoţit de codul managerului său.

SELECT LEVEL, employee_id, last_name, manager_id
FROM employees
CONNECT BY manager_id = PRIOR employee_id;

-- 15. Obţineţi ierarhia subaltern-şef, considerând ca rădăcină angajatul al cărui salariu este minim. Se vor afişa codul şi numele angajatului însoţit de codul managerului său.

SELECT LEVEL, employee_id, last_name, manager_id
FROM employees
START WITH salary = (SELECT MIN(salary)
                      FROM employees
                     )
CONNECT BY employee_id = PRIOR manager_id;


-- 16. Afişaţi ierarhia subaltern-şef, considerând ca rădăcină angajatul al cărui cod este 206. Să se afişeze codul, numele şi salariul angajatului însoţit de codul managerului său, pentru angajaţii al căror salariu este mai mare decât 15000. Verificaţi şi comentaţi rezultatul obţinut în cazul în care:

-- 16. a) condiţia salary > 15000 apare în clauza WHERE;

SELECT LEVEL, employee_id, last_name, salary, manager_id
FROM employees
WHERE salary > 15000
START WITH employee_id = 206
CONNECT BY employee_id = PRIOR manager_id;

-- 16. b) condiţia salary > 15000 apare în clauza CONNECT BY.
SELECT LEVEL, employee_id, last_name, salary, manager_id
FROM employees
START WITH employee_id = 206
CONNECT BY employee_id = PRIOR manager_id AND salary > 15000;



-- 17. Afişaţi codul, numele, data angajării, salariul şi managerul pentru:
-- 17. a) subalternii direcţi ai lui De Haan;

SELECT LEVEL, employee_id, last_name, salary, hire_date, manager_id
FROM employees
WHERE LEVEL = 2
START WITH UPPER(last_name) = 'DE HAAN'
CONNECT BY PRIOR employee_id = manager_id;

-- 17. b) şeful direct al lui De Haan;

SELECT LEVEL, employee_id, last_name, salary, hire_date, manager_id
FROM employees
WHERE LEVEL = 2
START WITH UPPER(last_name) = 'DE HAAN'
CONNECT BY employee_id = PRIOR manager_id;

-- 17. c) ierarhia şef-subaltern care începe de la De Haan;

SELECT LEVEL, employee_id, last_name, salary, hire_date, manager_id
FROM employees
START WITH UPPER(last_name) = 'DE HAAN'
CONNECT BY PRIOR employee_id = manager_id;

-- 17. d) angajaţii conduşi de subalternii lui De Haan;

SELECT LEVEL, employee_id, last_name, salary, hire_date, manager_id
FROM employees
WHERE LEVEL = 3
START WITH UPPER(last_name) = 'DE HAAN'
CONNECT BY PRIOR employee_id = manager_id;

-- 17. e) ierarhia subaltern-şef pentru Hunold;

SELECT LEVEL, employee_id, last_name, salary, hire_date, manager_id
FROM employees
START WITH UPPER(last_name) = 'HUNOLD'
CONNECT BY employee_id = PRIOR manager_id;

-- 17. f) superiorul şefului direct al lui Hunold.

SELECT LEVEL, employee_id, last_name, salary, hire_date, manager_id
FROM employees
WHERE LEVEL = 3
START WITH UPPER(last_name) = 'HUNOLD'
CONNECT BY employee_id = PRIOR manager_id;

-- 18. Câţi şefi pe linie ierarhică are angajatul 107?

SELECT COUNT(DISTINCT LEVEL) - 1
FROM employees
START WITH employee_id = 107
CONNECT BY employee_id = PRIOR manager_id;

-- sau

SELECT COUNT(*) - 1
FROM (SELECT LEVEL, employee_id
      FROM employees
      START WITH employee_id = 107
      CONNECT BY employee_id = PRIOR manager_id
      );

-- 19. Obţineţi ierarhia subaltern-şef pentru toţi managerii de departamente.

SELECT LEVEL, employee_id, last_name, salary, hire_date, manager_id
FROM employees
START WITH employee_id IN (SELECT manager_id
                            FROM departments
                          )
CONNECT BY PRIOR employee_id = manager_id;

-- 20. Pentru fiecare angajat determinaţi nivelul său ierarhic în companie.

SELECT LEVEL, employee_id, last_name
FROM employees
START WITH employee_id = 100
CONNECT BY PRIOR employee_id = manager_id;

-- 21. Obţineţi nivelul ierarhic în companie al şefilor de departamente.

SELECT LEVEL, employee_id, last_name
FROM employees
WHERE employee_id IN (SELECT manager_id
                      FROM departments
                      )
START WITH employee_id = 100
CONNECT BY PRIOR employee_id = manager_id;
