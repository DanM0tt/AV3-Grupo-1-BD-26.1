-- Package: utilitários de estatísticas de time

CREATE OR REPLACE PACKAGE pkg_estatisticas_time AS
    FUNCTION fn_saldo_gols (
        p_id_time IN Participa.id_time%TYPE,
        p_id_liga IN Participa.id_liga%TYPE,
        p_ano     IN Participa.ano%TYPE
    ) RETURN NUMBER;

    FUNCTION fn_media_publico_mandante (
        p_id_time IN Time.id_time%TYPE
    ) RETURN NUMBER;
END pkg_estatisticas_time;
/

-- Implementação das funções do Package

CREATE OR REPLACE PACKAGE BODY pkg_estatisticas_time AS

    FUNCTION fn_saldo_gols (
        p_id_time IN Participa.id_time%TYPE,
        p_id_liga IN Participa.id_liga%TYPE,
        p_ano     IN Participa.ano%TYPE
    ) RETURN NUMBER
    IS
        v_marcados  NUMBER;
        v_sofridos  NUMBER;
    BEGIN
        SELECT gols_marcados, gols_sofridos
        INTO v_marcados, v_sofridos
        FROM Participa
        WHERE id_time = p_id_time
          AND id_liga = p_id_liga
          AND ano = p_ano;

        RETURN v_marcados - v_sofridos;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN NULL;
    END fn_saldo_gols;

    FUNCTION fn_media_publico_mandante (
        p_id_time IN Time.id_time%TYPE
    ) RETURN NUMBER
    IS
        v_media NUMBER;
    BEGIN
        SELECT ROUND(AVG(publico), 0)
        INTO v_media
        FROM Partida
        WHERE id_time_mandante = p_id_time
          AND status = 'Encerrada'
          AND publico IS NOT NULL;

        RETURN v_media;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN 0;
    END fn_media_publico_mandante;

END pkg_estatisticas_time;
/

-- Comandos utilizados: CREATE PACKAGE, CREATE PACKAGE BODY