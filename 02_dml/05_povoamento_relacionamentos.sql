-- ============================================================
--  PARTICIPA (Time — Temporada)
-- ============================================================
INSERT INTO Participa VALUES (1, 1, 2024,  3, 8, 4,  3, 150000.00);
INSERT INTO Participa VALUES (2, 1, 2024,  7, 1,12,  2, 900000.00);
INSERT INTO Participa VALUES (3, 1, 2024, 10, 1,10,  2,1500000.00);
INSERT INTO Participa VALUES (4, 1, 2024,  3, 7, 3,  3, 150000.00);
INSERT INTO Participa VALUES (5, 1, 2024,  4, 5, 5,  5, 300000.00);
INSERT INTO Participa VALUES (6, 1, 2024,  1, 9, 2,  5,  75000.00);
INSERT INTO Participa VALUES (7, 1, 2024,  3, 8, 2,  2, 150000.00);
INSERT INTO Participa VALUES (8, 1, 2024,  3, 6, 4,  3, 150000.00);
INSERT INTO Participa VALUES (9, 1, 2024,  3,10, 2,  1, 150000.00);
INSERT INTO Participa VALUES (10,1, 2024,  0,10, 0,  3,  50000.00);

-- ============================================================
--  CONTRATOS (Jogador — Time)
-- ============================================================
INSERT INTO Contrato VALUES ('12345678901', 1, DATE '2022-01-01', DATE '2025-12-31',  20000.00,  5000000.00, 'Efetivo');
INSERT INTO Contrato VALUES ('23456789012', 2, DATE '2021-07-01', DATE '2025-06-30', 250000.00, 80000000.00, 'Efetivo');
INSERT INTO Contrato VALUES ('34567890123', 3, DATE '2023-01-01', DATE '2026-12-31', 350000.00,120000000.00, 'Efetivo');
INSERT INTO Contrato VALUES ('45678901234', 4, DATE '2022-01-01', DATE '2024-12-31', 180000.00, 40000000.00, 'Efetivo');
INSERT INTO Contrato VALUES ('56789012345', 5, DATE '2020-01-01', DATE '2024-12-31',  90000.00, 25000000.00, 'Efetivo');
INSERT INTO Contrato VALUES ('67890123456', 6, DATE '2023-07-01', DATE '2025-06-30',  30000.00,  8000000.00, 'Efetivo');
INSERT INTO Contrato VALUES ('78901234567', 7, DATE '2019-01-01', DATE '2024-12-31',  60000.00, 15000000.00, 'Efetivo');
INSERT INTO Contrato VALUES ('89012345678', 8, DATE '2022-01-01', DATE '2025-12-31',  75000.00, 20000000.00, 'Efetivo');
INSERT INTO Contrato VALUES ('90123456789', 9, DATE '2023-01-01', DATE '2026-12-31',  15000.00,  3000000.00, 'Efetivo');
INSERT INTO Contrato VALUES ('01234567890',10, DATE '2021-01-01', DATE '2024-12-31',  12000.00,  2500000.00, 'Efetivo');

-- ============================================================
--  ESCALAÇÕES
-- ============================================================
-- Partida 1: Sport (1) x Palmeiras (2) — Sport venceu 2x1
INSERT INTO Escalacao VALUES (1,'12345678901',1,'Goleiro', 'S', NULL, NULL,0,0,0,0);
INSERT INTO Escalacao VALUES (1,'23456789012',2,'Atacante','S', NULL, NULL,1,0,0,0);
INSERT INTO Escalacao VALUES (1,'34567890123',3,'Atacante','S', NULL, NULL,0,1,0,0);
INSERT INTO Escalacao VALUES (1,'45678901234',4,'Atacante','S', NULL, NULL,0,0,1,0);
INSERT INTO Escalacao VALUES (1,'56789012345',5,'Meia',    'S', NULL, NULL,2,1,0,0);

