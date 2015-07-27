-- produs cartezian

SELECT last_name, department_name, location_id
FROM employees, departments;

-- sau varianta standard

SELECT last_name, department_name, location_id
FROM employees CROSS JOIN departments;



-- natural join

SELECT last_name, department_name, e.department_id, location_id
FROM employees e, departments d
WHERE e.department_id = d.department_id
  AND e.manager_id = d.manager_id
ORDER BY e.department_id;

-- sau standard

SELECT last_name, department_name,department_id, location_id
FROM employees NATURAL JOIN departments
ORDER BY department_id;

SELECT employee_id, e.job_id
FROM employees e, jobs j
WHERE e.job_id = j.job_id;

SELECT employee_id, job_id
FROM employees NATURAL JOIN jobs;



-- inner join

SELECT last_name, department_name, e.department_id, location_id
FROM employees e, departments d
WHERE e.department_id = d.department_id;

-- sau standard

SELECT last_name, department_name, department_id, location_id
FROM employees
JOIN departments USING (department_id);

SELECT last_name, department_name, e.department_id, location_id
FROM employees e
JOIN departments d ON (e.department_id < d.department_id);



-- left outer join

SELECT last_name, department_name, e.department_id, location_id
FROM employees e, departments d
WHERE e.department_id = d.department_id(+);

-- sau standard

SELECT last_name, department_name, department_id, location_id
FROM employees
LEFT OUTER JOIN departments using (department_id);



-- full outer join

SELECT last_name, department_name, e.department_id, location_id
FROM employees e, departments d
WHERE e.department_id = d.department_id(+)
OR e.department_id (+) = d.department_id;

SELECT last_name, department_name, e.department_id, location_id
FROM employees e,departments d
WHERE e.department_id = d.department_id(+)
UNION
SELECT last_name, department_name, e.department_id, location_id
FROM employees e,departments d
WHERE e.department_id(+) = d.department_id;

-- sau standard

SELECT DISTINCT last_name, department_name, department_id, location_id
FROM employees
FULL OUTER JOIN departments USING (department_id)
ORDER BY last_name;

-- 1. Afişaţi pentru fiecare angajat numele, codul şi numele departamentului în care lucrează.

SELECT last_name, department_name, location_id
FROM employees e, departments d
WHERE e.department_id = d.department_id;

-- sau

SELECT last_name,department_name, location_id
FROM employees;

-- 2. Afişaţi numele angajatului, numele departamentului pentru toţi angajaţii care câştigă comision.

SELECT last_name, department_name
FROM employees e
JOIN departments d ON (e.department_id = d.department_id)
WHERE e.commission_pct IS NOT NULL;

-- 3. Afişaţi numele job-urile care există în departamentul 30.
SELECT job_title
FROM jobs j
JOIN employees e ON (e.job_id = j.job_id)
WHERE department_id = 30;

-- 4. Afişaţi numele, job-ul şi numele departamentului pentru toţi angajaţii care lucrează în Seattle.
SELECT last_name, job_id, department_name
FROM employees e, departments d, locations s
WHERE e.department_id = d.department_id
AND d.location_id = s.location_id
AND city = 'Seattle';

-- sau standard

SELECT last_name, job_id, department_name
FROM employees
JOIN departments USING (department_id)
JOIN locations USING (location_id)
WHERE city = 'Seattle';

-- 5. Afişaţi numele, salariul, data angajării şi numele departamentului pentru toţi programatorii (numele jobului este Programmer) care lucrează în America de Nord sau în America de Sud (numele regiunii este Americas).

SELECT last_name, salary, hire_date, department_name
FROM employees
JOIN jobs USING (job_id)
JOIN departments USING (department_id)
JOIN locations USING (location_id)
JOIN countries USING (country_id)
JOIN regions USING (region_id)
WHERE job_title LIKE 'Programmer'
    AND region_name LIKE 'Americas';

-- 6. Afişaţi numele salariaţilor şi numele departamentelor în care lucrează. Se vor afişa şi salariaţii al căror departament nu este cunoscut (left outher join).

SELECT last_name, department_name
FROM employees e, departments d
WHERE e.department_id (+) = d.department_id;

SELECT last_name, department_name
FROM   employees e, departments d
WHERE  e.department_id = d.department_id(+);

