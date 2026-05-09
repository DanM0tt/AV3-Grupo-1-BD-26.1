# Liga de Futebol — Banco de Dados

Projeto desenvolvido para a disciplina de Banco de Dados do Centro de Informática da Universidade Federal de Pernambuco (CIn/UFPE).

Este repositório contém os scripts SQL de criação, povoamento e consulta de um banco de dados voltado para o gerenciamento de uma liga de futebol, além de blocos PL/SQL com procedures, functions, triggers e packages.

---

## Informações da Disciplina

- **Universidade:** Universidade Federal de Pernambuco (UFPE)
- **Centro:** Centro de Informática (CIn)
- **Disciplina:** Gerenciamento de Dados e Informação (IF685)
- **Professor(a):** Valéria Times
- **Atividades:** AV3 — Scripts de Criação e Povoamento / AV4 — Scripts de Consulta e PL/SQL

---

## Equipe

| Login | Nome |
|---|---|
| agan | Antonio Gonçalves de Albuquerque Neto |
| dcms3 | Daniel Cavalcanti da Motta Silveira |
| fam3 | Felipe de Aquino Mulato |
| gmtbn | Gabriel Mezzalira Teixeira Batista do Nascimento |
| iccs | Iago Coutinho da Costa e Silva |
| laco | Leonardo Alves Cavalcanti de Oliveira |

---

## Estrutura do Projeto

```text
Grupo-1-BD-26.1/
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
├── 03_queries/
│   ├── 01_sql/
│   │   ├── 01_query_scout.sql
│   │   ├── 02_query_impacto_publico.sql
│   │   ├── 03_query_desempenhos_ofensivos.sql
│   │   ├── 04_query_elencos.sql
│   │   ├── 05_query_media_gols.sql
│   │   ├── 06_query_rebaixados.sql
│   │   └── 07_query_tabela_partida.sql
│   │
│   └── 02_pl_sql/
│       ├── 01_query_consulta_contrato.sql
│       ├── 02_query_partida.sql
│       ├── 03_query_campeao.sql
│       ├── 04_query_artilheiros.sql
│       ├── 05_query_estatisticas_time.sql
│       └── 06_query_trigger_partida.sql
│
├── Normalização - AV2 Grupo 1.pdf
└── README.md
```

---

## Organização dos Scripts

### `00_setup`

Contém scripts auxiliares necessários antes da criação das tabelas.

- `01_sequences.sql` — Criação das sequences utilizadas para geração automática de IDs.

---

### `01_ddl`

Contém os scripts DDL (*Data Definition Language*) responsáveis pela estrutura do banco.

**Ordem de execução:**

```sql
@01_ddl/01_tabelas_base.sql
@01_ddl/02_tabelas_dependencias_simples.sql
@01_ddl/03_tabelas_pessoas.sql
@01_ddl/04_tabelas_time_partida.sql
@01_ddl/05_tabelas_relacionamentos.sql
```

**Conteúdo:** criação das tabelas principais, definição de chaves primárias e estrangeiras, restrições de integridade e relacionamentos entre entidades.

---

### `02_dml`

Contém os scripts DML (*Data Manipulation Language*) responsáveis pelo povoamento do banco.

**Ordem de execução:**

```sql
@02_dml/01_povoamento_cidades_enderecos_estadios.sql
@02_dml/02_povoamento_ligas_temporadas_times.sql
@02_dml/03_povoamento_pessoas.sql
@02_dml/04_povoamento_partidas.sql
@02_dml/05_povoamento_relacionamentos.sql
```

**Conteúdo:** inserção de cidades, endereços, estádios, ligas, temporadas, times, pessoas, partidas e relacionamentos.

---

### `03_queries`

Contém os scripts de consulta divididos em SQL puro e PL/SQL, desenvolvidos para a AV4.

#### `01_sql`

Scripts de consulta SQL cobrindo os principais recursos da linguagem, incluindo junções, subconsultas, funções de agregação, agrupamentos, views e operadores de conjunto. Cada arquivo aborda um tema analítico diferente do domínio da liga.

> **Nota sobre GRANT / REVOKE:** Os comandos `GRANT` e `REVOKE` são utilizados para controle de privilégios no banco de dados. `GRANT` concede permissões a usuários ou roles (ex.: permissão de `SELECT` ou `INSERT` em uma tabela), enquanto `REVOKE` remove essas permissões. Esses comandos não são suportados pelo Oracle Live SQL e, por isso, não constam nos arquivos do repositório.

