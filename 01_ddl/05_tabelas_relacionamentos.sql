-- ============================================================
--  RELACIONAMENTOS
-- ============================================================

-- Participa (Time — Temporada)
CREATE TABLE Participa (
    id_time         NUMBER      NOT NULL,
    id_liga         NUMBER      NOT NULL,
    ano             NUMBER(4)   NOT NULL,
    pontos_total    NUMBER(4)   DEFAULT 0,
    posicao_final   NUMBER(3),
    gols_marcados   NUMBER(4)   DEFAULT 0,
    gols_sofridos   NUMBER(4)   DEFAULT 0,
    valor_premio    NUMBER(15,2),
    CONSTRAINT pk_participa             PRIMARY KEY (id_time, id_liga, ano),
    CONSTRAINT fk_participa_time        FOREIGN KEY (id_time) REFERENCES Time(id_time),
    CONSTRAINT fk_participa_temporada   FOREIGN KEY (id_liga, ano) REFERENCES Temporada(id_liga, ano),
    CONSTRAINT ck_participa_pontos      CHECK (pontos_total >= 0),
    CONSTRAINT ck_participa_posicao     CHECK (posicao_final > 0),
    CONSTRAINT ck_participa_gols_m      CHECK (gols_marcados >= 0),
    CONSTRAINT ck_participa_gols_s      CHECK (gols_sofridos >= 0),
    CONSTRAINT ck_participa_premio      CHECK (valor_premio >= 0)
);

-- Contrato (Jogador — Time)
CREATE TABLE Contrato (
    cpf_jogador             VARCHAR2(11)    NOT NULL,
    id_time                 NUMBER          NOT NULL,
    data_inicio             DATE            NOT NULL,
    data_fim                DATE,
    salario_mensal          NUMBER(12,2)    NOT NULL,
    valor_clausula_rescisao NUMBER(15,2),
    tipo                    VARCHAR2(20)    NOT NULL,
    CONSTRAINT pk_contrato              PRIMARY KEY (cpf_jogador, id_time, data_inicio),
    CONSTRAINT fk_contrato_jogador      FOREIGN KEY (cpf_jogador) REFERENCES Jogador(CPF),
    CONSTRAINT fk_contrato_time         FOREIGN KEY (id_time) REFERENCES Time(id_time),
    CONSTRAINT ck_contrato_datas        CHECK (data_fim IS NULL OR data_fim > data_inicio),
    CONSTRAINT ck_contrato_salario      CHECK (salario_mensal > 0),
    CONSTRAINT ck_contrato_clausula     CHECK (valor_clausula_rescisao >= 0),
    CONSTRAINT ck_contrato_tipo         CHECK (tipo IN ('Efetivo','Emprestimo','Temporario'))
);

-- Escalação (Jogador — Partida — Time)
CREATE TABLE Escalacao (
    id_partida          NUMBER          NOT NULL,
    cpf_jogador         VARCHAR2(11)    NOT NULL,
    id_time             NUMBER          NOT NULL,
    posicao_jogada      VARCHAR2(30)    NOT NULL,
    titular             CHAR(1)         NOT NULL,
    minuto_entrada      NUMBER(3),
    minuto_saida        NUMBER(3),
    num_gols            NUMBER(2)       DEFAULT 0,
    num_assistencias    NUMBER(2)       DEFAULT 0,
    cartoes_amarelos    NUMBER(1)       DEFAULT 0,
    cartoes_vermelhos   NUMBER(1)       DEFAULT 0,
    CONSTRAINT pk_escalacao             PRIMARY KEY (id_partida, cpf_jogador, id_time),
    CONSTRAINT fk_escalacao_partida     FOREIGN KEY (id_partida) REFERENCES Partida(id_partida),
    CONSTRAINT fk_escalacao_jogador     FOREIGN KEY (cpf_jogador) REFERENCES Jogador(CPF),
    CONSTRAINT fk_escalacao_time        FOREIGN KEY (id_time) REFERENCES Time(id_time),
    CONSTRAINT ck_escalacao_titular     CHECK (titular IN ('S','N')),
    CONSTRAINT ck_escalacao_minutos     CHECK (minuto_saida IS NULL OR minuto_saida > minuto_entrada),
    CONSTRAINT ck_escalacao_gols        CHECK (num_gols >= 0),
    CONSTRAINT ck_escalacao_assist      CHECK (num_assistencias >= 0),
    CONSTRAINT ck_escalacao_amarelos    CHECK (cartoes_amarelos IN (0,1,2)),
    CONSTRAINT ck_escalacao_vermelhos   CHECK (cartoes_vermelhos IN (0,1)),
    CONSTRAINT ck_escalacao_posicao     CHECK (posicao_jogada IN ('Goleiro','Zagueiro','Lateral','Volante','Meia','Atacante'))
);

