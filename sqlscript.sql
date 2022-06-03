REM   Script: PROJETO INTEGRADO DE GESTÃO DE PROJETOS E DE DADOS
REM   PROJETO INTEGRADO DE GESTÃO DE PROJETOS E DE DADOS

CREATE TABLE Aluno 
( 
    Nr_Rgm NUMBER(8) NOT NULL, 
    Nm_Nome VARCHAR2(40) NOT NULL, 
    Nm_Pai VARCHAR2(40), 
    Nm_Mae VARCHAR2(40) NOT NULL, 
    Dt_Nascimento DATE NOT NULL, 
    Id_Sexo CHAR(1) NOT NULL, 
    CONSTRAINT Nr_Rgm_Aluno_pk PRIMARY KEY (Nr_Rgm), 
    CONSTRAINT Id_Sexo_ck CHECK(Id_Sexo IN ('M','F')) 
);

CREATE TABLE Classe 
( 
    Cd_Classe NUMBER(8) NOT NULL, 
    Nr_AnoLetivo NUMBER(4) NOT NULL, 
    Nr_Serie NUMBER(2) NOT NULL, 
    Sg_Turma VARCHAR2(2) NOT NULL, 
    Cd_Escola NUMBER(6) NOT NULL, 
    Cd_Grau NUMBER(2) NOT NULL, 
    Cd_Periodo NUMBER(2) NOT NULL, 
    CONSTRAINT Cd_Classe_pk PRIMARY KEY (Cd_Classe) 
);

CREATE TABLE Matricula 
( 
    Nr_Rgm NUMBER(8), 
    Cd_Classe NUMBER(8), 
    Dt_Matricula DATE NOT NULL, 
    CONSTRAINT Nr_Rmg_Matricula_pk FOREIGN KEY (Nr_Rgm) REFERENCES Aluno(Nr_Rgm), 
    CONSTRAINT Cd_Classe_Matricula_pk FOREIGN KEY (Cd_Classe) REFERENCES Classe(Cd_Classe)     
);

INSERT INTO Aluno VALUES (98765432, 'Diego', 'Jose', 'Maria', DATE'1989-03-09', 'M');

INSERT INTO Classe VALUES (20220202, 2022, 02, 01, 000022, 05, 01);

INSERT INTO Matricula (Dt_Matricula) VALUES (DATE'2021-12-31');

SELECT * FROM Aluno;

SELECT * FROM Classe;

SELECT * FROM Matricula;

