-- FISIER INCOMPLET

CREATE TABLE timp_spr
(data1 DATE,
 data2 TIMESTAMP(5),
 data3 TIMESTAMP(5) WITH TIME ZONE);

INSERT INTO timp_spr
VALUES(sysdate, systimestamp, systimestamp);

CREATE TABLE salariat_spr (
        cod_ang NUMBER(4) NOT NULL,
        nume VARCHAR2(25),
        prenume VARCHAR2(25),
        functia VARCHAR2(20),
        sef NUMBER(4),
        data_angajarii DATE DEFAULT SYSDATE,
        varsta NUMBER(2),
        email CHAR(20),
        salariu NUMBER(9, 2) DEFAULT 0 NOT NULL);

INSERT INTO salariat_spr
VALUES(1, null, null, 'director', null, null, 30, null, 5500);

CREATE TABLE timp_spr
(data1 DATE,
 data2 TIMESTAMP(5),
 data3 TIMESTAMP(5) WITH TIME ZONE);

INSERT INTO timp_spr
VALUES(sysdate, systimestamp, systimestamp);

ALTER TABLE timp_spr
MODIFY (data1 DATE NOT NULL, data2 DATE DEFAULT SYSDATE);

SAVEPOINT a;

INSERT INTO timp_spr(data1, data3)
VALUES(sysdate, systimestamp);

-- TRUNCATE TABLE timp_spr;

SELECT * FROM timp_spr;

DELETE FROM timp_spr;

ROLLBACK to a;

DELETE FROM emp_spr;

SELECT * FROM emp_spr;

ROLLBACK;

DROP TABLE salariat_spr;

CREATE TABLE salariat_spr (
        cod_ang NUMBER(4) PRIMARY KEY,
        nume VARCHAR2(25) NOT NULL,
        prenume VARCHAR2(25),
        data_nasterii DATE,
        functia VARCHAR2(9) NOT NULL,
        sef NUMBER(4) REFERENCES salariat_spr (cod_ang),
        data_angajarii DATE DEFAULT SYSDATE,
        email VARCHAR2(20) UNIQUE,
        salariu NUMBER(9, 2) CONSTRAINT ck1_spr CHECK(salariu > 0),
        cod_dep NUMBER(4),
        CONSTRAINT ck2_spr CHECK(data_angajarii > data_nasterii),
        CONSTRAINT u_spr UNIQUE(nume, prenume, data_nasterii));

INSERT INTO salariat_spr(cod_ang, nume, prenume, data_nasterii, functia, sef, email, salariu, cod_dep)
VALUES (1, 'Popescu', 'Ion', SYSDATE-1, 'ECONOMIST', NULL, 'p@example.com', 1000, 4);

ALTER TABLE salariat_spr
DROP CONSTRAINT u_spr; --  UNIQUE(nume, prenume, data_nasterii)

ALTER TABLE salariat_spr
DROP PRIMARY KEY(cod_ang);

ALTER TABLE salariat_spr
MODIFY CONSTRAINT SYS_C0098802 DISABLE;

INSERT INTO salariat_spr(cod_ang, nume, prenume, data_nasterii, functia, sef, email, salariu, cod_dep)
VALUES (2, 'Popescu', 'Ion', SYSDATE - 1, 'ECONOMIST', NULL, 'p@example.com', 1000, 4);

ALTER TABLE salariat_spr
MODIFY CONSTRAINT SYS_C0098802 ENABLE;

CREATE TABLE departament_spr
(cod_dep NUMBER(4) PRIMARY KEY,
 nume VARCHAR2(20),
 oras VARCHAR2(25) NOT NULL);

DELETE FROM salariat_spr;

ALTER TABLE salariat_spr
ADD CONSTRAINT fk2_spr FOREIGN KEY(cod_dep) REFERENCES departament_spr(cod_dep);

SELECT * FROM user_tables;
