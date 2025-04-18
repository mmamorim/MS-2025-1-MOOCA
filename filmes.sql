CREATE TABLE Pais (
    codigo INTEGER PRIMARY KEY AUTOINCREMENT,
    nome   TEXT
);

CREATE TABLE Genero (
    codigo INTEGER PRIMARY KEY AUTOINCREMENT,
    nome   TEXT
);

CREATE TABLE Ator (
    codigo  INTEGER PRIMARY KEY AUTOINCREMENT,
    codPais INTEGER REFERENCES Pais (codigo),
    nome    TEXT,
    idade   INTEGER,
    diretor BOOLEAN
);

CREATE TABLE Cinema (
    codigo     INTEGER PRIMARY KEY AUTOINCREMENT,
    nome       TEXT,
    localidade TEXT,
    capacidade INTEGER
);

CREATE TABLE Filme (
    codigo         INTEGER PRIMARY KEY AUTOINCREMENT,
    tituloOriginal TEXT,
    tituloNacional TEXT,
    duracao        INTEGER,
    faixaEtaria    INTEGER,
    nacional       BOOLEAN,
    codPais        REFERENCES Pais (codigo),
    codDiretor     REFERENCES Ator (codigo) 
);

CREATE TABLE ListaGenero (
    codigo    INTEGER PRIMARY KEY AUTOINCREMENT,
    descricao TEXT,
    codFilme  REFERENCES Filme (codigo),
    codGenero REFERENCES Genero (codigo) 
);

CREATE TABLE Elenco (
    codigo   INTEGER PRIMARY KEY AUTOINCREMENT,
    codFilme REFERENCES Filme (codigo),
    codAtor  REFERENCES Ator (codigo) 
);

CREATE TABLE Sessao (
    codigo     INTEGER PRIMARY KEY AUTOINCREMENT,
    codFilme   REFERENCES Filme (codigo),
    codCinema  REFERENCES Cinema (codigo),
    horaInicio INTEGER,
    horaFim    INTEGER,
    publico    INTEGER,
    emCartaz   BOOLEAN
);
