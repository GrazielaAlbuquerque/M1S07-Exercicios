--Exercicio08 - NORMALIZA��O

CREATE DATABASE Exercicio08

--TABELAO FUNCIONARIO N�O ESTA NORMALIZADO 
CREATE TABLE FUNCIONARIO_NFN(
		ID INT PRIMARY KEY,
		NOME VARCHAR(50),
		CARGO VARCHAR(50),
		TELEFONE1 VARCHAR(11),
		TELEFONE2 VARCHAR(11)
		)
--DROP TABLE FUNCIONARIO_NFN

--PRIMEIRA FORMA NORMAL
CREATE TABLE FUNCIONARIO_FN1(
			ID INT PRIMARY KEY,
			NOME VARCHAR(50),
			CARGO VARCHAR(50),
			)

CREATE TABLE TELEFONE_FN1(
			ID INT REFERENCES FUNCIONARIO_FN1(ID) NOT NULL ,
			TELEFONE VARCHAR(11) NOT NULL 
			)

ALTER TABLE TELEFONE_FN1 ADD PRIMARY KEY (ID, TELEFONE)

--DROP TABLE FUNCIONARIO_FN1


--TERCEIRA FORMA NORMAL
CREATE TABLE CARGO_FN3(
			ID INT IDENTITY (1,1) PRIMARY KEY, 
			CARGO VARCHAR(50)
			)

CREATE TABLE FUNCIONARIO_FN3(
			ID INT PRIMARY KEY,
			NOME VARCHAR(50),
			CARGO_ID INT REFERENCES CARGO_FN3(ID)
			)

CREATE TABLE TELEFONE_FN3(
			ID INT REFERENCES FUNCIONARIO_FN3(ID) NOT NULL ,
			TELEFONE VARCHAR(11) NOT NULL 
			)

ALTER TABLE TELEFONE_FN3 ADD PRIMARY KEY (ID, TELEFONE)

CREATE TABLE TELEFONE2_FN3(
			ID INT REFERENCES FUNCIONARIO_FN3(ID) NOT NULL ,
			TELEFONE VARCHAR(11) NOT NULL 
			)

ALTER TABLE TELEFONE2_FN3 ADD PRIMARY KEY (ID, TELEFONE)




INSERT INTO CARGO_FN3 VALUES ('Atendente'),('Gerente'),('Atendente')
INSERT INTO FUNCIONARIO_FN3 VALUES (1, 'Marcos', 1),(2, 'Maria', 2),(3, 'Julia', 3)
INSERT INTO TELEFONE_FN3 VALUES (1, '3654589'),(2, '3654698'), (3, '3654962')
INSERT INTO TELEFONE2_FN3 VALUES (1, '36545987'),(2, '36524569'), (3, '12365458')

SELECT * FROM CARGO_FN3
SELECT * FROM FUNCIONARIO_FN3
SELECT * FROM TELEFONE_FN3
SELECT * FROM TELEFONE2_FN3
