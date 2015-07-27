-- 1. Afişaţi cel mai mare salariu, cel mai mic salariu, suma şi media salariilor tuturor angajaţilor. Etichetaţi coloanele Maxim, Minim, Suma, respectiv Media.

SELECT MIN(salary) min, MAX(salary) max,
       SUM(salary) suma, ROUND(AVG(salary)) media
FROM   employees;

-- 2. Utilizând funcţia grup COUNT determinaţi:
--     a. numărul total de angajaţi;
--     b. numărul de angajaţi care au manager;
--     c. numărul de manageri.

SELECT job_id, COUNT(employee_id)
FROM employees
group by job_id;

SELECT employee_id
FROM employees
WHERE department_id = 20;

SELECT COUNT(*)
FROM employees
WHERE manager_id IS NOT NULL;

SELECT COUNT(manager_id)
FROM departments
WHERE manager_id IS NOT NULL;

-- 3. Afişaţi diferenţa dintre cel mai mare şi cel mai mic salariu. Etichetaţi coloana “Diferenta”.

SELECT MAX(salary) - MIN(salary) "Diferenta"
FROM employees;

-- 4. Obţineţi numărul de angajaţi din departamentul având codul 50.

SELECT COUNT(employee_id)
FROM employees
WHERE department_id = 50;

-- 5. Câţi angajaţi din departamentul 80 câştigă comision?

SELECT COUNT(employee_id)
FROM employees
WHERE commission_pct IS NOT NULL AND department_id = 80;

-- 6. Determinaţi valoarea medie şi suma salariilor pentru toţi angajaţii care sunt reprezentanţi de vânzări (codul jobului este SA_MAN, SA_REP).

SELECT AVG(salary), SUM(salary)
FROM employees
WHERE job_id IN ('SA_MAN', 'SA_REP');

-- 7. a. Selectaţi data angajării primei persoane care a fost angajată de companie (ţinând cont şi de istoricul angajaţilor).

SELECT MIN(hire_date), MIN(start_date)
FROM employees
JOIN job_history USING(employee_id);

SELECT last_name, MIN(hire_date)
FROM employees
GROUP BY last_name
ORDER BY last_name;

SELECT last_name
FROM employees
WHERE hire_date = (SELECT MIN(hire_date) FROM employees);

SELECT last_name
FROM employees e, job_history jh
WHERE e.employee_id = jh.employee_id
     AND start_date = (SELECT MIN(start_date) FROM job_history);

SELECT LEAST(MIN(hire_date), MIN(start_date))
FROM employees
JOIN job_history USING(employee_id);

SELECT *
FROM employees
JOIN job_history USING(employee_id);

SELECT MIN(DATA)
FROM
        (SELECT MIN(hire_date) "DATA"
          FROM employees
         UNION
                (SELECT MIN(start_date) "DATA"
                  FROM employees
                  JOIN job_history USING(employee_id)
                )
);

-- 7. b. Selectaţi numele persoanelor care au fost angajate primele în companie.

SELECT last_name, MIN(DATA)
FROM
        (SELECT last_name, MIN(hire_date) "DATA"
        FROM employees GROUP BY last_name
        UNION
                (SELECT last_name, MIN(start_date) "DATA"
                  FROM employees
                  JOIN job_history USING(employee_id) GROUP BY last_name)
        )
GROUP BY last_name
ORDER BY MIN(DATA);

SELECT SALARY
FROM EMPLOYEES
ORDER BY salary;

SELECT *
FROM
        (SELECT SALARY
        FROM employees
        ORDER BY salary DESC)
WHERE ROWNUM<5;

SELECT *
FROM
        (SELECT last_name, MIN(DATA)
        FROM
                (SELECT last_name, MIN(hire_date) "DATA"
                  FROM employees GROUP BY last_name
                 UNION
                        (SELECT last_name,MIN(start_date) "DATA"
                          FROM employees
                          JOIN job_history USING(employee_id) GROUP BY last_name)
                )
        GROUP BY last_name
        ORDER BY MIN(DATA)
        )
WHERE ROWNUM < 6;

-- 8. Afişaţi numărul de angajaţi pentru fiecare job.

SELECT job_id, COUNT(employee_id) nr_angajati
FROM employees
GROUP BY job_id;

SELECT job_id, AVG(salary) media
FROM employees
GROUP BY job_id
ORDER BY 2;

-- 9. Afişaţi minimul, maximul, suma şi media salariilor pentru fiecare departament.

