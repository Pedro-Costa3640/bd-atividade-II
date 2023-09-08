# Exercício 3: Gerenciando Departamentos e Funcionários
-- CRIAR BANCO DE DADOS
CREATE DATABASE Empresa;

-- SELECIONAR O BANCO
USE Empresa;

-- CRIAR TABELA NO BANCO
CREATE TABLE Departamentos(
	Id int auto_increment primary key,
    NomeDoDepartamento varchar(50) not null
);
CREATE TABLE Funcionarios(
	id int auto_increment primary key,
    Nome varchar(255) not null,
	Cargo varchar(50) not null,
    Salario double not null,
    Id_Departamentos int,
    foreign key(Id_Departamentos) references Departamentos(Id)
);

-- INSERIR VALORES NA TABELA DE DEPARTAMENTOS
INSERT INTO Empresa.Departamentos(NomeDoDepartamento)
VALUES ('Saúde');
INSERT INTO Empresa.Departamentos(NomeDoDepartamento)
VALUES ('Engenharia');
INSERT INTO Empresa.Departamentos(NomeDoDepartamento)
VALUES ('Administração');
INSERT INTO Empresa.Departamentos(NomeDoDepartamento)
VALUES ('Recursos Humanos');
INSERT INTO Empresa.Departamentos(NomeDoDepartamento)
VALUES ('Tecnologia da Informação');

-- INSERIR VALORES NA TABELA DE FUNCIONARIOS
INSERT INTO Empresa.Funcionarios(Nome, Cargo, Salario, Id_Departamentos)
VALUES('Mônica Ferreira', 'Gerente', 13700.00, 3),
('Rodrigo Silveira', 'Desenvolvedor Sênior', 10500, 5),
('Mercia Junquera', 'Analista de serviços', 5600.75, 4),
('Caique Costa', 'Engenheiro', 6300.50, 2),
('Mariana Mendes', 'Engenheiro', 6300.50, 2);

-- SELECIONAR E MOSTRAR INFORMAÇÕES DA TABELA
SELECT * FROM Empresa.Departamentos;

SELECT * FROM Empresa.Funcionarios;
