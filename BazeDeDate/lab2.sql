-- 2. Afişaţi numele şi data angajării salariatului având codul 200. Etichetaţi coloanele conform semnificaţiilor acestora (Nume, Data angajării), fără ca aliasurile să fie trunchiate la dimensiunea coloanei şi respectându-se forma de scriere a acestora (aliasurile încep cu majusculă).

SELECT last_name, hire_date, RPAD(TO_CHAR(hire_date), 20, 'X')
FROM employees
WHERE employee_id = 200;

-- 3. Afişaţi pentru fiecare angajat din departamentul 20 un şir de caractere de forma "Funcţia salariatului {prenume} {nume} este {cod functie}" (prenumele cu iniţiala majusculă, numele cu majuscule, codul funcţiei cu minuscule).

SELECT 'Funcţia salariatului ' || last_name || ' ' || first_name || ' este ' || job_id
FROM employees
WHERE department_id = 20;

-- 4. Afişaţi pentru angajatul cu numele 'HIGGINS' codul, numele şi codul departamentului. Cum se scrie condiţia din WHERE astfel încât să existe siguranţa ca angajatul 'HIGGINS' va fi găsit oricum ar fi fost introdus numele acestuia? Căutarea trebuie să nu fie case-sensitive, iar eventualele blank-uri care preced sau urmează numelui trebuie ignorate.

SELECT employee_id, last_name, department_id
FROM employees
WHERE last_name = 'Higgins';

-- 5. Afişaţi pentru toţi angajaţii al căror nume se termină în litera 'n', codul, numele, lungimea numelui şi poziţia din nume în care apare prima data litera 'a'. Asociaţi aliasuri coloanelor afişate.

SELECT employee_id, last_name, LENGTH(last_name), INSTR(UPPER(last_name), 'A')
FROM employees
WHERE SUBSTR(last_name, -1) = 'n';

-- 7. Afişaţi detalii despre salariaţii care au lucrat un număr întreg de săptămâni până la data curentă.

SELECT last_name, ROUND(SYSDATE - hire_date)
FROM employees
WHERE MOD(ROUND(SYSDATE - hire_date), 7) = 0;

-- 9. Afişaţi data (luna, ziua, ora, minutul si secunda) de peste 10 zile.

SELECT TO_CHAR(SYSDATE + 10, 'DD.MM.YYYY.HH.MI.SS')
FROM dual;

-- 10. Afişaţi numărul de zile rămase până la sfârşitul anului.

SELECT ROUND(TO_DATE('31/DEC/2015', 'DD/MON/YYYY') - SYSDATE)
FROM dual;

-- 11. Afişaţi data de peste 12 ore.

SELECT SYSDATE + 12/24
FROM dual;

-- 13. Să se afişeze numele angajatului, data angajării şi data negocierii salariului, care a avut loc în prima zi de Luni, după 6 luni de serviciu. Etichetaţi această coloană "Negociere".

SELECT last_name, hire_date, NEXT_DAY(ADD_MONTHS(hire_date, 6), 'Monday') "Negociere"
FROM employees;

-- 14. Pentru fiecare angajat să se afişeze numele şi numărul de luni de la data angajării. Etichetaţi coloana "Luni lucrate". Să se ordoneze rezultatul după numărul de luni lucrate. Se va rotunji numărul de luni la cel mai apropiat număr întreg.

SELECT last_name, ROUND(MONTHS_BETWEEN(SYSDATE, hire_date)) "Luni lucrate"
FROM employees
ORDER BY 2;

-- 16. Afişaţi numele şi prenumele pentru toţi angajaţii care s-au angajat în luna mai.

SELECT first_name, last_name, hire_date
FROM employees
WHERE TO_CHAR(hire_date, 'MM') = 5;

-- 17. Afişaţi data următoarei zile de Vineri de peste 3 luni. Etichetaţi coloana. Rezultatul trebuie să fie formatat 'NumeZi, NumeLuna NumarZiLuna, an'.

SELECT TO_CHAR(NEXT_DAY(ADD_MONTHS(SYSDATE, 3), 'Friday'), 'DD-MON-YYYY')
FROM dual;

-- 19. Afişaţi numele angajaţilor şi comisionul. Dacă un angajat nu câştigă comision, afişaţi "Fara comision". Etichetaţi coloana "Comision".

