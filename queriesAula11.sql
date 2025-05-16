SELECT 
    Filme.codigo AS codFilme,
    Filme.tituloOriginal AS titulo,
    Pais.nome as nomePais,
    Ator.nome as nomeDiretor
FROM 
    Filme, Pais, Ator 
WHERE 
    Filme.codPais=Pais.codigo AND
    Filme.codDiretor=Ator.codigo

SELECT 
    Filme.codigo,
    Filme.tituloOriginal AS titulo,
    Genero.nome,
    ListaGenero.descricao
FROM
    Filme, Genero, ListaGenero
WHERE
    Filme.codigo=3 AND
    Filme.codigo=ListaGenero.codFilme AND
    Genero.codigo=ListaGenero.codGenero
    
SELECT 
    Filme.codigo,
    Filme.tituloOriginal AS titulo,
    Ator.nome AS nomeAtor
FROM
    Filme, Ator, Elenco
WHERE
    Filme.tituloOriginal="Pretty Woman" AND
    Filme.codigo=Elenco.codFilme AND
    Ator.codigo=Elenco.codAtor