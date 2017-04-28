--CRIA��O DE TABELAS PARA LISTA 1 DE EXERCICIOS BANCO DE DADOS I
USE [crescer-2017];

--Limpa tudo

/*
BEGIN TRANSACTION
DROP TABLE Cidade;
DROP TABLE CidadeAux;
DROP TABLE Produto;

--ROLLBACK
COMMIT;
*/


CREATE TABLE Cidade
(
  IDCidade  INT NOT NULL,
  Nome      VARCHAR(30) NOT NULL,
  UF        VARCHAR(2)  NOT NULL,
  CONSTRAINT PK_Cidade PRIMARY KEY (IDCidade)
);	

INSERT INTO Cidade (IDCidade, Nome, UF)  --INSER��ES TIRADAS DA AULA 1 DE BANCO DE DADOS I - CRESCER 2017
   VALUES (1,'Sao Leopoldo', 'RS'),
		  (2,'Porto Alegre', 'RS'),
		  (3,'Parobe', 'RS'),
		  (4,'Taquara', 'RS'),
          (5,'S�o Paulo', 'SP'),
          (6,'Guarulhos', 'SP'),
          (7,'Rio de Janeiro', 'RJ'),
          (8,'Brasilia', 'DF'),
          (9,'Belo Horizonte', 'MG'),
          (10,'Uberl�ndia', 'MG'),
          (11,'Cidade de Alagoas', 'AL'),
          (12,'Maceio', 'AL'),
          (13,'Itu', 'SP'),
          (14,'Campinas', 'SP'),
          (15,'Guaratingueta', 'SP');

--EXERCICIOS

	--EXERCICIO 1
	
	--DROP TABLE CidadeAux;
	

	SELECT * INTO CidadeAux FROM Cidade;

	SELECT * FROM CidadeAux;


	--EXERCICIO 2

	-- DELETE FROM CidadeAux; -- MAIS LENTO QUE O TRUNCATE POREM COM OP��O DE ROLLBACK

	BEGIN TRANSACTION
	
	Truncate table CidadeAux; -- APAGA TODOS OS DADOS DA TABELA SEM OP��O DE ROLLBACK,SENDO MAIS R�PIDO MAS SEM OP��O DE VOLTA
	
	--ROLLBACK
	COMMIT;

	SELECT * FROM CidadeAux;

	INSERT INTO CidadeAux (IDCidade, Nome, UF)  
		SELECT  IDCidade, Nome, UF FROM Cidade WHERE Cidade.UF = 'RS';

	SELECT * FROM CidadeAux;

	--EXERCICIO 3

	CREATE TABLE Produto(
	IDProduto INT IDENTITY(1,1) NOT NULL,
	NomeCurto VARCHAR(50) NOT NULL,
	NomeDescritivo VARCHAR(100) NOT NULL,
	DataDeCriacao DATETIME() NOT NULL,
	LocalDeEstoque VARCHAR(50) NOT NULL,
	Quantidade INT NOT NULL,
	Preco FLOAT NOT NULL,
	CONSTRAINT PK_PRODUTO PRIMARY KEY (IDProduto)
	);

	INSERT INTO Produto(NomeCurto,NomeDescritivo,DataDeCriacao,LocalDeEstoque,Quantidade,Preco)
		VALUES
		('Trakinas Chocolate','Biscoito recheado sabor chocolate Trakinas 100g com tudo artificial',CONVERT(DATETIME,'2017-04-28',111),'Setor de alimentos',150,4.99),
		('TV SAMSUNG 60"','Televis�o LED 4K DE 60 polegadas, marca Samsung',CONVERT(DATETIME,'2017-04-28',111),'Setor de eletr�nicos',10,26000.00);

	SELECT * FROM Produto;

