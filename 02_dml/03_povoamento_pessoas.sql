-- ============================================================
--  PESSOAS
-- ============================================================
-- Jogadores
INSERT INTO Pessoa VALUES ('12345678901','81999990001','gabriel@sport.com',    '50670901','1','Av. da Arquitetura', DATE '1998-03-14');
INSERT INTO Pessoa VALUES ('23456789012','81999990002','lucas@palmeiras.com',  '01310100','100','Av. Paulista',    DATE '1997-07-22');
INSERT INTO Pessoa VALUES ('34567890123','21999990003','pedro@flamengo.com',   '20031170','200','Av. Rio Branco',  DATE '2000-11-05');
INSERT INTO Pessoa VALUES ('45678901234','31999990004','hulk@atletico.com',    '30130010','300','Av. Afonso Pena', DATE '1986-07-25');
INSERT INTO Pessoa VALUES ('56789012345','51999990005','alan@inter.com',       '90010280','400','Av. Borges de Medeiros',DATE '1999-01-18');
INSERT INTO Pessoa VALUES ('67890123456','71999990006','everaldo@bahia.com',   '40020010','500','Av. Sete de Setembro',DATE '1996-09-30');
INSERT INTO Pessoa VALUES ('78901234567','85999990007','moisés@fortaleza.com', '60175047','600','Av. Bezerra de Menezes',DATE '2001-02-12');
INSERT INTO Pessoa VALUES ('89012345678','41999990008','fernandinho@athletico.com','80010010','700','Rua XV de Novembro',DATE '1985-05-04');
INSERT INTO Pessoa VALUES ('90123456789','92999990009','thiago@nacional.com',  '69005010','800','Av. Eduardo Ribeiro',DATE '2002-08-20');
INSERT INTO Pessoa VALUES ('01234567890','84999990010','rafael@america.com',   '59010100','900','Av. Rio Branco',  DATE '1993-12-07');
-- Técnicos
INSERT INTO Pessoa VALUES ('11122233344','81999991111','marcelino@sport.com',  '50670901','1','Av. da Arquitetura', DATE '1970-05-10');
INSERT INTO Pessoa VALUES ('22233344455','11999991112','abel@palmeiras.com',   '01310100','100','Av. Paulista',    DATE '1972-09-03');
INSERT INTO Pessoa VALUES ('33344455566','21999991113','tite@flamengo.com',    '20031170','200','Av. Rio Branco',  DATE '1961-05-25');
INSERT INTO Pessoa VALUES ('44455566677','31999991114','milito@atletico.com',  '30130010','300','Av. Afonso Pena', DATE '1976-06-26');
INSERT INTO Pessoa VALUES ('55566677788','51999991115','mano@inter.com',       '90010280','400','Av. Borges de Medeiros',DATE '1963-03-14');
-- Árbitros
INSERT INTO Pessoa VALUES ('66677788899','11944440001','raphael@cbf.com',      '01415001','10','Rua Oscar Freire',  DATE '1980-04-17');
INSERT INTO Pessoa VALUES ('77788899900','21944440002','anderson@cbf.com',     '20040020','20','Rua da Assembleia', DATE '1978-11-22');
INSERT INTO Pessoa VALUES ('88899900011','31944440003','wagner@cbf.com',       '30130090','30','Rua Espírito Santo',DATE '1982-07-09');
INSERT INTO Pessoa VALUES ('99900011122','51944440004','kleber@cbf.com',       '90040060','40','Rua dos Andradas', DATE '1985-02-28');
INSERT INTO Pessoa VALUES ('00011122233','71944440005','bráulio@cbf.com',      '40020360','50','Rua Chile',        DATE '1979-09-15');

