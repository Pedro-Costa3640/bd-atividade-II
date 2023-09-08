# Exercício 2: Gerenciando Comentários de Blog
-- Criar Bando de dados chamado Blog
CREATE DATABASE Blog;

-- Selecionando o Banco de dados
USE Blog;

-- Criar uma tabela no Banco de dados selecionado
CREATE TABLE Artigos(
	Id int AUTO_INCREMENT PRIMARY KEY,
    Titulo varchar(150) not null,
    Conteudo varchar(255) not null,
    DataPublicacao varchar(10) not null
);

CREATE TABLE Comentarios(
	Id int AUTO_INCREMENT PRIMARY KEY,
    Autor varchar(255) not null,
    Texto varchar(255) not null,
    DataComentario varchar(10) not null,
    Id_Artigos int,
	FOREIGN KEY(Id_Artigos) REFERENCES Artigos(Id)
);

-- Inserindo valores nas tabelas
INSERT INTO Blog.Artigos(Titulo, Conteudo, DataPublicacao)
VALUES('O Sentido Da Vida', 
'Como será que funciona a vida? Nesse Artigo iremos te mostrar que há sim um sentido na vida e 
na influencia que as nossas escolhas alteram os rumos de nossas vidas.',
 '12/01/2020');
INSERT INTO Blog.Comentarios(Autor, Texto, DataComentario,Id_Artigos)
VALUES('Jordan Scrives', 
'Eu acho essa pauta muito interessante baseado no fato em que a todo momento corremos atrás de buscar um 
significado para nossas vidas!!',
'20/01/2020', 1),
('Mariana Caramelo', 
'Eu acho uma perda de tempo escrever algo como isso, gente é simples 
quem dá sentido a nossas vidas somos nós, bom dia!',
'22/02/2020', 1);

INSERT INTO Blog.Artigos(Titulo, Conteudo, DataPublicacao)
VALUES('Porque devemos obedecer as placas do trânsito', 
'Nesse Artigo buscamos mostrar o real significado do porque devemos prestar 
atenção nos sinais e o que eles tem a nos dizer.',
 '20/05/2021');
INSERT INTO Blog.Comentarios(Autor, Texto, DataComentario,Id_Artigos)
VALUES('Mariana Caramelo', 
'Não vejo sentido nenhum em artigo assim, sabemos que se não obedecermos as placas vamos 
sofrer um acidente ou no mínimo pagar um multa, ou seja, ou você obedece ou paga com a lingua.',
'24/05/2021', 2);

INSERT INTO Blog.Artigos(Titulo, Conteudo, DataPublicacao)
VALUES('A Necessidade de mantermos uma vida saudável', 
'Nesse Artigo buscamos mostrar o quão é importante mantermos uma vida saudável 
para que possamos viver com uma melhor saúde e desenvolvimento do nosso corpo.',
 '14/11/2021');
INSERT INTO Blog.Comentarios(Autor, Texto, DataComentario,Id_Artigos)
VALUES('Marcelo Pimenta', 
'Muito interessante, agora já sei por mim mesmo a importância de ser saudável!',
'18/11/2021', 3),
('Mariana Caramelo',
'Esse eu tenho que concordar e ler mesmo, bom dia.',
'19/11/2021', 3);

INSERT INTO Blog.Artigos(Titulo, Conteudo, DataPublicacao)
VALUES('Mente ou Coração', 
'O que você deve levar mais em conta, a mente que é a razão, ou o coração que é a emoção para tomar decisões?
Através desse artigo, iremos concretizar e esclarecer essa dúvida.',
 '26/06/2022');
INSERT INTO Blog.Comentarios(Autor, Texto, DataComentario,Id_Artigos)
VALUES('Mariana Caramelo', 
'Não tem o porque querer interferir na vida das pessoas para que ela tome decisões 
na vida dela, ainda o fazendo negligenciar se é razão ou emoção.',
'30/06/2022', 4),
('Arthur Messias',
'Olá Marina, o objetivo do artigo é ajudar as pessoas na tomada de decisões para que ela não se arrependa num futuro!',
'30/06/2022', 4),
('Mariana Caramelo', 
'Gente, a gente só aprende quabrando a cara mesmo, deixa a pessoa viver.',
'31/06/2022', 4),
('Carla Perez', 
'Se não quiser ler, não leia, mas tem pessoas que realmente querem ler Mariana!',
'01/07/2022', 4),
('Mariana Caramelo', 
'Legal, bom dia',
'31/06/2022', 4);

INSERT INTO Blog.Artigos(Titulo, Conteudo, DataPublicacao)
VALUES('O mundo está morrendo e precisamos ajuda-lo', 
'Através desse artigo buscamos ajudar o meio ambiente e mostrar a 
realidade que muitos não veem que é a destruição e o colapso que o mundo está passando.',
 '15/02/2023');
INSERT INTO Blog.Comentarios(Autor, Texto, DataComentario,Id_Artigos)
VALUES('Marcio Melo', 
'Gostei muito desse artigo e ele é muito necessário, que medo de chegarmos ao fim. Cadê a Mariana? nunca mais a vi',
'22/03/2023', 5);


SELECT * FROM Blog.Artigos;
SELECT * FROM Blog.Comentarios;