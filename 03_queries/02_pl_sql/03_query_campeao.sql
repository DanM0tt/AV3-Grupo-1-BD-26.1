-- Função: recebe id_liga e ano, retorna o nome do campeão
-- com classificação do desempenho baseada nos pontos

CREATE OR REPLACE FUNCTION fn_campeao_temporada (
    p_id_liga   IN Participa.id_liga%TYPE,
    p_ano       IN Participa.ano%TYPE
) RETURN VARCHAR2
IS
    TYPE t_rec_participa IS RECORD (
        nome_time       Time.nome%TYPE,
        pontos          Participa.pontos_total%TYPE,
        posicao         Participa.posicao_final%TYPE
    );
    r_part      t_rec_participa;
    v_resultado VARCHAR2(200);
    v_desempenho VARCHAR2(30);

    CURSOR c_classificacao IS
        SELECT t.nome, pa.pontos_total, pa.posicao_final
        FROM Participa pa
        INNER JOIN Time t ON t.id_time = pa.id_time
        WHERE pa.id_liga = p_id_liga
          AND pa.ano = p_ano
        ORDER BY pa.posicao_final ASC;

BEGIN
    OPEN c_classificacao;
    FETCH c_classificacao INTO r_part;

    WHILE c_classificacao%FOUND LOOP
        IF r_part.posicao = 1 THEN
            v_desempenho := CASE
                WHEN r_part.pontos > 75 THEN 'Dominante'
                WHEN r_part.pontos > 60 THEN 'Solido'
                ELSE 'Apertado'
            END;

            v_resultado := r_part.nome_time
                 ' - '  r_part.pontos  ' pts'
                 ' ('  v_desempenho  ')';
        END IF;

        FETCH c_classificacao INTO r_part;
    END LOOP;

    CLOSE c_classificacao;

    IF v_resultado IS NULL THEN
        RETURN 'Nenhum campeao encontrado.';
    END IF;

    RETURN v_resultado;

EXCEPTION
    WHEN OTHERS THEN
        IF c_classificacao%ISOPEN THEN
            CLOSE c_classificacao;
        END IF;
        RETURN 'Erro: ' || SQLERRM;
END fn_campeao_temporada;
/

-- Comandos utilizados: CREATE FUCTION, CASE WHEN, WHILE LOOP, CURSOR, RECORD