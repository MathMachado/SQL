# Vídeo 2: Bancos de Dados Relacionais
Este conteúdo cobre uma introdução ao SQL, incluindo sua história, aplicações, conceitos básicos de tabelas, registros e colunas, além de exemplos de RDBMS. Com esses tópicos, seus alunos terão uma base sólida para começar a trabalhar com bancos de dados relacionais.

# Introdução ao SQL

## O que é SQL?
SQL (Structured Query Language) é uma linguagem padrão usada para gerenciar e manipular bancos de dados relacionais. Com SQL, podemos realizar uma variedade de operações, como:

- Consultar dados
- Inserir novos registros
- Atualizar registros existentes
- Excluir registros
- Criar e modificar a estrutura das tabelas

SQL é essencial para qualquer pessoa que trabalhe com grandes volumes de dados ou que precise interagir com bancos de dados de maneira eficiente.

## História do SQL
A história do SQL começa nos anos 1970, quando Edgar F. Codd, um pesquisador da IBM, desenvolveu o modelo relacional de gerenciamento de dados. A partir de suas ideias, a IBM começou a desenvolver um sistema chamado System R, que foi um dos primeiros sistemas de banco de dados relacionais.

Em 1979, a empresa Relational Software, que mais tarde se tornaria a Oracle Corporation, lançou o primeiro produto comercial de SQL. Desde então, SQL se tornou a linguagem padrão para bancos de dados relacionais, com várias implementações disponíveis no mercado.

## Aplicações do SQL
SQL é usado em diversas áreas, incluindo:

- **Análise de Dados:** Para extrair insights de grandes volumes de dados.
- **Desenvolvimento de Software:** Para armazenar e recuperar dados em aplicativos web e móveis.
- **Administração de Banco de Dados:** Para gerenciar a estrutura e integridade dos dados.
- **Business Intelligence:** Para criar relatórios e dashboards que auxiliam na tomada de decisões empresariais.

## Conceitos Básicos

### Tabelas, Registros e Colunas
- **Tabela:** É uma coleção de dados organizados em linhas e colunas. Cada tabela em um banco de dados representa uma entidade, como clientes, produtos ou pedidos.
- **Registro:** Também chamado de linha ou tupla, um registro é uma única entrada em uma tabela, que contém dados relacionados. Por exemplo, um registro na tabela `clientes` pode conter informações sobre um único cliente.
- **Coluna:** Cada coluna em uma tabela representa um atributo da entidade. Por exemplo, na tabela `clientes`, as colunas podem incluir `id`, `nome`, `idade` e `cidade`.

**Exemplo de uma Tabela:**

| id | nome          | idade | cidade         |
|----|---------------|-------|----------------|
| 1  | João Silva    | 28    | São Paulo      |
| 2  | Maria Oliveira| 34    | Rio de Janeiro |
| 3  | Pedro Santos  | 22    | Belo Horizonte |

### Exemplos de RDBMS

#### Principais Sistemas de Gerenciamento de Banco de Dados Relacionais (RDBMS)
- **MySQL:** Muito popular para aplicações web, open-source e amplamente utilizado por desenvolvedores.
- **PostgreSQL:** Conhecido por sua conformidade com os padrões SQL e por suas funcionalidades avançadas.
- **Oracle Database:** Um dos sistemas de banco de dados mais poderosos e amplamente utilizados em grandes empresas.
- **Microsoft SQL Server:** Utilizado principalmente em ambientes corporativos, com forte integração com produtos Microsoft.
- **SQLite:** Um banco de dados leve, ideal para aplicações móveis e embarcadas.


## Parte 3: Exercícios Práticos
- **Exercício 1: Identificação de Componentes em Exemplos de Bancos de Dados**

### Exemplo de Exercício:
1. **Tabela Fictícia: Produtos**
   - **Colunas:**
     - `ID` (INT)
     - `Nome` (VARCHAR)
     - `Categoria` (VARCHAR)
     - `Preco` (DECIMAL)
     - `Quantidade` (INT)
   - **Registro Exemplo:**
     - (1, "Caneta", "Escritório", 1.50, 100)
    
  Por favor, vá até o Databricks, Notebook ´Notebook_Video_2.sql´ e tenha sua primeira experiência com o SQL.

2. **Tabela Fictícia: Funcionarios**
   - **Colunas:**
     - `ID` (INT)
     - `Nome` (VARCHAR)
     - `Cargo` (VARCHAR)
     - `Salario` (DECIMAL)
     - `Data_Admissao` (DATE)
   - **Registro Exemplo:**
     - (1, "Ana Costa", "Analista", 3500.00, "2023-05-10")
