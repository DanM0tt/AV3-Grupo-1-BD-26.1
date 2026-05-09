-- Adicionar coluna de observação na tabela Partida
ALTER TABLE Partida ADD observacao VARCHAR2(200);

-- Índice para acelerar buscas de partidas por temporada
CREATE INDEX idx_partida_temporada ON Partida(id_liga, ano_temporada);

-- Inserir uma nova partida agendada (rodada 6)
INSERT INTO Partida (status, publico, data_hora, numero_rodada,
    placar_mandante, placar_visitante, id_estadio, id_liga,
    ano_temporada, id_time_mandante, id_time_visitante)
VALUES ('Agendada', NULL, TIMESTAMP '2024-05-25 16:00:00', 6,
    0, 0, 10, 1, 2024, 10, 1);

-- Partida suspensa por chuva forte
UPDATE Partida
SET status = 'Suspensa',
    observacao = 'Suspensa por condicoes climaticas'
WHERE status = 'Agendada'
  AND numero_rodada = 6
  AND id_time_mandante = 10
  AND id_time_visitante = 1;

-- Partida cancelada definitivamente
DELETE FROM Partida
WHERE status = 'Suspensa'
  AND numero_rodada = 6
  AND id_time_mandante = 10
  AND id_time_visitante = 1;

-- Comandos utilizados: ALTER TABLE, CREATE INDEX, INSERT INTO, UPDATE, DELETE