SELECT department_id, MIN(salary), MAX(salary), SUM(salary), ROUND(AVG(salary), 2)
FROM employees
GROUP BY department_id;

-- 10. Afişaţi codul departamentului şi media salariilor pentru fiecare job din cadrul acestuia.

SELECT department_id, job_id, AVG(salary)
FROM employees
GROUP BY department_id, job_id;

SELECT department_id, job_id, ROUND(AVG(salary), 2)
FROM employees
GROUP BY department_id, job_id
ORDER BY department_id;

-- 11. a. Afişaţi codul departamentelor pentru care salariul minim depăşeşte 5000$.

SELECT department_id, MIN(salary)
FROM employees
GROUP BY department_id
HAVING MIN(salary) > 5000;

-- 11. b. Modificaţi cererea anterioară astfel încât să afişaţi numele acestor departamente.

SELECT MIN(salary), department_name
FROM employees
JOIN departments USING (department_id)
GROUP BY department_name
HAVING MIN(salary) > 5000;

-- 11. c. Modificaţi cererea anterioară astfel încât să afişaţi şi oraşul în care funcţionează departamentele.

SELECT MIN(salary), department_name, city
FROM employees
JOIN departments USING (department_id)
JOIN locations USING (location_id)
GROUP BY department_name, city
HAVING MIN(salary) > 5000;

-- 12. Obţineţi codul departamentelor şi numărul de angajaţi al acestora pentru departamentele în care lucrează cel puţin 10 angajaţi.

SELECT department_id, COUNT(employee_id)
FROM employees
GROUP BY department_id
HAVING COUNT(employee_id) > 10;

-- 13. Câte departamente au cel puţin 10 angajaţi?

SELECT COUNT(COUNT(employee_id))
FROM employees
GROUP BY department_id
HAVING COUNT(*) >= 10;

-- 14. Obţineţi codul departamentelor şi suma salariilor angajaţilor care lucrează în acestea, în ordine crescătoare după suma salariilor. Se consideră angajaţii care au comision şi departamentele care au mai mult de 5 angajaţi.

SELECT department_id, SUM(salary)
FROM employees
WHERE commission_pct IS NOT NULL
GROUP BY department_id
HAVING COUNT(employee_id) > 5
ORDER BY SUM(salary);

-- sau

SELECT department_id, SUM(salary)
FROM employees
WHERE commission_pct IS NOT NULL
        AND department_id IN
                (SELECT department_id
                  FROM employees
                  GROUP BY department_id
                  HAVING COUNT(*) > 5
                )
GROUP BY department_id
ORDER BY SUM(salary);

-- 15. Determinaţi numele angajaţilor care au mai avut cel puţin două joburi.

SELECT last_name, employee_id
FROM employees e
JOIN job_history j USING(employee_id)
GROUP BY employee_id, last_name
HAVING COUNT(j.job_id) > 1;

-- 16. Afişaţi job-ul pentru care salariul mediu este minim.

SELECT MIN(AVG(salary))
FROM employees
GROUP BY job_id;

SELECT job_id
FROM employees
GROUP BY job_id
HAVING AVG(salary) = (SELECT MIN(AVG(salary))
                       FROM employees
                       GROUP BY job_id);

-- 17. Afişaţi cel mai mare dintre salariile medii pe departamente.

SELECT department_id
FROM employees
GROUP BY department_id
HAVING AVG(salary) = (SELECT MAX(AVG(salary))
                       FROM employees
                       GROUP BY department_id
                      );

-- 18. a. Afişaţi codul, numele departamentului şi suma salariilor pe departamente.

SELECT d.department_id, department_name, a.suma
FROM departments d, (SELECT department_id ,SUM(salary) suma
                      FROM employees
                      GROUP BY department_id) a
WHERE d.department_id =a.department_id;

-- 18. b. Daţi o altă metodă de rezolvare a acestei probleme.

SELECT d.department_id, department_name, SUM(salary)
FROM departments d
JOIN employees e ON (e.department_id = d.department_id)
GROUP BY d.department_id, department_name;

-- 19. a. Scrieţi o cerere pentru a afişa numele departamentului, numărul de angajaţi şi salariul mediu pentru angajaţii din acel departament. Coloanele vor fi etichetate Departament, Nr. angajati, Salariu Mediu.

