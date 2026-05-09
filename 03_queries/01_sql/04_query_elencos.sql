-- Para cada time, mostrar quantos jogadores estão no elenco atual, o menor salário pago e o maior salário, incluindo times sem contratos ativos

SELECT
    t.nome,
    COUNT(c.cpf_jogador)        AS jogadores_no_elenco,
    MIN(c.salario_mensal)       AS menor_salario,
    MAX(c.salario_mensal)       AS maior_salario
FROM Time t
LEFT JOIN Contrato c
       ON c.id_time = t.id_time
      AND (c.data_fim > SYSDATE)
GROUP BY t.nome
ORDER BY jogadores_no_elenco DESC;

-- Comandos utilizados: MIN, COUNT, LEFT JOIN