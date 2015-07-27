-- FISIER INCOMPLET

-- 1

CREATE TABLE test_spr AS
SELECT * FROM departments;

SAVEPOINT a;

DELETE FROM test_spr;

SELECT * FROM test_spr;

INSERT INTO test_spr VALUES (300, 'Economic ',100,1000);

INSERT INTO test_spr VALUES (350, 'Cercetare ',200,2000);

SAVEPOINT b;

INSERT INTO test_spr VALUES (400, 'Juritic',150,3000);

SELECT * FROM test_spr;

ROLLBACK TO b;

SELECT * FROM test_spr;
ROLLBACK TO a;

INSERT INTO test_spr VALUES (500, 'Contabilitate',175,1500);
COMMIT;
ROLLBACK;

SELECT * FROM test_spr;

DROP TABLE test_spr;
ROLLBACK;

DESC test_spr

-- 2. Creaţi tabele emp_*** şi dept_***, având aceeaşi structură şi date ca şi tabelele employees, respectiv departments.

CREATE TABLE emp_spr AS SELECT * FROM employees;
CREATE TABLE dept_spr AS SELECT * FROM departments;

DELETE FROM emp_spr;

DELETE FROM dept_spr;

DESCribe emp_spr

DESC employees

INSERT INTO dept_spr (department_id, location_id)
VALUES (200, 2000);

-- 7. Inseraţi în tabelul emp_*** salariaţii (din tabelul employees) al căror comision depăşeşte 25% din salariu.

INSERT INTO emp_spr
SELECT *
FROM employees
WHERE commission_pct > 0.25 AND commission_pct IS NOT NULL;

--8. Creaţi tabelele emp1_***, emp2_*** şi emp3_*** cu aceeaşi structură ca tabelul employees, dar fără date. Inseraţi, utilizând o singură comandă INSERT, informaţiile din tabelul employees astfel:
--      - în tabelul emp1_*** salariaţii care au salariul mai mic sau egal decât 6000;
--      - în tabelul emp2_*** salariaţii care au salariul cuprins între 6000 şi 10000;
--      - în tabelul emp3_*** salariaţii care au salariul mai mare sau egal decât 10000.

CREATE TABLE emp1_ssi AS SELECT * FROM employees WHERE 0 = 1;
CREATE TABLE emp2_ssi AS SELECT * FROM employees WHERE 0 = 1;
CREATE TABLE emp3_ssi AS SELECT * FROM employees WHERE 0 = 1;

SAVEPOINT s;

INSERT ALL
WHEN salary < 6000 THEN  INTO emp1_ssi
WHEN salary BETWEEN 6000 AND 10000 THEN INTO emp2_ssi
ELSE INTO emp3_ssi
SELECT * FROM employees;

ROLLBACK to s;

-- sau
INSERT FIRST
WHEN salary < 6000 THEN  INTO emp1_ssi
WHEN salary < 10000 THEN INTO emp2_ssi
ELSE INTO emp3_ssi
SELECT * FROM employees;

-- 10. Inseraţi o linie nouă în tabelul dept_***, folosind valori introduse de la tastatură.

ACCEPT n PROMPT 'n='

SELECT lASt_name, job_id, salary
FROM employees
WHERE salary > &n;

SELECT department_id
FROM departments
WHERE location_id = &n;

-- 11. Inseraţi o linie nouă în tabelul dept_***. Salvaţi într-o variabilă de legătură codul departamentului nou introdus. Afişaţi valoarea menţinută în variabila respectivă. Anulaţi efectele tranzacţiei.

variable cod_dep number
begin
INSERT INTO dept_spr VALUES (400, 'Juritic',150,3000)
returning department_id into :cod_dep;
end;
/
print cod_dep

ROLLBACK;

variable g_nume varchar2(20)

begin
SELECT lASt_name INTO :g_nume FROM emp_spr where employee_id=150;
end;
/

print g_nume


-- 18. Să se promoveze Douglas Grant la manager în departamentul 20, având o creştere de salariu cu 1000$. Anulaţi efectele tranzacţiei.

UPDATE dept_spr
SET manager_id = (SELECT employee_id
                    FROM emp_spr
                    WHERE upper(first_name) LIKE('DOUGLAS')
                    AND upper(lASt_name) LIKE('GRANT')
                  )
WHERE department_id = 20;

UPDATE emp_spr
SET salary = salary + 1000
WHERE upper(first_name) LIKE('DOUGLAS') AND upper(lASt_name) LIKE('GRANT');

-- 19. Modificaţi jobul şi departamentul angajatului având codul 114, astfel încât să fie la fel cu cele ale angajatului având codul 205. Anulaţi efectele tranzacţiei.

UPDATE emp_spr
SET salary = (SELECT AVG(salary) FROM emp_spr)
WHERE hire_date IN (SELECT MIN(hire_date)
                     FROM emp_spr
                     GROUP BY department_id);

ROLLBACK;

-- 22. Modificaţi valoarea emailului pentru angajaţii care câştigă cel mai mult în departamentul în care lucrează astfel încât acesta să devină iniţiala numelui concatenată cu „_“ concatenat cu prenumele. Anulaţi efectele tranzacţiei.

UPDATE emp_spr e
SET email = (SELECT SUBSTR(lASt_name, 1, 1) || '_' || first_name
              FROM emp_spr
              WHERE e.employee_id = employee_id
             )
WHERE salary = (SELECT MAX(salary)
                FROM emp_spr
                WHERE e.department_id = department_id);

-- 23. Modificaţi comanda de la exerciţiul anterior astfel încât actualizarea coloanei email să fie realizată doar pentru angajatul având codul 200. Menţineţi numele şi emailul acestuia în două variabile de legătură. Anulaţi efectele tranzacţiei.

variable nume varchar2(25)
variable mail varchar2(25)

begin

UPDATE emp_spr e
SET email = (SELECT SUBSTR(lASt_name, 1, 1) || '_' || first_name
              FROM emp_spr
              WHERE e.employee_id = employee_id
              )
WHERE employee_id = 200
returning lASt_name,email into :nume , :mail ;

end;
/
print nume mail


-- 24. Măriţi cu 1000 salariul unui angajat al cărui cod este introdus de la tastatură.

update emp_spr
set salary = salary + 1000
where employee_id = &cod;
ROLLBACK;

-- 25. a. Ştergeţi din tabelul emp_*** toţi angajaţii care lucrează în departamentul 80.

delete FROM emp_spr
where
department_id = 80;
ROLLBACK;

-- 25. b. Micşoraţi cu 5% salariul celor care lucrează în departamentul 50.
update emp_spr
set salary=salary-(5*salary/100)
where department_id=50;

-- 25. c. Folosiţi comanda MERGE pentru a sincroniza datele din tabelul  emp_*** cu cele din tabelul employees (înregistrările şterse anterior vor fi inserate, iar înregistrările pentru care a fost modificat salariul vor fi actualizate).

MERGE INTO emp_spr a
USING employees b
ON (a.employee_id = b.employee_id)
WHEN MATCHED THEN
UPDATE SET
a.first_name = b. first_name,
a.lASt_name = b.lASt_name,
a.email = b.email,
a.phone_number = b.phone_number,
a.hire_date = b.hire_date,
a.job_id = b.job_id,
a.salary = b.salary,
a.commission_pct = b.commission_pct,
a.manager_id = b.manager_id,
a.department_id = b.department_id
WHEN NOT MATCHED THEN
INSERT VALUES(b.employee_id, b.first_name, b.lASt_name, b.email,
        b.phone_number, b.hire_date, b.job_id, b.salary,
        b.commission_pct, b.manager_id, b.department_id);
