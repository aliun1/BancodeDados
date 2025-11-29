CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT, -- 1,2,3...
	fase_do_jogo VARCHAR(50) NOT NULL,
    tipo_classe VARCHAR(50) NOT NULL, -- nome da coluna (tipo classe do personagem: "Guerreiro" e etc)
    PRIMARY KEY (id) 
);

CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	nivel_de_forca INT NOT NULL,
	nivel_de_defesa INT NOT NULL,
    data_da_luta DATE,
	fatalities INT,
    -- cria uma coluna chamada classe_id permite armazenar numeros e essa coluna guarda o ID da classe 
    -- exemplo:  "classe_id = 1 -> Guerreiro"
    classe_id BIGINT, 
    PRIMARY KEY (id), -- define a coluna id como chave primaria
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id) --
);

INSERT INTO tb_classes (fase_do_jogo, tipo_classe) VALUES
('Earthrealm', 'Lutador'),
('Outworld', 'Ninja'),
('Netherrealm', 'Feiticeiro'),
('Edenia', 'Assassino'),
('Shang Tsung Island', 'Chefe');

INSERT INTO tb_personagens(nome, nivel_de_forca, nivel_de_defesa, data_da_luta, fatalities, classe_id)
VALUES
('Scorpion', 2800, 1500, '2025-01-01', 7, 2),      -- Ninja | Outworld
('Sub-Zero', 2600, 1600, '2025-01-02', 6, 2),      -- Ninja | Outworld
('Raiden', 3000, 2200, '2025-01-03', 8, 3),        -- Feiticeiro | Netherrealm
('Liu Kang', 2900, 1800, '2025-01-04', 9, 1),      -- Lutador | Earthrealm
('Kitana', 2100, 1700, '2025-01-05', 5, 4),        -- Assassino | Edenia
('Mileena', 2200, 1650, '2025-01-06', 6, 4),       -- Assassino | Edenia
('Johnny Cage', 1950, 1500, '2025-01-07', 3, 1),   -- Lutador | Earthrealm
('Shang Tsung', 3200, 2400, '2025-01-08', 10, 5);  -- Chefe | Shang Tsung Island

SELECT * FROM tb_personagens;
SELECT * FROM tb_personagens WHERE nivel_de_forca > 2000; -- nivel de força maior que 2000
SELECT * FROM tb_personagens WHERE nivel_de_forca >= 1000 AND nivel_de_forca <= 2000; -- maior ou igual ao nivel de forca
SELECT * FROM tb_personagens WHERE nome LIKE "%c%"; -- busca personagem que tenha a letra "C"

SELECT 
    p.nome,
    c.tipo_classe,
    c.fase_do_jogo
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.classe_id = c.id;

SELECT 
    p.nome,
    c.tipo_classe,
    c.fase_do_jogo
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.classe_id = c.id
WHERE c.tipo_classe = 'Ninja';






