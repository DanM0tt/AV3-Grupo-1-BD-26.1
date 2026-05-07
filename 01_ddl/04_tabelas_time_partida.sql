-- ============================================================
--  TIME (depende de Cidade e Estadio)
-- ============================================================

CREATE TABLE Time (
    id_time             NUMBER          DEFAULT seq_time.NEXTVAL,
    nome                VARCHAR2(100)   NOT NULL,
    apelido             VARCHAR2(50),
    ano_fundacao        NUMBER(4)       NOT NULL,
    titulos_nacionais   NUMBER(3)       DEFAULT 0,
    cidade_sede         VARCHAR2(100)   NOT NULL,
    estado_sede         VARCHAR2(100)   NOT NULL,
    id_estadio          NUMBER,
    CONSTRAINT pk_time              PRIMARY KEY (id_time),
    CONSTRAINT fk_time_cidade       FOREIGN KEY (cidade_sede, estado_sede) REFERENCES Cidade(cidade, estado),
    CONSTRAINT fk_time_estadio      FOREIGN KEY (id_estadio) REFERENCES Estadio(id_estadio),
    CONSTRAINT uq_time_nome         UNIQUE (nome),
    CONSTRAINT ck_time_ano          CHECK (ano_fundacao BETWEEN 1800 AND 2100),
    CONSTRAINT ck_time_titulos      CHECK (titulos_nacionais >= 0)
);

-- Time_Cor (multivalorado de Time)
CREATE TABLE Time_Cor (
    id_time NUMBER         NOT NULL,
    cor     VARCHAR2(30)   NOT NULL,
    CONSTRAINT pk_time_cor          PRIMARY KEY (id_time, cor),
    CONSTRAINT fk_time_cor_time     FOREIGN KEY (id_time) REFERENCES Time(id_time)
);

-- ============================================================
--  PARTIDA
-- ============================================================

CREATE TABLE Partida (
    id_partida          NUMBER          DEFAULT seq_partida.NEXTVAL,
    status              VARCHAR2(20)    NOT NULL,
    publico             NUMBER(6),
    data_hora           TIMESTAMP       NOT NULL,
    numero_rodada       NUMBER(3)       NOT NULL,
    placar_mandante     NUMBER(2)       DEFAULT 0,
    placar_visitante    NUMBER(2)       DEFAULT 0,
    id_estadio          NUMBER          NOT NULL,
    id_liga             NUMBER          NOT NULL,
    ano_temporada       NUMBER(4)       NOT NULL,
    id_time_mandante    NUMBER          NOT NULL,
    id_time_visitante   NUMBER          NOT NULL,
    CONSTRAINT pk_partida               PRIMARY KEY (id_partida),
    CONSTRAINT fk_partida_estadio       FOREIGN KEY (id_estadio) REFERENCES Estadio(id_estadio),
    CONSTRAINT fk_partida_temporada     FOREIGN KEY (id_liga, ano_temporada) REFERENCES Temporada(id_liga, ano),
    CONSTRAINT fk_partida_mandante      FOREIGN KEY (id_time_mandante) REFERENCES Time(id_time),
    CONSTRAINT fk_partida_visitante     FOREIGN KEY (id_time_visitante) REFERENCES Time(id_time),
    CONSTRAINT ck_partida_status        CHECK (status IN ('Agendada','Em Andamento','Encerrada','Suspensa','Cancelada')),
    CONSTRAINT ck_partida_times         CHECK (id_time_mandante <> id_time_visitante),
    CONSTRAINT ck_partida_placar_m      CHECK (placar_mandante >= 0),
    CONSTRAINT ck_partida_placar_v      CHECK (placar_visitante >= 0),
    CONSTRAINT ck_partida_publico       CHECK (publico >= 0),
    CONSTRAINT ck_partida_rodada        CHECK (numero_rodada > 0)
);

COMMIT;