-- 7. Afişaţi numele departamentelor şi numele salariaţilor care lucrează în acestea. Se vor afişa şi departamentele care nu au salariaţi (right outher join).

-- outer join

SELECT last_name, department_name
FROM employees e, departments d
WHERE e.department_id(+) = d.department_id
union
SELECT last_name, department_name
FROM employees e, departments d
WHERE e.department_id = d.department_id(+);

-- sau

SELECT last_name,department_name
FROM employees FULL OUTER JOIN departments USING (department_id);

-- left outer join

SELECT last_name, department_name
FROM employees e, departments d
WHERE e.department_id = d.department_id(+);
-- sau

SELECT last_name, department_name
FROM employees LEFT OUTER JOIN departments USING (department_id);

-- right outer join

SELECT last_name, department_name
FROM employees e, departments d
WHERE e.department_id(+) = d.department_id;

-- sau

SELECT last_name, department_name
FROM employees RIGHT OUTER JOIN departments USING (department_id);

SELECT last_name, department_name
FROM employees e, departments d
WHERE d.department_id = e.department_id;

-- 8. Afişaţi numele departamentelor şi numele salariaţilor care lucrează în acestea. Se vor afişa şi salariaţii al căror departament nu este cunoscut, respectiv şi departamentele care nu au salariaţi (full outher join).
--    Observaţie: full outer join = left outer join UNION right outer join


-- 9. Afişaţi numele, job-ul, numele departamentului, salariul şi grila de salarizare pentru toţi angajaţii.

SELECT last_name, job_title, department_name, salary, grade_level
FROM employees
JOIN departments USING(department_id)
JOIN jobs USING (job_id), job_grades
WHERE salary BETWEEN lowest_sal AND highest_sal;

SELECT * FROM job_grades;

-- 10. Afişaţi codul angajatului şi numele acestuia, împreună cu numele şi codul şefului său direct. Etichetaţi coloanele CodAng, NumeAng, CodMgr, NumeMgr.

SELECT a.employee_id "CodAng", a.last_name "NumeAng",
       b.employee_id "CodMgr", b.last_name "NumeMgr"
FROM   employees a, employees b
WHERE  a.manager_id = b. employee_id;

-- varianta standard

SELECT a.employee_id "CodAng", a.last_name "NumeAng",
       b.employee_id "CodMgr", b.last_name "NumeMgr"
FROM employees a
JOIN employees b ON (a.manager_id = b. employee_id);

-- 11. Modificaţi cererea anterioară astfel încât să afişaţi toţi salariaţii, inclusiv pe cei care nu au şef.

SELECT a.employee_id "CodAng", a.last_name "NumeAng",
       b.employee_id "CodMgr", b.last_name "NumeMgr"
FROM employees a
LEFT OUTER JOIN employees b ON (a.manager_id = b. employee_id);

-- 12. Afişaţi numele salariatului şi data angajării împreună cu numele şi data angajării şefului direct pentru salariaţii care au fost angajaţi înaintea şefilor lor.

SELECT a.employee_id "CodAng", a.last_name "NumeAng", A.HIRE_DATE "Dataang",
       b.employee_id "CodMgr", b.last_name "NumeMgr", B.HIRE_DATE "DataMgr"
FROM employees a
JOIN employees b ON (a.manager_id = b. employee_id)
WHERE A.HIRE_DATE < b.HIRE_DATE;

-- 13. Pentru fiecare angajat din departamentele 20 şi 30 afişaţi numele, codul departamentului şi toţi colegii săi (salariaţii care lucrează în acelaşi departament cu el).

SELECT e1.last_name, e1.department_id, e2.last_name
FROM employees e1
JOIN employees e2 ON (E1.department_id = E2.department_id)
WHERE e1.department_id IN (20, 30) AND e1.employee_id <> e2.employee_id;

-- 14. Afişaţi numele şi data angajării pentru salariaţii care au fost angajaţi după Fay.

SELECT last_name, hire_date
FROM employees E1
WHERE hire_date > (SELECT hire_date
                        FROM employees E2
                        WHERE last_name = 'Fay');

-- 15. Rezolvaţi exerciţiul anterior utilizând join-uri.

