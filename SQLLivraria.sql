CREATE DATABASE livraria
GO
USE livraria
GO
CREATE TABLE editora
(
	id_editora				INT IDENTITY(491, 16)		NOT NULL,
	nome					VARCHAR(70)			NOT NULL UNIQUE,
	telefone				VARCHAR(11)			NOT NULL CHECK(LEN(telefone) = 10 OR LEN(telefone) = 11),
	logradouro_end				VARCHAR(200)			NOT NULL,
	numero_end				INT				NOT NULL CHECK(numero_end >= 0),
	cep_end					CHAR(8)				NOT NULL CHECK(cep_end = 8),
	complemento_end				VARCHAR(255)			NOT NULL
	PRIMARY KEY(id_editora)
)
GO
CREATE TABLE edicao
(
	isbn_edicao				CHAR(13)			NOT NULL CHECK(LEN(isbn_edicao) = 13),
	preco					DECIMAL(4, 2)			NOT NULL CHECK(preco >= 0),
	ano					INT				NOT NULL CHECK(ano >= 1993),
	numero_pag				INT				NOT NULL CHECK(numero_pag >= 15),
	qntd_estoque				INT				NOT NULL
	PRIMARY KEY (isbn_edicao)
)
GO
CREATE TABLE livro
(
	codigo_livro				INT IDENTITY(100001, 100)	NOT NULL,
	nome					VARCHAR(200)			NOT NULL,
	lingua					VARCHAR(10)			NOT NULL DEFAULT('PT-BR') CHECK
													(
														lingua = 'PT-BR' OR 
														lingua = 'EN-US' OR 
														lingua = 'DE-DE' OR 
														lingua = 'EN-GB'
													),
	ano					INT				NOT NULL CHECK(ano >= 1990)
	PRIMARY KEY(codigo_livro)
)
GO
CREATE TABLE autor
(
	id_autor				INT IDENTITY(2351, 1)		NOT NULL,
	nome					VARCHAR(100)			NOT NULL UNIQUE,
	data_nasc				DATE				NOT NULL,
	pais_nasc				VARCHAR(50)			NOT NULL,
	biografia				VARCHAR(255)			NOT NULL
	PRIMARY KEY(id_autor)
)
GO
CREATE TABLE livro_autor
(
	codigo_livro				INT				NOT NULL,
	id_autor				INT				NOT NULL
	PRIMARY KEY(codigo_livro, id_autor)
	FOREIGN KEY(codigo_livro) REFERENCES livro(codigo_livro),
	FOREIGN KEY(id_autor) REFERENCES autor(id_autor)
)
GO
CREATE TABLE editora_edicao_livro
(
	id_editora				INT				NOT NULL,
	isbn_edicao				CHAR(13)			NOT NULL,
	codigo_livro				INT				NOT NULL
	PRIMARY KEY(id_editora, isbn_edicao, codigo_livro)
	FOREIGN KEY(id_editora) REFERENCES editora(id_editora),
	FOREIGN KEY(isbn_edicao) REFERENCES edicao(isbn_edicao),
	FOREIGN KEY(codigo_livro) REFERENCES livro(codigo_livro)
)
