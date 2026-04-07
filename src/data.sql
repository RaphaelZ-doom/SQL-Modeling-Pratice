INSERT INTO EDITORA (cnpj, name, endereco)
VALUES ('342424524-12', 'calipso', 'Sao Paulo,SP, N3092' );

INSERT INTO AUTOR (nome_autor, pais_autor)
VALUES ('Carlos maciel de Souza', 'Brasil');

INSERT INTO LIVRO (titulo_livro, ano_livro, estoque_livro, id_editora)
VALUES ('Senhor dos Aneis', 2004, 50, 1 );

INSERT  INTO LIVRO_AUTOR (id_livro, id_autor)
VALUES  (1,1);

INSERT INTO USUARIO (nome_usuario, telefone_usuario)
VALUES ('jose carlos', '91244-1243');

INSERT INTO ALUNO (id_usuario, ra_aluno, curso_aluno)
VALUES (1, 33156, 'sistemas de informaçao');

INSERT INTO PROFESSOR (id_usuario, matricula_professor, departamento_professor)
VALUES (1, 83450, 'ciencias exatas');

INSERT INTO EMPRESTIMO (id_usuario, data_emprestimo, data_devolucao_emprestimo )
VALUES (1,'2025/02/11', '2025/2/21');

INSERT INTO ITEM_EMPRESTADO (id_emprestimo, id_livro)
VALUES (3,1);
