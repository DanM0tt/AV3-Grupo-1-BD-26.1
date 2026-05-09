-- Análise dos jogadores que tem um melhor desempenho ofensivo (gols) que posições tipicamente defensivas, zagueiro e lateral
-- Utilização de "View" para melhor entendimento na realização de subconsultas

CREATE VIEW vw_artilheiros_destaque AS
SELECT
    j.CPF,
    j.posicao,
    SUM(e.num_gols) AS total_gols
FROM Jogador j
INNER JOIN Pessoa    p ON p.CPF         = j.CPF
INNER JOIN Escalacao e ON e.cpf_jogador = j.CPF
WHERE j.CPF IN (

    -- Só quem participou de partidas encerradas
    SELECT cpf_jogador
    FROM Escalacao es
    INNER JOIN Partida pa ON pa.id_partida = es.id_partida
    WHERE pa.status = 'Encerrada'
)

GROUP BY j.CPF, j.posicao

HAVING SUM(e.num_gols) > ALL (

    -- Mais gols que qualquer Zagueiro
    SELECT SUM(e2.num_gols)
    FROM Escalacao e2
    INNER JOIN Jogador j2 ON j2.CPF = e2.cpf_jogador
    WHERE j2.posicao = 'Zagueiro'
    GROUP BY e2.cpf_jogador
)

AND SUM(e.num_gols) > ANY (

    -- Mais gols que pelo menos um lateral
    SELECT SUM(e3.num_gols)
    FROM Escalacao e3
    INNER JOIN Jogador j3 ON j3.CPF = e3.cpf_jogador
    WHERE j3.posicao = 'Lateral'
    GROUP BY e3.cpf_jogador
);

-- Comandos utilizados: Subconsulta com IN, Subconsulta com ANY, Subconsulta com ALL, CREATE VIEW