-- Nacionalidades
INSERT INTO Nacionalidade VALUES ('12345678901','Brasileira');
INSERT INTO Nacionalidade VALUES ('23456789012','Brasileira');
INSERT INTO Nacionalidade VALUES ('34567890123','Brasileira');
INSERT INTO Nacionalidade VALUES ('45678901234','Brasileira');
INSERT INTO Nacionalidade VALUES ('56789012345','Brasileira');
INSERT INTO Nacionalidade VALUES ('67890123456','Brasileira');
INSERT INTO Nacionalidade VALUES ('78901234567','Brasileira');
INSERT INTO Nacionalidade VALUES ('89012345678','Brasileira');
INSERT INTO Nacionalidade VALUES ('90123456789','Brasileira');
INSERT INTO Nacionalidade VALUES ('01234567890','Brasileira');
INSERT INTO Nacionalidade VALUES ('11122233344','Espanhola');
INSERT INTO Nacionalidade VALUES ('22233344455','Portuguesa');
INSERT INTO Nacionalidade VALUES ('33344455566','Brasileira');
INSERT INTO Nacionalidade VALUES ('44455566677','Argentina');
INSERT INTO Nacionalidade VALUES ('55566677788','Brasileira');
INSERT INTO Nacionalidade VALUES ('66677788899','Brasileira');
INSERT INTO Nacionalidade VALUES ('77788899900','Brasileira');
INSERT INTO Nacionalidade VALUES ('88899900011','Brasileira');
INSERT INTO Nacionalidade VALUES ('99900011122','Brasileira');
INSERT INTO Nacionalidade VALUES ('00011122233','Brasileira');

-- ============================================================
--  JOGADORES
-- ============================================================
INSERT INTO Jogador VALUES ('12345678901','Goleiro',   1.89, 85.0, 'Direito',    1);
INSERT INTO Jogador VALUES ('23456789012','Atacante',  1.75, 70.0, 'Esquerdo',   9);
INSERT INTO Jogador VALUES ('34567890123','Atacante',  1.78, 74.0, 'Direito',   21);
INSERT INTO Jogador VALUES ('45678901234','Atacante',  1.80, 83.0, 'Direito',    7);
INSERT INTO Jogador VALUES ('56789012345','Meia',      1.73, 68.0, 'Direito',   10);
INSERT INTO Jogador VALUES ('67890123456','Lateral',   1.76, 71.0, 'Direito',    2);
INSERT INTO Jogador VALUES ('78901234567','Meia',      1.70, 67.0, 'Esquerdo',   8);
INSERT INTO Jogador VALUES ('89012345678','Volante',   1.82, 80.0, 'Direito',    5);
INSERT INTO Jogador VALUES ('90123456789','Zagueiro',  1.85, 82.0, 'Direito',    3);
INSERT INTO Jogador VALUES ('01234567890','Lateral',   1.74, 69.0, 'Esquerdo',   6);

-- ============================================================
--  TÉCNICOS
-- ============================================================
INSERT INTO Tecnico VALUES ('11122233344','UEFA A',  '4-3-3');
INSERT INTO Tecnico VALUES ('22233344455','UEFA Pro', '4-2-3-1');
INSERT INTO Tecnico VALUES ('33344455566','CBF A',   '4-4-2');
INSERT INTO Tecnico VALUES ('44455566677','UEFA Pro', '4-3-3');
INSERT INTO Tecnico VALUES ('55566677788','CBF A',   '3-5-2');

-- ============================================================
--  ÁRBITROS
-- ============================================================
INSERT INTO Arbitro VALUES ('66677788899','FIFA-BRA-001', 15, 'FIFA');
INSERT INTO Arbitro VALUES ('77788899900','FIFA-BRA-002', 12, 'FIFA');
INSERT INTO Arbitro VALUES ('88899900011','FIFA-BRA-003',  8, 'Nacional');
INSERT INTO Arbitro VALUES ('99900011122','FIFA-BRA-004',  6, 'Nacional');
INSERT INTO Arbitro VALUES ('00011122233','FIFA-BRA-005', 10, 'FIFA');

COMMIT;