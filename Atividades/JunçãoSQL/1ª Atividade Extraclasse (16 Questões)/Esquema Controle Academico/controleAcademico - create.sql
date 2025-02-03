-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

DROP DATABASE IF EXISTS controleAcademico;

CREATE DATABASE controleAcademico;
USE controleAcademico;

CREATE TABLE Aluno (
matricula CHAR(8) PRIMARY KEY,
dataNascimento DATE NOT NULL,
sexo ENUM('m', 'f') NOT NULL,
nome VARCHAR(50) NOT NULL,
rua VARCHAR(50) NOT NULL,
uf CHAR(2) NOT NULL,
cidade VARCHAR(20) NOT NULL,
numero SMALLINT NOT NULL,
bairro VARCHAR(20) NOT NULL,
codCurso SMALLINT NOT NULL,
CONSTRAINT u_nome_aluno UNIQUE (nome)
);

CREATE TABLE AlunoTelefone (
matricula CHAR(8),
nroTelefone CHAR(10),
PRIMARY KEY(matricula,nroTelefone),
FOREIGN KEY(matricula) REFERENCES Aluno (matricula)
);

CREATE TABLE Curso (
codCurso SMALLINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(40) NOT NULL,
codDepart SMALLINT NOT NULL,
CONSTRAINT u_nome_curso UNIQUE (nome)
);

CREATE TABLE Departamento (
codDepart SMALLINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(40) NOT NULL
);

CREATE TABLE Disciplina (
codDisciplina SMALLINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
semestre ENUM('I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X') NOT NULL DEFAULT 'I',
cargaHoraria TINYINT NOT NULL,
CONSTRAINT u_nome_disciplina UNIQUE (nome)
);

CREATE TABLE Matriculado (
matricula CHAR(8),
codDisciplina SMALLINT,
PRIMARY KEY(matricula,codDisciplina),
FOREIGN KEY(matricula) REFERENCES Aluno (matricula),
FOREIGN KEY(codDisciplina) REFERENCES Disciplina (codDisciplina)
);

CREATE TABLE Concluido (
codDisciplina SMALLINT,
matricula CHAR(8),
nota DECIMAL(3,1) NOT NULL,
PRIMARY KEY(codDisciplina,matricula),
FOREIGN KEY(codDisciplina) REFERENCES Disciplina (codDisciplina),
FOREIGN KEY(matricula) REFERENCES Aluno (matricula)
);

CREATE TABLE Ministra (
matricula CHAR(8),
codDisciplina SMALLINT,
ano YEAR NOT NULL,
semestre ENUM('I', 'II') NOT NULL,
PRIMARY KEY(matricula,codDisciplina),
FOREIGN KEY(codDisciplina) REFERENCES Disciplina (codDisciplina)
);

CREATE TABLE Prerequisito (
codDisciplina SMALLINT,
codPrerequisito SMALLINT,
PRIMARY KEY(codDisciplina,codPrerequisito),
FOREIGN KEY(codDisciplina) REFERENCES Disciplina (codDisciplina),
FOREIGN KEY(codPrerequisito) REFERENCES Disciplina (codDisciplina)
);

CREATE TABLE Professor (
matricula CHAR(8) PRIMARY KEY,
nome VARCHAR(60) NOT NULL,
titulacao ENUM('Graduação', 'Especialização', 'Mestrado', 'Doutorado') NOT NULL
);

ALTER TABLE Aluno ADD FOREIGN KEY(codCurso) REFERENCES Curso (codCurso);
ALTER TABLE Curso ADD FOREIGN KEY(codDepart) REFERENCES Departamento (codDepart);
ALTER TABLE Ministra ADD FOREIGN KEY(matricula) REFERENCES Professor (matricula);
