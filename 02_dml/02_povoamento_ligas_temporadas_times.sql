-- ============================================================
--  LIGAS
-- ============================================================
INSERT INTO Liga (nome, pais, ent_reguladora, ano_fundacao)
VALUES ('Brasileirão Série A', 'Brasil', 'CBF', 1959);
INSERT INTO Liga (nome, pais, ent_reguladora, ano_fundacao)
VALUES ('Copa do Brasil',      'Brasil', 'CBF', 1989);
INSERT INTO Liga (nome, pais, ent_reguladora, ano_fundacao)
VALUES ('Brasileirão Série B', 'Brasil', 'CBF', 1971);

-- ============================================================
--  TEMPORADAS
-- ============================================================
INSERT INTO Temporada VALUES (1, 2023, DATE '2023-04-15', DATE '2023-12-06', 38);
INSERT INTO Temporada VALUES (1, 2024, DATE '2024-04-13', DATE '2024-12-08', 38);
INSERT INTO Temporada VALUES (2, 2023, DATE '2023-03-01', DATE '2023-09-17', 6);
INSERT INTO Temporada VALUES (2, 2024, DATE '2024-03-06', DATE '2024-09-15', 6);
INSERT INTO Temporada VALUES (3, 2023, DATE '2023-04-22', DATE '2023-11-25', 38);
INSERT INTO Temporada VALUES (3, 2024, DATE '2024-04-20', DATE '2024-11-23', 38);

-- ============================================================
--  TIMES
-- ============================================================
INSERT INTO Time (nome, apelido, ano_fundacao, titulos_nacionais, cidade_sede, estado_sede, id_estadio)
VALUES ('Sport Club do Recife',    'Sport',     1905,  1, 'Recife',          'Pernambuco',        1);
INSERT INTO Time (nome, apelido, ano_fundacao, titulos_nacionais, cidade_sede, estado_sede, id_estadio)
VALUES ('Sociedade Esportiva Palmeiras','Palmeiras',1914,12, 'São Paulo',    'São Paulo',         2);
INSERT INTO Time (nome, apelido, ano_fundacao, titulos_nacionais, cidade_sede, estado_sede, id_estadio)
VALUES ('Clube de Regatas do Flamengo','Flamengo',1895, 3, 'Rio de Janeiro', 'Rio de Janeiro',    3);
INSERT INTO Time (nome, apelido, ano_fundacao, titulos_nacionais, cidade_sede, estado_sede, id_estadio)
VALUES ('Clube Atlético Mineiro',  'Atlético',  1908,  2, 'Belo Horizonte', 'Minas Gerais',      4);
INSERT INTO Time (nome, apelido, ano_fundacao, titulos_nacionais, cidade_sede, estado_sede, id_estadio)
VALUES ('Sport Club Internacional','Inter',     1909,  3, 'Porto Alegre',   'Rio Grande do Sul', 5);
INSERT INTO Time (nome, apelido, ano_fundacao, titulos_nacionais, cidade_sede, estado_sede, id_estadio)
VALUES ('Esporte Clube Bahia',     'Bahia',     1931,  2, 'Salvador',       'Bahia',             6);
INSERT INTO Time (nome, apelido, ano_fundacao, titulos_nacionais, cidade_sede, estado_sede, id_estadio)
VALUES ('Fortaleza Esporte Clube', 'Fortaleza', 1918,  0, 'Fortaleza',      'Ceará',             7);
INSERT INTO Time (nome, apelido, ano_fundacao, titulos_nacionais, cidade_sede, estado_sede, id_estadio)
VALUES ('Clube Atlético Paranaense','Athletico', 1924, 1, 'Curitiba',       'Paraná',            8);
INSERT INTO Time (nome, apelido, ano_fundacao, titulos_nacionais, cidade_sede, estado_sede, id_estadio)
VALUES ('Nacional Futebol Clube',  'Nacional',  1913,  0, 'Manaus',         'Amazonas',          9);
INSERT INTO Time (nome, apelido, ano_fundacao, titulos_nacionais, cidade_sede, estado_sede, id_estadio)
VALUES ('América Futebol Clube',   'América-RN',1915,  0, 'Natal',          'Rio Grande do Norte',10);

-- Time_Cor
INSERT INTO Time_Cor VALUES (1, 'Vermelho');
INSERT INTO Time_Cor VALUES (1, 'Preto');
INSERT INTO Time_Cor VALUES (2, 'Verde');
INSERT INTO Time_Cor VALUES (2, 'Branco');
INSERT INTO Time_Cor VALUES (3, 'Vermelho');
INSERT INTO Time_Cor VALUES (3, 'Preto');
INSERT INTO Time_Cor VALUES (4, 'Preto');
INSERT INTO Time_Cor VALUES (4, 'Branco');
INSERT INTO Time_Cor VALUES (5, 'Vermelho');
INSERT INTO Time_Cor VALUES (5, 'Branco');
INSERT INTO Time_Cor VALUES (6, 'Azul');
INSERT INTO Time_Cor VALUES (6, 'Vermelho');
INSERT INTO Time_Cor VALUES (7, 'Vermelho');
INSERT INTO Time_Cor VALUES (7, 'Azul');
INSERT INTO Time_Cor VALUES (8, 'Vermelho');
INSERT INTO Time_Cor VALUES (8, 'Preto');
INSERT INTO Time_Cor VALUES (9, 'Branco');
INSERT INTO Time_Cor VALUES (9, 'Preto');
INSERT INTO Time_Cor VALUES (10,'Vermelho');
INSERT INTO Time_Cor VALUES (10,'Branco');


COMMIT;