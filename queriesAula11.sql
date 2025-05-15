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

