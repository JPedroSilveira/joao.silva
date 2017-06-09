	
SELECT TOP 100 * FROM Festa;
SELECT TOP 100 * FROM Opcional;
SELECT TOP 100 * FROM Pacote;
SELECT TOP 100 * FROM Reserva;
	
SELECT TOP 100 * FROM Cliente;

UPDATE Reserva SET DataDevolucao_Prevista = '2016-06-20' WHERE ID = 27;
UPDATE Reserva SET DataDevolucao_Real = '2016-06-20' WHERE ID = 27;

UPDATE Reserva SET DataDevolucao_Prevista = '2016-06-20' WHERE ID = 16;
SELECT TOP 100 * FROM [dbo].[__MigrationHistory];

INSERT INTO Festa (Nome, CustoDiaria, CustoMulta) VALUES ('Infantil',3250.00,300.00);
INSERT INTO Festa (Nome, CustoDiaria, CustoMulta) VALUES ('Adulto',3100.00,280.00);
INSERT INTO Festa (Nome, CustoDiaria, CustoMulta) VALUES ('Casamento',4250.00,350.00);
INSERT INTO Festa (Nome, CustoDiaria, CustoMulta) VALUES ('Formatura',2790.00,250.00);

INSERT INTO Opcional (Quantidade, Nome, CustoDiaria, CustoMulta) VALUES (15,'Piscina de Bolinhas',250.00,260.00);
INSERT INTO Opcional (Quantidade, Nome, CustoDiaria, CustoMulta) VALUES (10,'Carrinho de Algod�o Doce',300.00,350.00);
INSERT INTO Opcional (Quantidade, Nome, CustoDiaria, CustoMulta) VALUES (30,'Cama El�stica',200.00,210.00);
INSERT INTO Opcional (Quantidade, Nome, CustoDiaria, CustoMulta) VALUES (25,'Escorregador Infl�vel',260.00,270.00);

INSERT INTO Pacote (Nome, Decoracao, Instalacao, Equipe, CustoDiaria, CustoMulta) VALUES ('B�sico',1,0,0,500.99,500.00);
INSERT INTO Pacote (Nome, Decoracao, Instalacao, Equipe, CustoDiaria, CustoMulta) VALUES ('Intermedi�rio',1,1,0,1000.99,400.00);
INSERT INTO Pacote (Nome, Decoracao, Instalacao, Equipe, CustoDiaria, CustoMulta) VALUES ('Avan�ado',1,1,1,2000.00,250.00);

INSERT INTO Cliente (Nome, Endereco, CPF, Genero, DataNascimento, Email) VALUES('Harry','Rua X Bairro Y - Cidade/Estado','05303603298','Masculino','1999-02-21','harry@potter.com');

INSERT INTO Usuario (Nome, Senha, Email, Permissao) VALUES('Gerente','a354e39944c702a9edd8c2d6a84ae4d0','gerente@gmail.com','Gerente');

INSERT INTO Usuario (Nome, Senha, Email, Permissao) VALUES('Arthur','e5c24b4856408731fde96bd3e1c6493a','funcionario@gmail.com','Gerente');

INSERT INTO Cliente (Nome, Endereco, CPF, Genero, DataNascimento, Email) VALUES('Laura','Rua Y Bairro X - Cidade/Estado','02365230375','Feminino','1999-01-19','laura@gmail.com');


UPDATE Reserva SET DataDevolucao_Real = '2017-06-06' WHERE Id = 1;

UPDATE USUARIO SET PERMISSAO = 'Funcionario' WHERE ID = 3;

UPDATE Reserva SET DataDevolucao_Real = NULL WHERE Id = 1;

UPDATE Reserva SET DataDevolucao_Prevista = '2017-06-06' WHERE Id = 11;

UPDATE Reserva SET DataLocacao = '1999-02-10' WHERE Id = 9;
UPDATE Reserva SET DataDevolucao_Prevista = '1999-02-21' WHERE Id = 9;
UPDATE Reserva SET DataDevolucao_Real = '1999-02-20' WHERE Id = 9;

UPDATE RESERVA SET DataLocacao = '2017-01-20' WHERE Id = 14;
UPDATE RESERVA SET DataDevolucao_Prevista = '2017-06-06' Where Id = 14;