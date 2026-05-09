-- Verifica a situação de um contrato pelo CPF do jogador

DECLARE
    v_nome_time     Time.nome%TYPE;
    v_salario       Contrato.salario_mensal%TYPE;
    v_data_fim      Contrato.data_fim%TYPE;
    v_cpf           Pessoa.CPF%TYPE := '12345678901';
    v_situacao      VARCHAR2(30);
BEGIN
    SELECT t.nome, c.salario_mensal, c.data_fim
    INTO v_nome_time, v_salario, v_data_fim
    FROM Contrato c
    INNER JOIN Time t ON t.id_time = c.id_time
    WHERE c.cpf_jogador = v_cpf
      AND c.data_fim > SYSDATE
    FETCH FIRST 1 ROWS ONLY;

    IF v_data_fim > ADD_MONTHS(SYSDATE, 12) THEN
        v_situacao := 'Contrato de longo prazo';
    ELSIF v_data_fim > ADD_MONTHS(SYSDATE, 6) THEN
        v_situacao := 'Contrato estavel';
    ELSE
        v_situacao := 'Contrato proximo do fim';
    END IF;

    DBMS_OUTPUT.PUT_LINE('Time: '      v_nome_time);
    DBMS_OUTPUT.PUT_LINE('Salario: '   v_salario);
    DBMS_OUTPUT.PUT_LINE('Situacao: ' || v_situacao);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Nenhum contrato vigente encontrado para o CPF informado.');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Multiplos contratos vigentes encontrados.');
END;
/

-- Comandos utilizados: Bloco Anônimo, %TYPE, SELECT INTO, IF ELSIF, EXEPTION WHEN