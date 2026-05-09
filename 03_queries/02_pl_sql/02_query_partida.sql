-- Procedure: recebe id de uma partida (IN) e retorna (OUT) o total de gols e o nome do artilheiro da partida

CREATE OR REPLACE PROCEDURE sp_resumo_partida (
    p_id_partida    IN  Partida.id_partida%TYPE,
    p_total_gols    OUT NUMBER,
    p_artilheiro    OUT Pessoa.CPF%TYPE
)
IS
    rec_escalacao   Escalacao%ROWTYPE;
    v_max_gols      NUMBER := 0;
    v_total         NUMBER := 0;
BEGIN
    FOR rec_escalacao IN (
        SELECT *
        FROM Escalacao
        WHERE id_partida = p_id_partida
    ) LOOP
        v_total := v_total + rec_escalacao.num_gols;

        IF rec_escalacao.num_gols > v_max_gols THEN
            v_max_gols   := rec_escalacao.num_gols;
            p_artilheiro := rec_escalacao.cpf_jogador;
        END IF;
    END LOOP;

    p_total_gols := v_total;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        p_total_gols := 0;
        p_artilheiro := NULL;
END sp_resumo_partida;
/

-- Comandos utilizados: CREATE PROCEDURE, %ROWTYPE, FOR IN LOOP, Parâmetro IN/OUT