-- Substitui (Jogador entra — Jogador sai — Partida)
CREATE TABLE Substitui (
    id_partida              NUMBER          NOT NULL,
    cpf_jogador_entra       VARCHAR2(11)    NOT NULL,
    cpf_jogador_sai         VARCHAR2(11)    NOT NULL,
    minuto_substituicao     NUMBER(3)       NOT NULL,
    CONSTRAINT pk_substitui             PRIMARY KEY (id_partida, cpf_jogador_entra, cpf_jogador_sai),
    CONSTRAINT fk_substitui_partida     FOREIGN KEY (id_partida) REFERENCES Partida(id_partida),
    CONSTRAINT fk_substitui_entra       FOREIGN KEY (cpf_jogador_entra) REFERENCES Jogador(CPF),
    CONSTRAINT fk_substitui_sai         FOREIGN KEY (cpf_jogador_sai) REFERENCES Jogador(CPF),
    CONSTRAINT ck_substitui_jogadores   CHECK (cpf_jogador_entra <> cpf_jogador_sai),
    CONSTRAINT ck_substitui_minuto      CHECK (minuto_substituicao BETWEEN 1 AND 120)
);

-- Apita (Árbitro — Partida)
CREATE TABLE Apita (
    id_partida  NUMBER          NOT NULL,
    cpf_arbitro VARCHAR2(11)    NOT NULL,
    papel       VARCHAR2(30)    NOT NULL,
    CONSTRAINT pk_apita             PRIMARY KEY (id_partida, cpf_arbitro),
    CONSTRAINT fk_apita_partida     FOREIGN KEY (id_partida) REFERENCES Partida(id_partida),
    CONSTRAINT fk_apita_arbitro     FOREIGN KEY (cpf_arbitro) REFERENCES Arbitro(CPF),
    CONSTRAINT ck_apita_papel       CHECK (papel IN ('Principal','Assistente 1','Assistente 2','Quarto Arbitro','VAR'))
);

-- Dirige (Técnico — Time)
CREATE TABLE Dirige (
    cpf_tecnico             VARCHAR2(11)    NOT NULL,
    id_time                 NUMBER          NOT NULL,
    data_inicio             DATE            NOT NULL,
    data_fim                DATE,
    num_partidas_dirigidas  NUMBER(4)       DEFAULT 0,
    aproveitamento          NUMBER(5,2),
    CONSTRAINT pk_dirige            PRIMARY KEY (cpf_tecnico, id_time, data_inicio),
    CONSTRAINT fk_dirige_tecnico    FOREIGN KEY (cpf_tecnico) REFERENCES Tecnico(CPF),
    CONSTRAINT fk_dirige_time       FOREIGN KEY (id_time) REFERENCES Time(id_time),
    CONSTRAINT ck_dirige_datas      CHECK (data_fim IS NULL OR data_fim > data_inicio),
    CONSTRAINT ck_dirige_partidas   CHECK (num_partidas_dirigidas >= 0),
    CONSTRAINT ck_dirige_aprov      CHECK (aproveitamento BETWEEN 0 AND 100)
);

-- Auxilia (Técnico — Técnico — Time)
CREATE TABLE Auxilia (
    cpf_tecnico_principal   VARCHAR2(11)    NOT NULL,
    cpf_tecnico_auxiliar    VARCHAR2(11)    NOT NULL,
    data_inicio             DATE            NOT NULL,
    data_fim                DATE,
    id_time                 NUMBER          NOT NULL,
    CONSTRAINT pk_auxilia               PRIMARY KEY (cpf_tecnico_principal, cpf_tecnico_auxiliar, data_inicio),
    CONSTRAINT fk_auxilia_principal     FOREIGN KEY (cpf_tecnico_principal) REFERENCES Tecnico(CPF),
    CONSTRAINT fk_auxilia_auxiliar      FOREIGN KEY (cpf_tecnico_auxiliar) REFERENCES Tecnico(CPF),
    CONSTRAINT fk_auxilia_time          FOREIGN KEY (id_time) REFERENCES Time(id_time),
    CONSTRAINT ck_auxilia_tecnicos      CHECK (cpf_tecnico_principal <> cpf_tecnico_auxiliar),
    CONSTRAINT ck_auxilia_datas         CHECK (data_fim IS NULL OR data_fim > data_inicio)
);

COMMIT;