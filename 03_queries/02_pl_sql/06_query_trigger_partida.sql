-- Trigger de comando: registra log sempre que houver qualquer INSERT na tabela Partida

CREATE OR REPLACE TRIGGER trg_partida_insert_log
AFTER INSERT ON Partida
BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'LOG: Novas partidas inseridas em '
        || TO_CHAR(SYSDATE, 'DD/MM/YYYY HH24:MI:SS')
    );
END trg_partida_insert_log;
/

-- Trigger de linha: impede que um time jogue contra si mesmo e valida público negativo antes de inserir ou atualizar

CREATE OR REPLACE TRIGGER trg_partida_valida_linha
BEFORE INSERT OR UPDATE ON Partida
FOR EACH ROW
BEGIN
    IF :NEW.id_time_mandante = :NEW.id_time_visitante THEN
        RAISE_APPLICATION_ERROR(-20001,
            'Erro: time mandante e visitante nao podem ser iguais.');
    END IF;

    IF :NEW.publico IS NOT NULL AND :NEW.publico < 0 THEN
        RAISE_APPLICATION_ERROR(-20002,
            'Erro: publico nao pode ser negativo.');
    END IF;
END trg_partida_valida_linha;
/

-- Comandos utilizados: TRIGGER COMANDO, TRIGGER LINHA