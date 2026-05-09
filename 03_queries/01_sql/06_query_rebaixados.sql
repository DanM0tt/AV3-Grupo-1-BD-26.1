-- Times que participaram do Brasileirão 2024,mas não da temporada 2025. Logo, foram rebaixados

SELECT t.nome, t.cidade_sede, t.estado_sede
FROM Participa pa
INNER JOIN Time t ON t.id_time = pa.id_time
WHERE pa.id_liga = 1 AND pa.ano = 2024

MINUS

SELECT t.nome, t.cidade_sede, t.estado_sede
FROM Participa pa
INNER JOIN Time t ON t.id_time = pa.id_time
WHERE pa.id_liga = 1 AND pa.ano = 2025;

-- Comandos utilizados: MINUS