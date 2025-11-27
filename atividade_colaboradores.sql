-- criacao do banco de dados
CREATE DATABASE db_rh;
USE db_rh;

-- criacao da tabela colaboradores
CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    setor VARCHAR(50) NOT NULL,
    ramal INT,
    data_admissao DATE,
    salario DECIMAL(10,2) NOT NULL,
    turno VARCHAR(15) NOT NULL
);

INSERT INTO tb_colaboradores (nome, setor, ramal, data_admissao, salario, turno)
VALUES ('Jeferson Almeida', 'Administrativo', 509, '2024-10-05', 3000.00, 'Manhã');
INSERT INTO tb_colaboradores (nome, setor, ramal, data_admissao, salario, turno)
VALUES ('Marilia Xavier Souza', 'TI', 404, '2000-05-01', 5000.00, 'Tarde');
INSERT INTO tb_colaboradores (nome, setor, ramal, data_admissao, salario, turno)
VALUES ('Ana Claudia Feitosa', 'Gerência', 425, '2005-02-15', 7000.00, 'Manhã');
INSERT INTO tb_colaboradores (nome, setor, ramal, data_admissao, salario, turno)
VALUES ('João Mendes de Azevedo', 'Financeiro', 402, '2001-06-09', 1800.00, 'Tarde');
INSERT INTO tb_colaboradores (nome, setor, ramal, data_admissao, salario, turno)
VALUES ('Valmir de Morais Batista', 'Manutenção', 500, '2004-08-04', 1999.00, 'Manhã');

SELECT * FROM tb_colaboradores
WHERE salario > 2000;

-- consulta salario menor que 2000
SELECT * FROM tb_colaboradores
WHERE salario < 2000;

-- atualizacao do salario do colaborador de Id 4
UPDATE tb_colaboradores
SET salario = 2500.00
WHERE id = 4;

SELECT * FROM tb_colaboradores

