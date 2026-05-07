-- ============================================================
--  CIDADES
-- ============================================================
INSERT INTO Cidade VALUES ('Recife',       'Pernambuco',        'Brasil');
INSERT INTO Cidade VALUES ('São Paulo',    'São Paulo',         'Brasil');
INSERT INTO Cidade VALUES ('Rio de Janeiro','Rio de Janeiro',   'Brasil');
INSERT INTO Cidade VALUES ('Belo Horizonte','Minas Gerais',     'Brasil');
INSERT INTO Cidade VALUES ('Porto Alegre', 'Rio Grande do Sul', 'Brasil');
INSERT INTO Cidade VALUES ('Salvador',     'Bahia',             'Brasil');
INSERT INTO Cidade VALUES ('Fortaleza',    'Ceará',             'Brasil');
INSERT INTO Cidade VALUES ('Curitiba',     'Paraná',            'Brasil');
INSERT INTO Cidade VALUES ('Manaus',       'Amazonas',          'Brasil');
INSERT INTO Cidade VALUES ('Natal',        'Rio Grande do Norte','Brasil');

-- ============================================================
--  ENDEREÇOS
-- ============================================================
INSERT INTO Endereco VALUES ('50670901','1','Av. da Arquitetura','Cidade Universitária','Recife','Pernambuco');
INSERT INTO Endereco VALUES ('01310100','100','Av. Paulista','Bela Vista','São Paulo','São Paulo');
INSERT INTO Endereco VALUES ('20031170','200','Av. Rio Branco','Centro','Rio de Janeiro','Rio de Janeiro');
INSERT INTO Endereco VALUES ('30130010','300','Av. Afonso Pena','Centro','Belo Horizonte','Minas Gerais');
INSERT INTO Endereco VALUES ('90010280','400','Av. Borges de Medeiros','Centro Histórico','Porto Alegre','Rio Grande do Sul');
INSERT INTO Endereco VALUES ('40020010','500','Av. Sete de Setembro','Centro','Salvador','Bahia');
INSERT INTO Endereco VALUES ('60175047','600','Av. Bezerra de Menezes','São Gerardo','Fortaleza','Ceará');
INSERT INTO Endereco VALUES ('80010010','700','Rua XV de Novembro','Centro','Curitiba','Paraná');
INSERT INTO Endereco VALUES ('69005010','800','Av. Eduardo Ribeiro','Centro','Manaus','Amazonas');
INSERT INTO Endereco VALUES ('59010100','900','Av. Rio Branco','Petrópolis','Natal','Rio Grande do Norte');
-- Árbitros
INSERT INTO Endereco VALUES ('01415001','10','Rua Oscar Freire','Jardins','São Paulo','São Paulo');
INSERT INTO Endereco VALUES ('20040020','20','Rua da Assembleia','Centro','Rio de Janeiro','Rio de Janeiro');
INSERT INTO Endereco VALUES ('30130090','30','Rua Espírito Santo','Centro','Belo Horizonte','Minas Gerais');
INSERT INTO Endereco VALUES ('90040060','40','Rua dos Andradas','Centro','Porto Alegre','Rio Grande do Sul');
INSERT INTO Endereco VALUES ('40020360','50','Rua Chile','Centro','Salvador','Bahia');

-- ============================================================
--  ESTÁDIOS
-- ============================================================
INSERT INTO Estadio (nome, capacidade, ano_inauguracao, gramado, cidade, estado)
VALUES ('Arena de Pernambuco',     46154, 2013, 'Natural', 'Recife',          'Pernambuco');
INSERT INTO Estadio (nome, capacidade, ano_inauguracao, gramado, cidade, estado)
VALUES ('Allianz Parque',          43713, 2014, 'Natural', 'São Paulo',       'São Paulo');
INSERT INTO Estadio (nome, capacidade, ano_inauguracao, gramado, cidade, estado)
VALUES ('Maracanã',                78838, 1950, 'Natural', 'Rio de Janeiro',  'Rio de Janeiro');
INSERT INTO Estadio (nome, capacidade, ano_inauguracao, gramado, cidade, estado)
VALUES ('Mineirão',                61846, 1965, 'Natural', 'Belo Horizonte',  'Minas Gerais');
INSERT INTO Estadio (nome, capacidade, ano_inauguracao, gramado, cidade, estado)
VALUES ('Beira-Rio',               51300, 1969, 'Natural', 'Porto Alegre',    'Rio Grande do Sul');
INSERT INTO Estadio (nome, capacidade, ano_inauguracao, gramado, cidade, estado)
VALUES ('Arena Fonte Nova',        47907, 2013, 'Natural', 'Salvador',        'Bahia');
INSERT INTO Estadio (nome, capacidade, ano_inauguracao, gramado, cidade, estado)
VALUES ('Castelão',                63903, 1973, 'Natural', 'Fortaleza',       'Ceará');
INSERT INTO Estadio (nome, capacidade, ano_inauguracao, gramado, cidade, estado)
VALUES ('Couto Pereira',           40502, 1931, 'Natural', 'Curitiba',        'Paraná');
INSERT INTO Estadio (nome, capacidade, ano_inauguracao, gramado, cidade, estado)
VALUES ('Arena da Amazônia',       44310, 2014, 'Natural', 'Manaus',          'Amazonas');
INSERT INTO Estadio (nome, capacidade, ano_inauguracao, gramado, cidade, estado)
VALUES ('Arena das Dunas',         42086, 2014, 'Natural', 'Natal',           'Rio Grande do Norte');

COMMIT;