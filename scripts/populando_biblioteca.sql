USE `biblioteca`;

INSERT INTO Livros (titulo, data_publicacao, qtd_paginas, edicao, isbn, idioma,	disponibilidade, id_autores_fk,	id_generos_fk,	id_editoras_fk)
VALUE 
('A volta dos que foram','1990-02-11',300,'Primeira',100,'BR',0,1,1,1),
('As pistoleiras sem dedos','1998-02-11',100,'Segunda',100,'BR',0,2,1,2),
('Pueira no fundo do mar','2000-03-12',300,'Primeira',100,'BR',0,3,1,1),
('O dia que foi noite','1990-02-13',300,'Primeira',100,'BR',1,4,1,3),
('Rapunzel careca','1990-02-01',200,'Primeira',100,'BR',1,5,1,5);


INSERT INTO Pessoas ( nome, email, cpf, telefone, nasc, id_enderecos_fk)
VALUE 
('Leo Alegre','leo@souemail','444333556','9918090','1987-04-01',1),
('Luluzinha Almeida', 'lUlu@lindaemail','555999564','2000-03-02',2),
('Runivaldo Alencar', 'runizinhinho@email','777888952','1999-04-09',3),
('Jujuba Navida', 'navida@email','789555667','2022-06-11',4),
('Jujuba Navida', 'navida@email','789555667','2022-06-11',5)