SELECT department_name "Departament ",
       (SELECT COUNT(employee_id)
         FROM employees
         WHERE department_id = d.department_id ) "Nr. angajati",
       (SELECT AVG(salary)
         FROM employees
         WHERE department_id = d.department_id) "Salariu mediu"
FROM departments d;

-- 19. b. Daţi o altă metodă de rezolvare pentru problema anterioară.

SELECT department_name "Departament", COUNT(d.department_id) AS "Nr. angajati", ROUND(AVG(salary), 2) AS "Salariu mediu"
FROM departments d, employees e
WHERE d.department_id = e.department_id
GROUP BY department_name;

--20. a. Scrieţi o cerere pentru a afişa job-ul, salariul total pentru job-ul respectiv pe departamentele 10, 20 şi 30, respectiv salariul total pentru job-ul respectiv pe toate cele 3 departamente. Etichetaţi coloanele corespunzător.

SELECT DISTINCT job_id,
        (SELECT SUM(salary)
          FROM employees
          WHERE job_id = e.job_id AND department_id = 10
          GROUP BY job_id
        ) AS "Departamentul 10",

        (SELECT SUM(salary)
          FROM employees
          WHERE job_id = e.job_id AND department_id = 20
          --GROUP BY job_id
        ) AS "Departamentul 20",

        (SELECT SUM(salary)
          FROM employees
          WHERE job_id = e.job_id AND department_id = 30
          GROUP BY job_id
        ) AS "Departamentul 30",

        (SELECT SUM(salary)
          FROM employees
          WHERE job_id = e.job_id AND department_id IN (10, 20, 30)
          GROUP BY job_id
        ) AS "Total"
FROM employees e;

-- 20. b. Clauzele GROUP BY din subcererile anterioare sunt necesare?
-- 20. c. Este necesară o clauză GROUP BY în cererea principală?
-- 20. d. Clauza SELECT a cererii principale trebuie să utilizeze opţiunea DISTINCT?
-- 20. e. Daţi o altă metodă de rezolvare utilizând funcţia DECODE.

SELECT job_id, SUM(DECODE(department_id, 10, salary)) AS "Departamentul 10",
        SUM(DECODE(department_id, 20, salary)) AS "Departamentul 20",
        SUM (DECODE(department_id, 30, salary)) AS "Departamentul 30",
        SUM(DECODE(department_id, 10, salary, 20, salary, 30, salary)) AS "Total"
FROM employees
GROUP BY job_id;

-- 21. Să se creeze o cerere prin care să se afişeze numărul total de angajaţi şi, din acest total, numărul celor care au fost angajaţi în 1997, 1998, 1999 şi 2000.

SELECT COUNT(*) AS "Total",
        SUM(DECODE(TO_CHAR(hire_date, 'yyyy'), 1997, 1, 0)) AS "97",
        SUM(DECODE(TO_CHAR(hire_date, 'yyyy'), 1998, 1, 0)) AS "98",
        SUM(DECODE(TO_CHAR(hire_date, 'yyyy'), 1999, 1, 0)) AS "99",
        SUM(DECODE(TO_CHAR(hire_date, 'yyyy'), 2000, 1, 0)) AS "00"
FROM employees;

-- 22. Afişaţi codurile departamentelor în care lucrează cel puţin un angajat, iar pentru fiecare dintre acestea şi pentru fiecare manager care lucrează în departamentul respectiv afişaţi numărul de salariaţi. De asemenea, afişaţi numărul de salariaţi pentru fiecare departament indiferent de manager şi numărul total de angajaţi din companie.

SELECT department_id, manager_id, COUNT(employee_id)
FROM employees
WHERE manager_id IS NOT NULL AND department_id IS NOT NULL
GROUP BY ROLLUP (department_id, manager_id);

SELECT department_id, manager_id, job_id, COUNT(employee_id)
FROM employees
WHERE manager_id IS NOT NULL AND department_id IS NOT NULL
GROUP BY CUBE (department_id, manager_id, job_id);

-- 23. Afişaţi codurile departamentelor în care lucrează cel puţin un angajat, iar pentru fiecare dintre acestea şi pentru fiecare manager care lucrează în departamentul respectiv afişaţi numărul de salariaţi. De asemenea, afişaţi numărul de salariaţi pentru fiecare departament indiferent de manager, numărul de angajaţi subordonaţi unui manager indiferent de departament şi numărul total de angajaţi din companie.

SELECT department_id, manager_id, COUNT(employee_id)
FROM employees
WHERE manager_id IS NOT NULL AND department_id IS NOT NULL
GROUP BY CUBE (department_id, manager_id);

