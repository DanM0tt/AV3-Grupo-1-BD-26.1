# Liga de Futebol — Banco de Dados

Projeto desenvolvido para a disciplina de Banco de Dados do Centro de Informática da Universidade Federal de Pernambuco (CIn/UFPE).

Este repositório contém os scripts SQL de criação e povoamento de um banco de dados voltado para o gerenciamento de uma liga de futebol.

---

## Informações da Disciplina

- **Universidade:** Universidade Federal de Pernambuco (UFPE)
- **Centro:** Centro de Informática (CIn)
- **Disciplina:** Banco de Dados
- **Atividade:** AV3 — Scripts de Criação e Povoamento

---

# Equipe

| Login | Nome |
|---|---|
| agan | Antonio Gonçalves de Albuquerque Neto |
| dcms3 | Daniel Cavalcanti da Motta Silveira |
| fam3 | Felipe de Aquino Mulato |
| gmtbn | Gabriel Mezzalira Teixeira Batista do Nascimento |
| iccs | Iago Coutinho da Costa e Silva |
| laco | Leonardo Alves Cavalcanti de Oliveira |

---

# Estrutura do Projeto

```text
AV3-Grupo-1-BD-26.1/
│
├── 00_setup/
│   └── 01_sequences.sql
│
├── 01_ddl/
│   ├── 01_tabelas_base.sql
│   ├── 02_tabelas_dependencias_simples.sql
│   ├── 03_tabelas_pessoas.sql
│   ├── 04_tabelas_time_partida.sql
│   └── 05_tabelas_relacionamentos.sql
│
├── 02_dml/
│   ├── 01_povoamento_cidades_enderecos_estadios.sql
│   ├── 02_povoamento_ligas_temporadas_times.sql
│   ├── 03_povoamento_pessoas.sql
│   ├── 04_povoamento_partidas.sql
│   └── 05_povoamento_relacionamentos.sql
│
└── README.md
```

---

# Organização dos Scripts

## `00_setup`

Contém scripts auxiliares necessários antes da criação das tabelas.

### Arquivos

- `01_sequences.sql`
  - Criação das sequences utilizadas para geração automática de IDs.

---

## `01_ddl`

Contém os scripts DDL (*Data Definition Language*) responsáveis pela estrutura do banco.

### Ordem de execução

```sql
@01_ddl/01_tabelas_base.sql
@01_ddl/02_tabelas_dependencias_simples.sql
@01_ddl/03_tabelas_pessoas.sql
@01_ddl/04_tabelas_time_partida.sql
@01_ddl/05_tabelas_relacionamentos.sql
```

### Conteúdo

- Criação das tabelas principais
- Definição de chaves primárias
- Definição de chaves estrangeiras
- Restrições de integridade
- Relacionamentos entre entidades

---

## `02_dml`

Contém os scripts DML (*Data Manipulation Language*) responsáveis pelo povoamento do banco.

### Ordem de execução

```sql
@02_dml/01_povoamento_cidades_enderecos_estadios.sql
@02_dml/02_povoamento_ligas_temporadas_times.sql
@02_dml/03_povoamento_pessoas.sql
@02_dml/04_povoamento_partidas.sql
@02_dml/05_povoamento_relacionamentos.sql
```

### Conteúdo

- Inserção de cidades
- Inserção de endereços
- Inserção de estádios
- Inserção de ligas
- Inserção de temporadas
- Inserção de times
- Inserção de pessoas
- Inserção de partidas
- Inserção de relacionamentos

---