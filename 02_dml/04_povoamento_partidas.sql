-- ============================================================
--  PARTIDAS
-- ============================================================
INSERT INTO Partida (status, publico, data_hora, numero_rodada, placar_mandante, placar_visitante,
                     id_estadio, id_liga, ano_temporada, id_time_mandante, id_time_visitante)
VALUES ('Encerrada', 42000, TIMESTAMP '2024-04-20 16:00:00', 1, 2, 1, 1, 1, 2024, 1, 2);

INSERT INTO Partida (status, publico, data_hora, numero_rodada, placar_mandante, placar_visitante,
                     id_estadio, id_liga, ano_temporada, id_time_mandante, id_time_visitante)
VALUES ('Encerrada', 61000, TIMESTAMP '2024-04-21 18:30:00', 1, 3, 0, 3, 1, 2024, 3, 4);

INSERT INTO Partida (status, publico, data_hora, numero_rodada, placar_mandante, placar_visitante,
                     id_estadio, id_liga, ano_temporada, id_time_mandante, id_time_visitante)
VALUES ('Encerrada', 38000, TIMESTAMP '2024-04-27 11:00:00', 2, 1, 1, 5, 1, 2024, 5, 6);

INSERT INTO Partida (status, publico, data_hora, numero_rodada, placar_mandante, placar_visitante,
                     id_estadio, id_liga, ano_temporada, id_time_mandante, id_time_visitante)
VALUES ('Encerrada', 29000, TIMESTAMP '2024-04-28 16:00:00', 2, 0, 2, 7, 1, 2024, 7, 8);

INSERT INTO Partida (status, publico, data_hora, numero_rodada, placar_mandante, placar_visitante,
                     id_estadio, id_liga, ano_temporada, id_time_mandante, id_time_visitante)
VALUES ('Encerrada', 22000, TIMESTAMP '2024-05-04 19:00:00', 3, 1, 0, 9, 1, 2024, 9, 10);

INSERT INTO Partida (status, publico, data_hora, numero_rodada, placar_mandante, placar_visitante,
                     id_estadio, id_liga, ano_temporada, id_time_mandante, id_time_visitante)
VALUES ('Encerrada', 55000, TIMESTAMP '2024-05-05 16:00:00', 3, 2, 2, 2, 1, 2024, 2, 3);

INSERT INTO Partida (status, publico, data_hora, numero_rodada, placar_mandante, placar_visitante,
                     id_estadio, id_liga, ano_temporada, id_time_mandante, id_time_visitante)
VALUES ('Encerrada', 40000, TIMESTAMP '2024-05-11 18:30:00', 4, 1, 3, 4, 1, 2024, 4, 5);

INSERT INTO Partida (status, publico, data_hora, numero_rodada, placar_mandante, placar_visitante,
                     id_estadio, id_liga, ano_temporada, id_time_mandante, id_time_visitante)
VALUES ('Agendada',  NULL,  TIMESTAMP '2024-05-18 16:00:00', 5, 0, 0, 6, 1, 2024, 6, 7);

INSERT INTO Partida (status, publico, data_hora, numero_rodada, placar_mandante, placar_visitante,
                     id_estadio, id_liga, ano_temporada, id_time_mandante, id_time_visitante)
VALUES ('Agendada',  NULL,  TIMESTAMP '2024-05-19 11:00:00', 5, 0, 0, 8, 1, 2024, 8, 9);

INSERT INTO Partida (status, publico, data_hora, numero_rodada, placar_mandante, placar_visitante,
                     id_estadio, id_liga, ano_temporada, id_time_mandante, id_time_visitante)
VALUES ('Agendada',  NULL,  TIMESTAMP '2024-05-19 18:30:00', 5, 0, 0, 1, 1, 2024, 1, 3);

COMMIT;