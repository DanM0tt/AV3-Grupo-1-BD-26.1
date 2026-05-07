-- ============================================================
--  ESPECIALIZAÇÕES DE PESSOA
-- ============================================================

-- Jogador
CREATE TABLE Jogador (
    CPF             VARCHAR2(11)    NOT NULL,
    posicao         VARCHAR2(30)    NOT NULL,
    altura          NUMBER(4,2),
    peso            NUMBER(5,2),
    pe_dominante    VARCHAR2(10)    NOT NULL,
    numero_camisa   NUMBER(2),
    CONSTRAINT pk_jogador           PRIMARY KEY (CPF),
    CONSTRAINT fk_jogador_pessoa    FOREIGN KEY (CPF) REFERENCES Pessoa(CPF),
    CONSTRAINT ck_jogador_posicao   CHECK (posicao IN ('Goleiro','Zagueiro','Lateral','Volante','Meia','Atacante')),
    CONSTRAINT ck_jogador_pe        CHECK (pe_dominante IN ('Direito','Esquerdo','Ambidestro')),
    CONSTRAINT ck_jogador_altura    CHECK (altura BETWEEN 1.40 AND 2.30),
    CONSTRAINT ck_jogador_peso      CHECK (peso BETWEEN 40 AND 150),
    CONSTRAINT ck_jogador_camisa    CHECK (numero_camisa BETWEEN 1 AND 99)
);

-- Técnico
CREATE TABLE Tecnico (
    CPF                     VARCHAR2(11)    NOT NULL,
    licenca                 VARCHAR2(20)    NOT NULL,
    formacao_tatica_preferida VARCHAR2(10),
    CONSTRAINT pk_tecnico           PRIMARY KEY (CPF),
    CONSTRAINT fk_tecnico_pessoa    FOREIGN KEY (CPF) REFERENCES Pessoa(CPF),
    CONSTRAINT ck_tecnico_licenca   CHECK (licenca IN ('UEFA Pro','UEFA A','UEFA B','UEFA C','CBF A','CBF B','CBF C'))
);

-- Árbitro
CREATE TABLE Arbitro (
    CPF                 VARCHAR2(11)    NOT NULL,
    ID_FIFA             VARCHAR2(20)    NOT NULL,
    anos_experiencia    NUMBER(2)       NOT NULL,
    nivel_certificacao  VARCHAR2(30)    NOT NULL,
    CONSTRAINT pk_arbitro               PRIMARY KEY (CPF),
    CONSTRAINT fk_arbitro_pessoa        FOREIGN KEY (CPF) REFERENCES Pessoa(CPF),
    CONSTRAINT uq_arbitro_id_fifa       UNIQUE (ID_FIFA),
    CONSTRAINT ck_arbitro_experiencia   CHECK (anos_experiencia >= 0),
    CONSTRAINT ck_arbitro_nivel         CHECK (nivel_certificacao IN ('FIFA','Nacional','Regional','Estadual'))
);

COMMIT;