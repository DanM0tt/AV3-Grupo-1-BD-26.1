--Query com o intuito de analisar o impacto do público nas goleadas dos times das ligas 1 e 2.

SELECT
    t.nome                          AS time_mandante,
    MAX(p.placar_mandante)          AS maior_placar,
    ROUND(AVG(p.publico), 0)        AS media_publico
FROM Partida p
INNER JOIN Time t ON t.id_time = p.id_time_mandante
WHERE p.id_liga IN (1, 2)
  AND p.status = 'Encerrada'
GROUP BY t.nome
HAVING AVG(p.publico) > 10000
ORDER BY media_publico DESC;

-- Comandos utilizados: IN, INNER JOIN, MAX, AVG, GROUP BY, HAVING