CREATE TABLE EDITORA(
 id_editora INT IDENTITY (1,1) PRIMARY KEY,
 cnpj VARCHAR(18) NOT NULL,
 name VARCHAR(100)NOT NULL,
 endereco VARCHAR(100) NOT NULL
);

CREATE TABLE AUTOR(
id_autor INT IDENTITY (1,1) PRIMARY KEY,
nome_autor VARCHAR(50) NOT NULL,
pais_autor VARCHAR (50) NOT NULL
);

CREATE TABLE LIVRO(
id_livro INT IDENTITY (1,1) PRIMARY KEY,
titulo_livro VARCHAR (100) NOT NULL,
ano_livro INT NOT NULL,
estoque_livro INT NOT NULL,
id_editora INT REFERENCES EDITORA(id_editora)
);

CREATE TABLE LIVRO_AUTOR(
id_livro INT  REFERENCES LIVRO (id_livro),
id_autor INT  REFERENCES AUTOR (id_autor),
CONSTRAINT  PK_LIVRO_AUTOR PRIMARY KEY (id_livro, id_autor)
);

CREATE TABLE USUARIO(
id_usuario INT IDENTITY (1,1) PRIMARY KEY,
nome_usuario VARCHAR(50) NOT NULL,
telefone_usuario VARCHAR(50) NOT NULL
);

CREATE TABLE ALUNO(
id_usuario INT PRIMARY KEY REFERENCES USUARIO (id_usuario),
ra_aluno INT NOT NULL,
curso_aluno VARCHAR(50)
);

CREATE TABLE PROFESSOR(
id_usuario INT PRIMARY KEY REFERENCES USUARIO(id_usuario),
matricula_professor INT NOT NULL,
departamento_professor VARCHAR(50) NOT NULL
);

CREATE TABLE EMPRESTIMO(
id_emprestimo INT IDENTITY (1,1) PRIMARY KEY,
id_usuario INT REFERENCES USUARIO (id_usuario),
data_emprestimo DATE NOT NULL,
data_devolucao_emprestimo DATE NOT NULL
);

CREATE TABLE ITEM_EMPRESTADO(
id_livro INT REFERENCES LIVRO(id_livro),
id_emprestimo INT REFERENCES EMPRESTIMO(id_emprestimo),
CONSTRAINT PK_EMPRESTIMO PRIMARY KEY (id_emprestimo, id_livro)
);
