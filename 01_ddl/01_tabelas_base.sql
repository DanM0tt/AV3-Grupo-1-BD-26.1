-- ============================================================
--  ENTIDADES BASE (sem dependências externas)
-- ============================================================

-- Liga
CREATE TABLE Liga (
    id_liga         NUMBER          DEFAULT seq_liga.NEXTVAL,
    nome            VARCHAR2(100)   NOT NULL,
    pais            VARCHAR2(60)    NOT NULL,
    ent_reguladora  VARCHAR2(100)   NOT NULL,
    ano_fundacao    NUMBER(4)       NOT NULL,
    CONSTRAINT pk_liga          PRIMARY KEY (id_liga),
    CONSTRAINT ck_liga_ano      CHECK (ano_fundacao BETWEEN 1800 AND 2100)
);

-- Cidade
CREATE TABLE Cidade (
    cidade  VARCHAR2(100)   NOT NULL,
    estado  VARCHAR2(100)   NOT NULL,
    pais    VARCHAR2(60)    NOT NULL,
    CONSTRAINT pk_cidade PRIMARY KEY (cidade, estado)
);

-- Endereço
CREATE TABLE Endereco (
    CEP     VARCHAR2(9)     NOT NULL,
    numero  VARCHAR2(10)    NOT NULL,
    rua     VARCHAR2(150)   NOT NULL,
    bairro  VARCHAR2(100)   NOT NULL,
    cidade  VARCHAR2(100)   NOT NULL,
    estado  VARCHAR2(100)   NOT NULL,
    CONSTRAINT pk_endereco PRIMARY KEY (CEP, numero, rua)
);

COMMIT;