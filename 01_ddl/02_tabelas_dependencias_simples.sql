-- ============================================================
--  ENTIDADES COM DEPENDÊNCIAS SIMPLES
-- ============================================================

-- Temporada (fraca de Liga)
CREATE TABLE Temporada (
    id_liga         NUMBER          NOT NULL,
    ano             NUMBER(4)       NOT NULL,
    data_inicio     DATE            NOT NULL,
    data_fim        DATE            NOT NULL,
    numero_rodadas  NUMBER(3)       NOT NULL,
    CONSTRAINT pk_temporada         PRIMARY KEY (id_liga, ano),
    CONSTRAINT fk_temporada_liga    FOREIGN KEY (id_liga) REFERENCES Liga(id_liga),
    CONSTRAINT ck_temporada_datas   CHECK (data_fim > data_inicio),
    CONSTRAINT ck_temporada_ano     CHECK (ano BETWEEN 1800 AND 2100),
    CONSTRAINT ck_temporada_rodadas CHECK (numero_rodadas > 0)
);

-- Estádio
CREATE TABLE Estadio (
    id_estadio      NUMBER          DEFAULT seq_estadio.NEXTVAL,
    nome            VARCHAR2(100)   NOT NULL,
    capacidade      NUMBER(6)       NOT NULL,
    ano_inauguracao NUMBER(4)       NOT NULL,
    gramado         VARCHAR2(30)    NOT NULL,
    cidade          VARCHAR2(100)   NOT NULL,
    estado          VARCHAR2(100)   NOT NULL,
    CONSTRAINT pk_estadio               PRIMARY KEY (id_estadio),
    CONSTRAINT fk_estadio_cidade        FOREIGN KEY (cidade, estado) REFERENCES Cidade(cidade, estado),
    CONSTRAINT ck_estadio_capacidade    CHECK (capacidade > 0),
    CONSTRAINT ck_estadio_ano           CHECK (ano_inauguracao BETWEEN 1800 AND 2100),
    CONSTRAINT ck_estadio_gramado       CHECK (gramado IN ('Natural', 'Sintetico', 'Hibrido'))
);

-- Pessoa
CREATE TABLE Pessoa (
    CPF             VARCHAR2(11)    NOT NULL,
    telefone        VARCHAR2(15),
    email           VARCHAR2(120),
    CEP             VARCHAR2(9),
    numero          VARCHAR2(10),
    rua             VARCHAR2(150),
    data_nascimento DATE            NOT NULL,
    CONSTRAINT pk_pessoa            PRIMARY KEY (CPF),
    CONSTRAINT fk_pessoa_endereco   FOREIGN KEY (CEP, numero, rua) REFERENCES Endereco(CEP, numero, rua),
    CONSTRAINT ck_pessoa_cpf        CHECK (REGEXP_LIKE(CPF, '^\d{11}$')),
    CONSTRAINT ck_pessoa_email      CHECK (email LIKE '%@%.%')
);

-- Nacionalidade (multivalorado de Pessoa)
CREATE TABLE Nacionalidade (
    CPF         VARCHAR2(11)    NOT NULL,
    nacionalidade VARCHAR2(60)  NOT NULL,
    CONSTRAINT pk_nacionalidade         PRIMARY KEY (CPF, nacionalidade),
    CONSTRAINT fk_nacionalidade_pessoa  FOREIGN KEY (CPF) REFERENCES Pessoa(CPF)
);

COMMIT;