SELECT a.last_name, a.hire_date
FROM employees a
CROSS JOIN employees b
WHERE UPPER(b.last_name) = 'FAY'
     AND a.hire_date > b.hire_date;

-- 16. Scrieţi o cerere pentru a afişa numele şi salariul pentru toţi colegii (din acelaşi departament) lui Fay. Se va exclude Fay.

SELECT  last_name, salary
FROM    employees
WHERE   last_name <> 'Fay'
AND     department_id = (SELECT department_id
                         FROM employees
                         WHERE last_name = 'Fay');

-- 17. Afişaţi numele şi salariul angajaţilor conduşi direct de Steven King.

SELECT last_name, salary
FROM   employees
WHERE  manager_id = (SELECT employee_id
                     FROM   employees
                     WHERE  UPPER(last_name) = 'KING'
                     AND    UPPER(first_name) = 'STEVEN');

-- 18. Afişaţi numele şi job-ul tuturor angajaţilor din departamentul 'Sales'.
SELECT last_name, job_id
FROM   employees
WHERE  department_id = (SELECT department_id
                        FROM   departments
                        WHERE  department_name = 'Sales');

-- 19. Rezolvaţi exerciţiul anterior utilizând join-uri.

SELECT last_name, job_id
FROM employees e
JOIN departments d ON (E.department_id = D.department_id)
WHERE department_name = 'Sales';

SELECT last_name, job_id
FROM employees
WHERE department_id = (SELECT department_id
                        FROM departments
                        WHERE department_name = 'Sales');

SELECT last_name, salary, commission_pct, department_id
FROM employees
WHERE (salary, commission_pct) IN (SELECT salary, commission_pct
                                        FROM employees e, departments d
                                        WHERE e.department_id = d.department_id
                                        AND department_name = 'Sales')
                                        AND department_id <> (SELECT department_id
                                                                FROM departments
                                                                WHERE department_name = 'Sales');

-- 20. Afişaţi numele angajaţilor, numărul departamentului şi job-ul tuturor salariaţilor al căror departament este localizat în Seattle.

SELECT last_name, job_id, department_id
FROM   employees
WHERE  department_id IN
        (SELECT department_id
         FROM   departments
         WHERE  location_id = (SELECT location_id
                               FROM   locations
                               WHERE  city = 'Seattle'));

-- 21. Rezolvaţi exerciţiul anterior utilizând join-uri.


-- 22. Aflaţi dacă există angajaţi care nu lucrează în departamentul Sales, dar au aceleaşi câştiguri (salariu şi comision) ca şi un angajat din departamentul Sales.

SELECT last_name, salary, commission_pct, department_id
FROM   employees
WHERE (salary, commission_pct) IN
      (SELECT salary, commission_pct
       FROM   employees e, departments d
       WHERE  e.department_id = d.department_id
       AND    department_name = 'Sales')
       AND    department_id <> (SELECT department_id
                                FROM   departments
                                WHERE  department_name = 'Sales');

-- 23. Scrieţi o cerere pentru a afişa angajaţii care câştigă mai mult decât oricare funcţionar. Sortaţi rezultateledupă salariu, în ordine descrescătoare.

SELECT last_name, salary, job_id
FROM   employees
WHERE  salary > (SELECT MAX(salary)
                 FROM   employees
                 WHERE  job_id LIKE '%CLERK')
ORDER BY salary DESC;

-- 24. Afişaţi salariaţii care au acelaşi manager ca şi angajatul având codul 140.

SELECT last_name
FROM employees
WHERE manager_id = (SELECT manager_id
                    FROM employees
                    WHERE employee_id = 140);

SELECT e1.last_name
FROM employees e1
CROSS JOIN employees e2
WHERE e1.manager_id = e2.manager_id AND e2.employee_id = 140;

-- 25. Afişaţi numele departamentelor care funcţionează în America.

SELECT department_name
FROM departments
JOIN locations using (location_id)
JOIN countries using (country_id)
JOIN regions using (region_id)
WHERE region_name = 'Americas';

-- 26. Afişaţi numele angajatului, numele şefului său direct, respectiv numele şefului căruia i se subordonează şeful său direct.

