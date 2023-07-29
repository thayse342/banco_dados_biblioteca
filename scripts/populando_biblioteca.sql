USE `biblioteca`;

INSERT INTO Enderecos (id,rua,numero_casa,cep,complemento) VALUES
(1,'Rua do Corno',89,758952,'Rua sem Saída'),
(2,'Rua Grito de Alerta',50,956800,'Casa dos Fundos'),
(3,'Rua Deus te Guarde',777,506678,'Segunda Casa'),
(4,'Rua Deus te Elimine',666,34567890,'Ao lado do Hospital'),
(5,'Rua Tenha uma Ultima Semana',22,234567800,'Cem anos Plantando Homens na Terra- Funerária Agricola');

INSERT INTO Editoras (id,nome,cnpj,telefone,email) VALUES
(6,'Construindo Sonho','956780001524','55418985067')
(7,'Tudo Pode Ser','06789000118',)
(8,'Agora Vai','754380001523',)
(9,'Sempre Soube','432480001456',)
(10,'Romanticos Nós','432480001456',)


INSERT INTO Livros (titulo, data_publicacao, qtd_paginas, edicao, isbn, idioma,	disponibilidade, id_autores_fk,	id_generos_fk,	id_editoras_fk)
VALUES 
('A volta dos que foram','1990-02-11',300,'Primeira',100,'BR',0,1,1,1),
('As pistoleiras sem dedos','1998-02-11',100,'Segunda',100,'BR',0,2,1,2),
('Pueira no fundo do mar','2000-03-12',300,'Primeira',100,'BR',0,3,1,1),
('O dia que foi noite','1990-02-13',300,'Primeira',100,'BR',1,4,1,3),
('Rapunzel careca','1990-02-01',200,'Primeira',100,'BR',1,5,1,5);


INSERT INTO Pessoas ( nome, email, cpf, telefone, nasc, id_enderecos_fk)
VALUES 
('Leo Alegre','leo@souemail','444333556','9918090','1987-04-01',1),
('Luluzinha Almeida', 'lUlu@lindaemail','555999564','2000-03-02',2),
('Runivaldo Alencar', 'runizinhinho@email','777888952','1999-04-09',3),
('Jujuba Navida', 'navida@email','789555667','2022-06-11',4),
('Jujuba Navida', 'navida@email','789555667','2022-06-11',5)
