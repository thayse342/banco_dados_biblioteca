USE `biblioteca`;

INSERT INTO Enderecos (id,rua,numero_casa,cep,complemento) VALUES
(1,'Rua do Corno',89,758952,'Rua sem Saída'),
(2,'Rua Grito de Alerta',50,956800,'Casa dos Fundos'),
(3,'Rua Deus te Guarde',777,506678,'Segunda Casa'),
(4,'Rua Deus te Elimine',666,34567890,'Ao lado do Hospital'),
(5,'Rua Tenha uma Ultima Semana',22,234567800,'Cem anos');

INSERT INTO Editoras (id,nome,cnpj,telefone,email) VALUES
(6,'Construindo Sonho','956780001524','55418985067','construindosonho@gmail.com'),
(7,'Tudo Pode Ser','06789000118','55678986068','tudopodeser@hotmail.com'),
(8,'Agora Vai','754380001523','55456788901','agoravai@gmail.com'),
(9,'Sempre Soube','432480001456',55345897789,'sempresoube@yahoo.com'),
(10,'Romanticos Nós','432480001456',55356645789,'romanticosnos@hotmail.com');

INSERT INTO Generos (id,categoria) VALUES
(11,'Ação'),
(12,'Suspense'),
(13,'Comédia'),
(14,'Terror'),
(15,'Policial');

INSERT INTO Pessoas (id,nome,email,cpf,telefone,nasc,id_enderecos_fk) VALUES 
(16,'Leo Alegre','leo@souemail','444333556','9918090','1987-04-01',1),
(17,'Luluzinha Almeida','lUlu@lindaemail.com','555999564','9917095', '2000-03-02',2),
(18,'Runivaldo Alencar','runizinhinho@email.com','777888952','9916099','1999-04-09',3),
(19,'Jujuba Navida','navida@email.com','789555667','99170568','2022-06-11',4),
(20,'Jujuba Navida','navida@email.com','789555667','991505698','2022-06-11',5);

INSERT INTO Usuarios(id,senha,id_pessoas_fk) VALUES
(21,'Adivinha',16),
(22,'TentaDenovo',17),
(23,'Faltoualgo',18),
(24,'Naoerroursrs',19),
(25,'Serioquerrou',20);

INSERT INTO Funcionarios(id,senha,cargo,id_pessoas_fk) VALUES
(26,'Viverarte','Atendente',16),
(27,'Felicidade','Bibliotecario',17),
(28,'Sebo123','Restaurador',18),
(29,'Dia...','Auxiliar de Limpeza',19),
(30,'@#isso','Bibliotecario',20);

INSERT INTO Autores(id,qtd_livros,id_pessoas_fk) VALUES
(31,2,16),
(32,3,17),
(33,4,18),
(34,5,19),
(35,6,20);

INSERT INTO Livros (id,titulo, data_publicacao, qtd_paginas, edicao, isbn, idioma,	disponibilidade, id_autores_fk,	id_generos_fk,	id_editoras_fk) VALUES
 
(36,'A volta dos que foram','1990-02-11',300,'Primeira',100,'BR',0,31,11,6),
(37,'As pistoleiras sem dedos','1998-02-11',100,'Segunda',100,'BR',0,32,12,7),
(38,'Pueira no fundo do mar','2000-03-12',300,'Primeira',100,'BR',0,33,13,8),
(39,'O dia que foi noite','1990-02-13',300,'Primeira',100,'BR',1,34,14,9),
(40,'Rapunzel careca','1990-02-01',200,'Primeira',100,'BR',1,35,15,10);

INSERT INTO Emprestimos (id,data_emprest,data_devolucao,id_livros_fk,id_funcionarios_fk,id_usuarios_fk) VALUES
(41,'2021-04-13','2021-06-13',36,26,21),
(42,'2022-05-18','2022-07-18',37,27,22),
(43,'2023-07-20','2023-09-20',38,28,23),
(44,'2012-08-12','2012-10-12',39,29,24),
(45,'2000-09-13','2000-11-13',40,30,25);

