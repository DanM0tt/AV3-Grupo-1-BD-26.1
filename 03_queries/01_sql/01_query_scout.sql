-- Busca do jogador cujo email nao contenha 'atletico'(não será do próprio time), ordenados por altura desc
-- Com o intuito de encontrar um jogador para ser contratado, conforme as características físicas necessárias
-- Necessidade de email para mandar o arquivo da proposta de contrato para tal jogador

SELECT
    p.CPF,
    p.email,
    j.posicao,
    j.altura,
    j.pe_dominante
FROM Pessoa p
INNER JOIN Jogador j ON p.CPF = j.CPF
WHERE j.altura BETWEEN 1.80 AND 2.00
  AND p.email IS NOT NULL
  AND p.email NOT LIKE '%atletico%'
ORDER BY j.altura DESC;

-- Comandos utilizados: SELECT-FROM-WHERE, BETWEEN, LIKE, IS NOT NULL, ORDER BY