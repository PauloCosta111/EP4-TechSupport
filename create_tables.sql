
CREATE TABLE Cliente (
    ID_Cliente INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Telefone VARCHAR(20)
);

CREATE TABLE Equipamento (
    ID_Equipamento INT PRIMARY KEY,
    Tipo VARCHAR(50),
    Modelo VARCHAR(50),
    Numero_Serie VARCHAR(50)
);

CREATE TABLE Analista (
    ID_Analista INT PRIMARY KEY,
    Nome VARCHAR(100),
    Especialidade VARCHAR(100)
);

CREATE TABLE Tipo_Problema (
    ID_Tipo INT PRIMARY KEY,
    Nome_Tipo VARCHAR(100)
);

CREATE TABLE Solucao (
    ID_Solucao INT PRIMARY KEY,
    ID_Tipo INT,
    Solucao_Aplicada VARCHAR(255),
    FOREIGN KEY (ID_Tipo) REFERENCES Tipo_Problema(ID_Tipo)
);

CREATE TABLE Status (
    ID_Status INT PRIMARY KEY,
    Nome_Status VARCHAR(50)
);

CREATE TABLE Chamado (
    ID_Chamado INT PRIMARY KEY,
    Data_Abertura DATE,
    Data_Fechamento DATE,
    Descricao_Problema TEXT,
    ID_Cliente INT,
    ID_Analista INT,
    ID_Tipo INT,
    ID_Status INT,
    ID_Equipamento INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
    FOREIGN KEY (ID_Analista) REFERENCES Analista(ID_Analista),
    FOREIGN KEY (ID_Tipo) REFERENCES Tipo_Problema(ID_Tipo),
    FOREIGN KEY (ID_Status) REFERENCES Status(ID_Status),
    FOREIGN KEY (ID_Equipamento) REFERENCES Equipamento(ID_Equipamento)
);

CREATE TABLE Intervencao (
    ID_Intervencao INT PRIMARY KEY,
    ID_Chamado INT,
    Descricao_Acao TEXT,
    Data_Acao DATE,
    FOREIGN KEY (ID_Chamado) REFERENCES Chamado(ID_Chamado) ON DELETE CASCADE
);