SELECT e1.last_name, e2.last_name, e3.last_name
FROM employees e1
LEFT OUTER JOIN employees e2 ON (e1.manager_id = e2.employee_id)
LEFT OUTER JOIN employees e3 ON (e2.manager_id = e3.employee_id);

-- 27. Afişaţi codul, numele şi salariul tuturor angajaţilor care câştigă mai mult decât salariul mediu.

SELECT employee_id, last_name, salary
FROM employees
WHERE salary > (SELECT avg(salary) FROM employees);

-- 28. Afişaţi pentru fiecare salariat angajat în luna martie numele său, data angajării şi numele jobului.


-- 29. Afişaţi pentru fiecare salariat al cărui câştig total lunar este mai mare decât 12000 numele său, câştigul total lunar şi numele departamentului în care lucrează.


-- 30. Afişaţi pentru fiecare angajat codul său şi numele joburilor sale anterioare, precum şi intervalul de timp în care a lucrat pe jobul respectiv.

SELECT e.employee_id, job_title, start_date, end_date
FROM employees e
JOIN jobs j ON (e.job_id = j.job_id)
JOIN job_history jh ON (j.job_id = jh.job_id);

-- 31. Modificaţi cererea de la punctul 30 astfel încât să se afişeze şi numele angajatului, respectiv codul jobului său curent.

SELECT e.employee_id, e.last_name, e.job_id, job_title, start_date, end_date
FROM employees e
JOIN jobs j ON (e.job_id = j.job_id)
JOIN job_history jh ON (j.job_id = jh.job_id);

-- 32. Modificaţi cererea de la punctul 31 astfel încât să se afişeze şi numele jobului său curent.

SELECT e.employee_id, e.last_name, e.job_id, j2.job_title "Job vechi", j.job_title, start_date, end_date
FROM employees e
JOIN jobs j ON (e.job_id = j.job_id)
JOIN job_history jh ON (e.employee_id = jh.employee_id)
JOIN jobs j2 ON (jh.job_id = j2.job_id)
ORDER BY employee_id;

-- 33. Modificaţi cererea de la punctul 32 astfel încât să se afişeze informaţiile cerute doar pentru angajaţii care au lucrat în trecut pe acelaşi job pe care lucrează în prezent.

SELECT e.employee_id, e.last_name, e.job_id, j2.job_title "Job vechi", j.job_title, start_date, end_date
FROM employees e
JOIN jobs j ON (e.job_id = j.job_id)
JOIN job_history jh ON (e.employee_id = jh.employee_id)
JOIN jobs j2 ON (jh.job_id = j2.job_id)
WHERE jh.job_id = j.job_id
ORDER BY employee_id;

-- 34. Modificaţi cererea de la punctul 33 astfel încât să se afişeze în plus numele departamentului în care a lucrat angajatul în trecut, respectiv numele departamentului în care lucrează în prezent.

SELECT e.employee_id, e.last_name, e.job_id, j2.job_title "Job vechi", j.job_title, start_date, end_date, e.department_id, d.department_name, dh.department_name
FROM employees e
JOIN jobs j ON (e.job_id = j.job_id)
JOIN job_history jh ON (e.employee_id = jh.employee_id)
JOIN jobs j2 ON (jh.job_id = j2.job_id)
JOIN departments d ON (e.department_id = d.department_id)
JOIN departments dh ON (dh.department_id = jh.department_id)
WHERE jh.job_id = j.job_id
ORDER BY employee_id;

-- 35. Modificaţi cererea de la punctul 34 încât să se afişeze informaţiile cerute doar pentru angajaţii care au lucrat în trecut pe acelaşi job pe care lucrează în prezent, dar în departamente diferite.

SELECT e.employee_id, e.last_name, e.job_id, j2.job_title "Job vechi", j.job_title, start_date, end_date, e.department_id, d.department_name, dh.department_name
FROM employees e
JOIN jobs j ON (e.job_id = j.job_id)
JOIN job_history jh ON (e.employee_id = jh.employee_id)
JOIN jobs j2 ON (jh.job_id = j2.job_id)
JOIN departments d ON (e.department_id = d.department_id)
JOIN departments dh ON (dh.department_id = jh.department_id)
WHERE jh.job_id = j.job_id AND e.department_id != jh.department_id
ORDER BY employee_id;
