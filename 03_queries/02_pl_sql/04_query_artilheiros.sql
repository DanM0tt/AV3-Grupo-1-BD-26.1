-- Bloco anônimo: lista os 3 maiores artilheiros do Brasileirão 2024

SET SERVEROUTPUT ON;

DECLARE
    TYPE t_artilheiro IS RECORD (
        cpf     Jogador.CPF%TYPE,
        gols    NUMBER
    );
    TYPE t_tab_artilheiros IS TABLE OF t_artilheiro
        INDEX BY PLS_INTEGER;

    v_artilheiros   t_tab_artilheiros;
    v_idx           PLS_INTEGER := 0;

    CURSOR c_gols IS
        SELECT e.cpf_jogador, SUM(e.num_gols) AS total_gols
        FROM Escalacao e
        INNER JOIN Partida p ON p.id_partida = e.id_partida
        WHERE p.id_liga = 1 AND p.ano_temporada = 2024
        GROUP BY e.cpf_jogador
        ORDER BY total_gols DESC;

    r_gol c_gols%ROWTYPE;
BEGIN
    OPEN c_gols;
    LOOP
        FETCH c_gols INTO r_gol;
        EXIT WHEN c_gols%NOTFOUND OR v_idx >= 3;

        v_idx := v_idx + 1;
        v_artilheiros(v_idx).cpf  := r_gol.cpf_jogador;
        v_artilheiros(v_idx).gols := r_gol.total_gols;
    END LOOP;
    CLOSE c_gols;

    FOR i IN 1 .. v_artilheiros.COUNT LOOP
        
        DBMS_OUTPUT.PUT_LINE(i || 'o lugar: CPF ' || v_artilheiros(i).cpf || ' - ' || v_artilheiros(i).gols || ' gols');
    END LOOP;
END;


-- Comandos utilizados: TABLE TYPE, LOOP EXIT WHEN