-- Partida 2: Flamengo (3) x Atlético (4) — Fla venceu 3x0
INSERT INTO Escalacao VALUES (2,'34567890123',3,'Atacante','S', NULL, NULL,2,0,0,0);
INSERT INTO Escalacao VALUES (2,'56789012345',5,'Meia',    'S', NULL, NULL,0,2,0,0);
INSERT INTO Escalacao VALUES (2,'45678901234',4,'Atacante','S', NULL, NULL,0,0,1,0);
INSERT INTO Escalacao VALUES (2,'67890123456',6,'Lateral', 'S', NULL, NULL,1,1,0,0);
INSERT INTO Escalacao VALUES (2,'78901234567',7,'Meia',    'S', NULL, NULL,0,0,0,0);

-- Partida 3: Inter (5) x Bahia (6) — Empate 1x1
INSERT INTO Escalacao VALUES (3,'56789012345',5,'Meia',   'S', NULL, NULL,1,0,0,0);
INSERT INTO Escalacao VALUES (3,'67890123456',6,'Lateral','S', NULL, NULL,1,0,0,0);
INSERT INTO Escalacao VALUES (3,'89012345678',8,'Volante','S', NULL, NULL,0,1,0,0);
INSERT INTO Escalacao VALUES (3,'90123456789',9,'Zagueiro','S',NULL, NULL,0,0,1,0);
INSERT INTO Escalacao VALUES (3,'01234567890',10,'Lateral','S',NULL, NULL,0,0,0,0);

-- ============================================================
--  SUBSTITUIÇÕES
-- ============================================================
INSERT INTO Substitui VALUES (1,'67890123456','12345678901', 72);
INSERT INTO Substitui VALUES (2,'78901234567','34567890123', 65);
INSERT INTO Substitui VALUES (3,'01234567890','56789012345', 80);

-- ============================================================
--  APITA (Árbitro — Partida)
-- ============================================================
INSERT INTO Apita VALUES (1,'66677788899','Principal');
INSERT INTO Apita VALUES (1,'77788899900','Assistente 1');
INSERT INTO Apita VALUES (1,'88899900011','Assistente 2');
INSERT INTO Apita VALUES (2,'00011122233','Principal');
INSERT INTO Apita VALUES (2,'99900011122','Assistente 1');
INSERT INTO Apita VALUES (3,'66677788899','Principal');
INSERT INTO Apita VALUES (3,'77788899900','Assistente 2');
INSERT INTO Apita VALUES (4,'88899900011','Principal');
INSERT INTO Apita VALUES (4,'00011122233','VAR');
INSERT INTO Apita VALUES (5,'99900011122','Principal');

-- ============================================================
--  DIRIGE (Técnico — Time)
-- ============================================================
INSERT INTO Dirige VALUES ('11122233344', 1, DATE '2023-01-10', NULL,        20, 45.00);
INSERT INTO Dirige VALUES ('22233344455', 2, DATE '2020-07-15', NULL,       120, 68.33);
INSERT INTO Dirige VALUES ('33344455566', 3, DATE '2023-06-01', NULL,        45, 62.22);
INSERT INTO Dirige VALUES ('44455566677', 4, DATE '2022-01-20', NULL,        80, 55.83);
INSERT INTO Dirige VALUES ('55566677788', 5, DATE '2019-03-05', DATE '2023-12-31', 95, 52.63);
INSERT INTO Dirige VALUES ('55566677788', 5, DATE '2024-01-15', NULL,        10, 60.00);

-- ============================================================
--  AUXILIA (Técnico — Técnico — Time)
-- ============================================================
INSERT INTO Auxilia VALUES ('22233344455','11122233344', DATE '2023-01-10', NULL,           1);
INSERT INTO Auxilia VALUES ('33344455566','44455566677', DATE '2023-06-01', NULL,           3);
INSERT INTO Auxilia VALUES ('44455566677','55566677788', DATE '2022-01-20', DATE '2023-12-31', 4);
INSERT INTO Auxilia VALUES ('11122233344','33344455566', DATE '2023-02-01', DATE '2023-05-31', 1);

COMMIT;