-- 24. Pentru fiecare departament, job, respectiv an al angajării afişaţi numărul de salariaţi. De asemenea, afişaţi numărul de angajaţi:
--      - pentru fiecare departament şi job, indiferent de anul angajării;
--      - pentru fiecare departament, indiferent de job şi de anul angajării;
--      - la nivel de companie.

SELECT department_id, job_id, TO_CHAR(hire_date, 'YYYY'), COUNT(employee_id)
FROM employees
GROUP BY ROLLUP(department_id, job_id, TO_CHAR(hire_date, 'YYYY'));

SELECT department_id, job_id, COUNT(employee_id)
FROM employees
GROUP BY ROLLUP(department_id, job_id);

SELECT department_id
FROM employees
ORDER BY department_id DESC;

-- 25. Afişaţi suma alocată pentru plata salariilor pe joburi, în cadrul departamentului. De asemenea, afişaţi valoarea totală necesară pentru plata salariilor la nivel de departament, valoarea totală necesară pentru plata salariilor la nivel de job, indiferent de departament şi valoarea totală necesară pentru plata salariilor la nivel de companie.

SELECT department_id, job_id, SUM(salary)
FROM employees
GROUP BY ROLLUP(department_id, job_id);

-- 26. Afişaţi numele departamentelor, titlurile job-urilor şi valoarea medie a salariilor, pentru:
--       - fiecare departament şi, în cadrul său pentru fiecare job;
--       - fiecare departament (indiferent de job);
--       - întreg tabelul.
--  De asemenea, afişaţi şi o coloană care indică intervenţia coloanelor department_name şi job_title în obţinerea rezultatului.

SELECT department_name, job_title, ROUND(AVG(salary), 1), GROUPING(department_name), GROUPING(job_title)
FROM employees
JOIN departments USING (department_id)
JOIN jobs USING (job_id)
GROUP BY ROLLUP (department_name, job_title);

-- 27. Afişaţi numele departamentelor, numele job-urilor şi valoarea medie a salariilor, pentru:
--      - fiecare departament şi, în cadrul său pentru fiecare job;
--      - fiecare departament (indiferent de job);
--      - fiecare job(indiferent de departament)
--      - întreg tabelul.
-- Afişaţi cuvântul Dept, dacă departamentul a intervenit în agregare, respectiv cuvântul Job, dacă job-ul a intervenit în agregare.

SELECT department_name, job_title, ROUND(AVG(salary)),
        DECODE(GROUPING(department_name), 0, 'Dept'),
        DECODE(GROUPING(job_title), 0, 'Job')
FROM employees
JOIN departments USING(department_id)
JOIN jobs USING(job_id)
GROUP BY CUBE(department_name, job_title);

-- 28. Se dă următoarea cerere:

SELECT department_id, manager_id, COUNT(employee_id)
FROM employees
WHERE manager_id IS NOT NULL AND department_id IS NOT NULL
GROUP BY CUBE (department_id, manager_id);

-- 28. a. Eliminaţi clauza WHERE din această cerere.

SELECT department_id, manager_id, COUNT(employee_id)
FROM employees
GROUP BY CUBE (department_id, manager_id);

-- 28. b. Modificaţi cererea obţinută astfel încât să se poată identifica dacă o valoare null din rezultat este stocată pe una dintre coloanele manager_id sau department_id sau este produsă de operatorul CUBE.

SELECT department_id, manager_id, COUNT(employee_id),
        DECODE(GROUPING(department_id), 0, 'Dept', 1, department_id) AS "Dept",
        DECODE(GROUPING(manager_id), 0, 'Man', 1, manager_id) AS "Man"
FROM employees
WHERE manager_id IS NOT NULL AND department_id IS NOT NULL
GROUP BY CUBE (department_id, manager_id);

-- 29. Afişaţi numele departamentelor, numele job-urilor, codurile managerilor, maximul şi suma salariilor pentru:
--      - fiecare departament şi, în cadrul său, fiecare job;
--      - fiecare job şi, în cadrul său, pentru fiecare manager;
--      - întreg tabelul.

SELECT department_name, job_title, e.manager_id, MAX(salary), ROUND(AVG(salary))
FROM employees e
JOIN departments USING(department_id)
JOIN jobs USING(job_id)
GROUP BY GROUPING SETS ((department_name, job_title), (job_title, e.manager_id), () );
