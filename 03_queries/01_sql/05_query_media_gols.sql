-- Times cujo total de gols marcados no Brasileirão 2024 foi maior que a média de gols de todos os times

SELECT t.nome, pa.gols_marcados
FROM Participa pa
INNER JOIN Time t ON t.id_time = pa.id_time
WHERE pa.id_liga = 1
  AND pa.ano = 2024
  AND pa.gols_marcados > (
    SELECT AVG(gols_marcados)
    FROM Participa
    WHERE id_liga = 1 AND ano = 2024
  )
ORDER BY pa.gols_marcados DESC;

-- Comandos utilizados: Subconsulta com operador relacional (>)