CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;
CREATE TABLE IF NOT EXISTS Livros (
	id INT AUTO_INCREMENT PRIMARY KEY,
	titulo VARCHAR(100), 
	data_publicacao  DATE,
	qtd_paginas INT,
	edicao VARCHAR(15),
	isbn INT,
	idioma VARCHAR(2),
	disponibilidade BOOLEAN,
	id_autores_fk INT ,
	id_generos_fk INT ,
	id_editoras_fk INT   
);
  CREATE TABLE IF NOT EXISTS Pessoas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(50),
    cpf VARCHAR(15),
    telefone VARCHAR(15),
    nasc DATE,
    id_enderecos_fk INT
);
  CREATE Table IF NOT EXISTS Usuarios( 
  id INT AUTO_INCREMENT PRIMARY KEY,
  senha VARCHAR(12),
  id_pessoas_fk INT 
);
 CREATE Table IF NOT EXISTS Funcionarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  senha VARCHAR(12),
  cargo ENUM('Atendente','Bibliotecario','Restaurador','Auxiliar de Limpeza','Bibliotecario'),
  id_pessoas_fk INT 
);
  CREATE Table IF NOT EXISTS Autores (
  id INT AUTO_INCREMENT PRIMARY KEY,
  qtd_livros INT,
  id_pessoas_fk INT
);
CREATE Table IF NOT EXISTS Enderecos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  rua VARCHAR(100),
  numero_casa INT,
  cep INT,
  complemento VARCHAR(25)  
);
CREATE Table IF NOT EXISTS Editoras (
  id INT AUTO_INCREMENT PRIMARY KEY ,
  nome VARCHAR(50),
  cnpj VARCHAR(20),
  telefone VARCHAR(15),
  email varchar(50)
);
  CREATE Table IF NOT EXISTS Generos ( 
  id INT AUTO_INCREMENT PRIMARY KEY,
  categoria enum('Ação','Suspense','Comédia','Terror','Policial','Drama','Ficção')
);
 CREATE Table IF NOT EXISTS Emprestimos (
id INT AUTO_INCREMENT PRIMARY KEY,
data_emprest DATE,
data_devolucao DATE,
id_livros_fk INT, 
id_funcionarios_fk INT, 
id_usuarios_fk INT 
);
ALTER TABLE Livros ADD FOREIGN KEY (id_autores_fk) REFERENCES Autores (id);
ALTER TABLE Livros ADD FOREIGN KEY (id_generos_fk) REFERENCES Generos (id);
ALTER TABLE Livros ADD FOREIGN KEY (id_editoras_fk) REFERENCES Editoras (id);
ALTER TABLE Pessoas ADD FOREIGN KEY (id_enderecos_fk) REFERENCES Enderecos (id);
ALTER TABLE Usuarios ADD FOREIGN KEY (id_pessoas_fk) REFERENCES Pessoas (id);
ALTER TABLE Funcionarios ADD FOREIGN KEY (id_pessoas_fk) REFERENCES Pessoas (id);
ALTER TABLE Autores  ADD FOREIGN KEY (id_pessoas_fk) REFERENCES Pessoas (id);
ALTER TABLE Emprestimos  ADD FOREIGN KEY (id_livros_fk) REFERENCES Livros (id);
ALTER TABLE Emprestimos  ADD FOREIGN KEY (id_funcionarios_fk) REFERENCES Funcionarios (id);
ALTER TABLE Emprestimos  ADD FOREIGN KEY (id_usuarios_fk) REFERENCES Usuarios (id);



	   