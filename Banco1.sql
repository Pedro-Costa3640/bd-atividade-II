# Exercício 1: Gerenciando Pedidos de Clientes
-- Criando o Banco de dados
CREATE DATABASE Empresa;

-- Selecionando o Banco de dados 
USE Empresa;

-- Criando Tabela Clientes para o Banco de dados
CREATE TABLE Clientes(
	Id int auto_increment PRIMARY KEY,
    Nome varchar(255) not null,
    Telefone varchar(22) not null,
    Email varchar(255) not null UNIQUE
);

-- Criando Tabela Pedidos para o Banco de dados
CREATE TABLE Pedidos(
	Id int auto_increment PRIMARY KEY,
    DataPedido varchar(10) not null,
    ValorTotal double not null,
    Id_Clientes int,
	FOREIGN KEY(Id_Clientes) REFERENCES Clientes(Id)
);

-- Inserindo Registros na Tabela Clientes
INSERT INTO Empresa.Clientes(Nome,Telefone,Email)
VALUES('Kleiton Alvira', '(71) 98888-5555', 'kleitona5@gmail.com');
INSERT INTO Empresa.Pedidos(DataPedido,ValorTotal, Id_Clientes)
VALUES('20/04/2023', 328.80, 1);

INSERT INTO Empresa.Clientes(Nome,Telefone,Email)
VALUES('Carol Brandão', '(71) 97777-4444', 'carolzinhalinda4@gmail.com');
INSERT INTO Empresa.Pedidos(DataPedido,ValorTotal, Id_Clientes)
VALUES('16/11/2022', 967.00, 2);

INSERT INTO Empresa.Clientes(Nome,Telefone,Email)
VALUES('Miley Cyrus Santos', '(71) 96666-3333', 'hannamonatana@gmail.com');
INSERT INTO Empresa.Pedidos(DataPedido,ValorTotal, Id_Clientes)
VALUES('06/08/2023', 2550.75, 3), 
	('07/08/2023', 746.50, 3);

INSERT INTO Empresa.Clientes(Nome,Telefone,Email)
VALUES('Bridgit Mendes', '(71) 95555-2222', 'bridgithurri@gmail.com');
INSERT INTO Empresa.Pedidos(DataPedido,ValorTotal, Id_Clientes)
VALUES('30/12/2022', 1230.00, 4),
('10/01/2023', 980.56, 4),
('24/03/2023', 540.20, 4);

INSERT INTO Empresa.Clientes(Nome,Telefone,Email)
VALUES('Paulo Cézar', '(71) 94444-1111', 'paulocezar@gmail.com');
INSERT INTO Empresa.Pedidos(DataPedido,ValorTotal, Id_Clientes)
VALUES('20/05/2023', 640.30, 5);

-- Selecionando a tabela para a visualização
SELECT * FROM Empresa.Clientes;

SELECT * FROM Empresa.Pedidos;