| Arquivo | Descrição |
|---|---|
| `01_query_scout.sql` | Consultas para análise de desempenho de jogadores |
| `02_query_impacto_publico.sql` | Consultas sobre público e impacto nas partidas |
| `03_query_desempenhos_ofensivos.sql` | Análise de desempenhos ofensivos por jogador |
| `04_query_elencos.sql` | Consultas sobre composição de elencos |
| `05_query_media_gols.sql` | Média de gols por time e temporada |
| `06_query_rebaixados.sql` | Identificação de times rebaixados na liga |
| `07_query_tabela_partida.sql` | Queries em cima da tabela Partida (INSERT INTO, UPDATE, DELETE) |

#### `02_pl_sql`

Scripts com blocos PL/SQL cobrindo recursos como procedures, functions, cursors, triggers, packages e tratamento de exceções.

| Arquivo | Descrição |
|---|---|
| `01_query_consulta_contrato.sql` | Consulta de contratos de jogadores por CPF |
| `02_query_partida.sql` | Processamento de dados de partidas (quantidade de gols e artilheiro) |
| `03_query_campeao.sql` | Descobrimento dos campeões das temporadas |
| `04_query_artilheiros.sql` | Lista o top 3 de artilheiros do Brasileirão 2024 |
| `05_query_estatisticas_time.sql` | Estatísticas gerais por time (saldo de gols e média de público) |
| `06_query_trigger_partida.sql` | Trigger para eventos na tabela Partida |

---

### `Normalização - AV2 Grupo 1.pdf`

Documento teórico descrevendo o processo de normalização do mini mundo da liga de futebol, com a análise das dependências funcionais e a aplicação das formas normais nas tabelas do banco de dados.

---

## Checklist AV4

### SQL (26 itens)

| # | Comando / Recurso | Coberto |
|---|---|---|
| 1 | ALTER TABLE | ✅ |
| 2 | CREATE INDEX | ✅ |
| 3 | INSERT INTO | ✅ |
| 4 | UPDATE | ✅ |
| 5 | DELETE | ✅ |
| 6 | SELECT-FROM-WHERE | ✅ |
| 7 | BETWEEN | ✅ |
| 8 | IN | ✅ |
| 9 | LIKE | ✅ |
| 10 | IS NULL ou IS NOT NULL | ✅ |
| 11 | INNER JOIN | ✅ |
| 12 | MAX | ✅ |
| 13 | MIN | ✅ |
| 14 | AVG | ✅ |
| 15 | COUNT | ✅ |
| 16 | LEFT / RIGHT / FULL OUTER JOIN | ✅ |
| 17 | Subconsulta com operador relacional | ✅ |
| 18 | Subconsulta com IN | ✅ |
| 19 | Subconsulta com ANY | ✅ |
| 20 | Subconsulta com ALL | ✅ |
| 21 | ORDER BY | ✅ |
| 22 | GROUP BY | ✅ |
| 23 | HAVING | ✅ |
| 24 | UNION / INTERSECT / MINUS | ✅ |
| 25 | CREATE VIEW | ✅ |
| 26 | GRANT / REVOKE | ✅ (teórico) |

### PL/SQL (20 itens)

| # | Recurso | Coberto |
|---|---|---|
| 1 | USO DE RECORD | ✅ |
| 2 | Estrutura de dados do tipo TABLE | ✅ |
| 3 | Bloco anônimo | ✅ |
| 4 | CREATE PROCEDURE | ✅ |
| 5 | CREATE FUNCTION | ✅ |
| 6 | %TYPE | ✅ |
| 7 | %ROWTYPE | ✅ |
| 8 | IF ELSIF | ✅ |
| 9 | CASE WHEN | ✅ |
| 10 | LOOP EXIT WHEN | ✅ |
| 11 | WHILE LOOP | ✅ |
| 12 | FOR IN LOOP | ✅ |
| 13 | SELECT … INTO | ✅ |
| 14 | CURSOR (OPEN, FETCH e CLOSE) | ✅ |
| 15 | EXCEPTION WHEN | ✅ |
| 16 | Parâmetros (IN, OUT ou IN OUT) | ✅ |
| 17 | CREATE OR REPLACE PACKAGE | ✅ |
| 18 | CREATE OR REPLACE PACKAGE BODY | ✅ |
| 19 | CREATE OR REPLACE TRIGGER (comando) | ✅ |
| 20 | CREATE OR REPLACE TRIGGER (linha) | ✅ |
