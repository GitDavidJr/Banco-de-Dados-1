-- ======================
-- Banco de Dados EMPRESA
-- ======================

DROP DATABASE IF EXISTS empresa;

CREATE DATABASE empresa;
USE empresa;

CREATE TABLE Funcionario (
  CODFUNC  INTEGER AUTO_INCREMENT,
  NOME    VARCHAR(40) NOT NULL,
  DEPTO   CHAR(2),
  FUNCAO  VARCHAR(20),
  SALARIO DECIMAL(6, 2),
  ADMISSAO DATE,
  FILHOS TINYINT,
  PRIMARY KEY (CODFUNC)
);

INSERT INTO Funcionario (NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS) VALUES ('CARLOS MACEDO CERRI', '3', 'VENDEDOR', 1530.00, '2010-05-25', NULL);
INSERT INTO Funcionario (NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS) VALUES ('HENRIQUE SOUZA MARCOS', '2', 'GERENTE', 3985.75, '2009-07-01', 2);
INSERT INTO Funcionario (NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS) VALUES ('ADRIANA ARAUJO DA SILVA', '3', 'SECRETARIA', 1200.50, '2012-07-10', 1);
INSERT INTO Funcionario (NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS) VALUES ('SOLANGE APARECIDA SOUZA', '5', 'SUPERVISOR', 1599.51, '2006-12-08', 3);
INSERT INTO Funcionario (NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS) VALUES ('MARCELO AMORIM PACHECO', '3', 'ANALISTA', 2850.11, '2005-06-06', NULL);
INSERT INTO Funcionario (NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS) VALUES ('CELIA ASSIS DO AMARAL', '2', 'SECRETARIA', 1200.50, '2009-01-10', 1);
INSERT INTO Funcionario (NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS) VALUES ('WILSON CAMPOS MACEDO', '3', 'PROGRAMADOR', 2050.00, '2012-11-07', NULL);
INSERT INTO Funcionario (NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS) VALUES ('AUGUSTO AGUIAR SOUZA', '3', 'PROGRAMADOR', 2050.00, '2010-05-26', NULL);
INSERT INTO Funcionario (NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS) VALUES ('JESSICA ALVES TOLEDO', '2', 'SUPERVISOR', 2100.00, '2006-07-05', 4);
INSERT INTO Funcionario (NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS) VALUES ('VITORIA CRUZ ALMEIDA', '2','ANALISTA', 2500.00, '2006-05-23', 1);
INSERT INTO Funcionario (NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS) VALUES ('MARCIO CANUTO DOS SANTOS', '2', 'PROGRAMADOR', 1800.00, '2008-07-29', NULL);
INSERT INTO Funcionario (NOME, DEPTO, FUNCAO, SALARIO, ADMISSAO, FILHOS) VALUES ('CRISTINA CACHOEIRA BUZZI', '5', 'SUPERVISOR', 1950.00, '2011-07-14', 2);


SHOW TABLES;
DESCRIBE Funcionario;