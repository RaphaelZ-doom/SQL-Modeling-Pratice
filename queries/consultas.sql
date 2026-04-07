SELECT 
    U.nome_usuario AS 'Quem Pegou',
    L.titulo_livro AS 'Livro',
    ED.name AS 'Editora',
    E.data_emprestimo AS 'Data Retirada',
    E.data_devolucao_emprestimo AS 'Prazo Devolução'
FROM EMPRESTIMO E
JOIN USUARIO U ON E.id_usuario = U.id_usuario
JOIN ITEM_EMPRESTADO IE ON E.id_emprestimo = IE.id_emprestimo
JOIN LIVRO L ON IE.id_livro = L.id_livro
JOIN EDITORA ED ON L.id_editora = ED.id_editora;

SELECT * FROM LIVRO 
WHERE id_editora  = 1;
