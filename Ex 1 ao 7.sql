CREATE DATABASE M1S07

	--Exercicio01
CREATE TABLE Clientes(
			Id INT,
			Nome VARCHAR (50),
			Telefone VARCHAR (11),
			Endereco VARCHAR (50)
			);


	--Exercicio02
INSERT INTO Clientes VALUES (1, 'Vinicius Silva', '987654', 'Rua Girassol')
INSERT INTO Clientes VALUES (2, 'Maria Antonia', '123456', 'Rua Rosas')
INSERT INTO Clientes VALUES (3, 'Marcus Vinicius', '654123,', 'Rua Rosas')

--CORRIGINDO NÚMERO
UPDATE Clientes
SET Telefone = '654123'
WHERE Id = 3

	--Exercicio03
SELECT * FROM Clientes

	--Exercicio04
SELECT * FROM Clientes
WHERE Id = 1

	--Exercicio05
SELECT * FROM Clientes
WHERE Nome Like '%Maria%'

	--Exercicio06
UPDATE Clientes
SET Endereco = 'Rua do Limão'
WHERE Id = 3

	--Exercicio07 
DELETE Clientes
WHERE Id = 2