SELECT first_name, NVL(TO_CHAR(commission_pct), 'Fara comision') AS "Comision"
FROM employees;

-- 20. Afişaţi numele, salariul şi comisionul tuturor angajaţilor al căror venit lunar depăşeşte 10000$.

SELECT last_name, salary, commission_pct, salary + salary * NVL(commission_pct, 0)
FROM employees
WHERE salary + salary * NVL(commission_pct, 0) > 10000;

SELECT last_name, salary, commission_pct, salary + salary * commission_pct
FROM employees
WHERE salary + salary * commission_pct > 10000;

-- 22. Afişaţi numele, codul funcţiei, salariul şi o coloana care să arate salariul după mărire. Se ştie că pentru IT_PROG are loc o mărire de 10%, pentru ST_CLERK 15%, iar pentru SA_REP o mărire de 20%. Pentru ceilalţi angajaţi nu se acordă mărire. Denumiţi coloana "Salariu revizuit".

SELECT last_name, job_id, salary,
        DECODE(job_id, 'IT_PROG', salary * 1.1,
                'ST_CLERK', salary * 1.15,
                'SA_REP', salary * 1.2,
                 salary ) "salariu revizuit"
FROM employees;


SELECT last_name, job_id, salary,
        CASE job_id WHEN 'IT_PROG' THEN salary * 1.1
                WHEN 'ST_CLERK' THEN salary * 1.15
                WHEN 'SA_REP' THEN salary * 1.2
                ELSE salary
        END "salariu revizuit"
FROM employees;


SELECT last_name, job_id, salary,
        CASE WHEN job_id = 'IT_PROG' THEN salary * 1.1
                WHEN job_id = 'ST_CLERK' THEN salary * 1.15
                WHEN job_id = 'SA_REP' THEN salary * 1.2
                ELSE salary
        END "salariu revizuit"
FROM employees;

-- 23. Afişaţi numele salariatului şi codul departamentului în care acesta lucrează. Dacă există salariaţi care nu au un cod de departament asociat, atunci pe coloana id_department afişaţi textul "fara departament" si valoarea zero.

SELECT last_name, DECODE(department_id, NULL, 0, department_id), CASE TO_CHAR(department_id) WHEN NULL THEN 'Fara departament' ELSE TO_CHAR(department_id) END "cod_dep"
FROM employees;

-- 24. Afişaţi valoarea medie a comisionului lunar pentru:
--      - salariaţii care câştigă comision;
--      - toţi salariaţii.

SELECT ROUND(AVG(NVL(commission_pct, 0)), 2)
FROM employees;
--WHERE commission_pct IS NOT NULL;

-- 25. a) Afişaţi numele angajaţilor care nu au manager.
--    b) Afişaţi numele angajaţilor şi codul managerilor lor. Pentru angajaţii care nu au manager să apară textul "nu are sef".

SELECT last_name
FROM employees
WHERE manager_id IS NULL;

SELECT last_name, NVL(TO_CHAR(manager_id), 'nu are sef') "manager_id"
FROM employees;

-- 26.  Afişaţi numele salariatului şi:
--    a) venitul anual dacă are comision;
--    b) salariul dacă nu are comision.
-- Se va utiliza funcţia NVL2.

SELECT last_name, NVL2(commission_pct, 12 * salary*( 1 + commission_pct), 12 * salary)
FROM employees;

-- 27.  Pentru toţi angajaţii, afişaţi valoarea null dacă lungimea numelui este egală cu cea a prenumelui, iar în caz contrar doar lungimea numelui. Se va utiliza funcţia NULLIF.

-- 28. Modificaţi cererea anterioară astfel încât să afişaţi în locul valorii null textul "Valori egale".

-- 29. Afişaţi numele salariatului, salariul şi salariul revizuit astfel:
--      - dacă lucrează de mai mult de 200 de luni atunci salariul va fi mărit cu 20%;
--      - dacă lucrează de mai mult de 150 de luni, dar mai puţin de 200 de luni, atunci salariul va fi mărit cu 15%;
--      - dacă lucrează de mai mult de 100 de luni, dar mai puţin de 150 de luni, atunci salariul va fi mărit cu 10%;
--      - altfel, salariul va fi mărit cu 5%.
