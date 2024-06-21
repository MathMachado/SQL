# SQL
Olá pessoal. Este repositório tem por objetivo apresentar o conteúdo de SQL. Teremos um total de 10 horas de conteúdo, com exemplos práticos e exercícios no final de cada vídeo, totalizando 60 vídeos de 10 minutos cada. Cada vídeo incluirá uma parte teórica, exemplos práticos e exercícios para reforçar o aprendizado. Segue o plano detalhado:

## Plano de Treinamento de SQL - 60 Vídeos de 10 Minutos

### Módulo 0: Configurando o ambiente de desenvolvimento

#### 1. Introdução ao Databricks
- **O que é Databricks?**
  - Databricks é uma plataforma unificada de análise de dados, criada pelos fundadores do Apache Spark.
  - Combina o poder do processamento distribuído com a simplicidade de uso de notebooks interativos.
  - Projetado para engenheiros de dados, cientistas de dados e analistas de negócios, Databricks facilita a colaboração e o gerenciamento de grandes volumes de dados.

#### 2. Principais Características do Databricks
- **Integração com Apache Spark:**
  - Databricks utiliza o Apache Spark para processamento de dados em larga escala.
  - Suporte nativo para processamento de dados estruturados e não estruturados.
- **Notebooks Interativos:**
  - Interface de notebooks que permite a escrita e execução de código interativo em tempo real.
  - Suporte a várias linguagens como SQL, Python, Scala e R.
- **Gerenciamento de Clusters:**
  - Facilidade na criação e gerenciamento de clusters de computação.
  - Escalabilidade automática conforme a carga de trabalho.
- **Integração com Nuvem:**
  - Totalmente integrado com serviços de nuvem como AWS, Azure e Google Cloud.
  - Armazenamento seguro e eficiente de dados.
- **Colaboração:**
  - Funcionalidades para colaboração entre equipes.
  - Controle de versão e compartilhamento de notebooks.
- **Segurança:**
  - Configurações avançadas de segurança e compliance.
  - Controle de acesso baseado em função (RBAC).

#### 3. Configurando o Databricks
- **Passo 1: Criar uma Conta Databricks**
  - Acesse o site do Databricks ([databricks.com](https://databricks.com/)).
  - Clique em "Get started for free" para criar uma conta gratuita.
  - Preencha as informações necessárias e verifique seu email para ativar a conta.

- **Passo 2: Configurar um Workspace**
  - Após o login, crie um workspace, que é o ambiente onde você realizará suas análises.
  - Siga o assistente de configuração para definir as preferências do workspace.

- **Passo 3: Criar e Gerenciar Clusters**
  - No menu do workspace, clique em "Clusters".
  - Clique em "Create Cluster" para criar um novo cluster.
  - Configure o cluster com as especificações desejadas (tipo de instância, número de nós, etc.).
  - Clique em "Create Cluster" e aguarde a inicialização.

- **Passo 4: Criar um Notebook**
  - No menu do workspace, clique em "Workspace" e depois em "Create" -> "Notebook".
  - Dê um nome ao notebook e escolha a linguagem (por exemplo, SQL).
  - Selecione o cluster criado anteriormente para executar os comandos no notebook.

- **Passo 5: Conectar-se a um Banco de Dados**
  - No notebook, você pode começar a escrever comandos SQL para conectar-se a um banco de dados.
  - Use a interface de notebook para interagir com seus dados, criar consultas, visualizações e análises.

#### 4. Exemplos Práticos e Exercícios
- **Exemplo Prático:**
  - Criação de um cluster simples.
  - Criação de um notebook e execução de um comando SQL básico.

- **Exercícios:**
  - Criar um workspace no Databricks.
  - Configurar um cluster e criar um notebook.
  - Conectar-se a um banco de dados fictício e realizar uma consulta simples.

### Módulo 1: Introdução e Conceitos Básicos
#### Vídeo 1: Introdução ao SQL
- **Conteúdo:**
  - O que é SQL?
  - História do SQL.
  - Aplicações do SQL.
  - **Exercícios:** Pesquisa sobre bancos de dados relacionais.

#### Vídeo 2: Bancos de Dados Relacionais
- **Conteúdo:**
  - Conceitos de tabelas, registros, e colunas.
  - Exemplos de RDBMS.
  - **Exercícios:** Identificação de componentes em exemplos de bancos de dados.

#### Vídeo 3: Estrutura de um Banco de Dados
- **Conteúdo:**
  - Estrutura básica de um banco de dados.
  - **Exercícios:** Desenho de um esquema simples de banco de dados.

### Módulo 2: Criando e Gerenciando Bancos de Dados e Tabelas
#### Vídeo 4: Criando Bancos de Dados
- **Conteúdo:**
  - Comando `CREATE DATABASE`.
  - **Exercícios:** Criação de diferentes bancos de dados.

#### Vídeo 5: Criando Tabelas
- **Conteúdo:**
  - Comando `CREATE TABLE`.
  - Tipos de dados comuns.
  - **Exercícios:** Criação de tabelas com diferentes esquemas.

#### Vídeo 6: Modificando Tabelas
- **Conteúdo:**
  - Comando `ALTER TABLE`.
  - **Exercícios:** Alteração de tabelas existentes.

#### Vídeo 7: Excluindo Tabelas e Bancos de Dados
- **Conteúdo:**
  - Comando `DROP TABLE` e `DROP DATABASE`.
  - **Exercícios:** Exclusão de tabelas e bancos de dados criados anteriormente.

### Módulo 3: Inserindo Dados
#### Vídeo 8: Inserindo Dados Simples
- **Conteúdo:**
  - Comando `INSERT INTO`.
  - **Exercícios:** Inserção de dados em tabelas simples.

#### Vídeo 9: Inserindo Múltiplas Linhas
- **Conteúdo:**
  - Inserção de múltiplas linhas de dados.
  - **Exercícios:** Inserção de múltiplas linhas em uma tabela.

#### Vídeo 10: Inserção em Colunas Específicas
- **Conteúdo:**
  - Inserção em colunas específicas.
  - **Exercícios:** Inserção de dados em colunas específicas.

### Módulo 4: Consultando Dados
##### Vídeo 11: Selecionando Dados
- **Conteúdo:**
  - Comando `SELECT`.
  - **Exercícios:** Seleção de dados de tabelas simples.

#### Vídeo 12: Utilizando Alias
- **Conteúdo:**
  - Utilização de alias com `AS`.
  - **Exercícios:** Aplicação de alias em consultas.

#### Vídeo 13: Filtrando Dados com WHERE
- **Conteúdo:**
  - Filtros básicos com `WHERE`.
  - **Exercícios:** Aplicação de filtros em consultas.

#### Vídeo 14: Operadores em WHERE
- **Conteúdo:**
  - Operadores comuns (`=`, `<>`, `<`, `>`, `<=`, `>=`).
  - **Exercícios:** Uso de operadores em filtros.

#### Vídeo 15: Ordenando Resultados
- **Conteúdo:**
  - Comando `ORDER BY`.
  - **Exercícios:** Ordenação de resultados em consultas.

#### Vídeo 16: Limitando Resultados
- **Conteúdo:**
  - Comando `LIMIT`.
  - **Exercícios:** Limitação de resultados retornados.

#### Vídeo 17: Removendo Duplicatas
- **Conteúdo:**
  - Comando `DISTINCT`.
  - **Exercícios:** Remoção de duplicatas em consultas.

### Módulo 5: Funções de Agregação e Agrupamento
#### Vídeo 18: Função COUNT
- **Conteúdo:**
  - Função `COUNT`.
  - **Exercícios:** Contagem de registros em tabelas.

#### Vídeo 19: Funções SUM e AVG
- **Conteúdo:**
  - Funções `SUM` e `AVG`.
  - **Exercícios:** Cálculo de soma e média de valores.

#### Vídeo 20: Funções MIN e MAX
- **Conteúdo:**
  - Funções `MIN` e `MAX`.
  - **Exercícios:** Identificação de valores mínimo e máximo.

#### Vídeo 21: Agrupando Resultados
- **Conteúdo:**
  - Comando `GROUP BY`.
  - **Exercícios:** Agrupamento de resultados por colunas específicas.

#### Vídeo 22: Filtrando Grupos com HAVING
- **Conteúdo:**
  - Comando `HAVING`.
  - **Exercícios:** Filtragem de grupos de resultados.

### Módulo 6: Junções entre Tabelas (JOINS)
#### Vídeo 23: Introdução aos Joins
- **Conteúdo:**
  - Conceito de joins.
  - **Exercícios:** Exemplos simples de joins.

#### Vídeo 24: Inner Join
- **Conteúdo:**
  - Comando `INNER JOIN`.
  - **Exercícios:** Realização de inner joins entre tabelas.

#### Vídeo 25: Left Join
- **Conteúdo:**
  - Comando `LEFT JOIN`.
  - **Exercícios:** Realização de left joins entre tabelas.

#### Vídeo 26: Right Join
- **Conteúdo:**
  - Comando `RIGHT JOIN`.
  - **Exercícios:** Realização de right joins entre tabelas.

#### Vídeo 27: Exemplos Práticos de Joins
- **Conteúdo:**
  - Exemplos práticos combinando diferentes tipos de joins.
  - **Exercícios:** Aplicação de joins em cenários reais.

### Módulo 7: Subconsultas e Consultas Aninhadas
#### Vídeo 28: O que são Subconsultas?
- **Conteúdo:**
  - Definição de subconsultas.
  - **Exercícios:** Identificação de subconsultas em exemplos.

#### Vídeo 29: Subconsultas no SELECT
- **Conteúdo:**
  - Uso de subconsultas no `SELECT`.
  - **Exercícios:** Criação de subconsultas em consultas `SELECT`.

#### Vídeo 30: Subconsultas no WHERE
- **Conteúdo:**
  - Uso de subconsultas no `WHERE`.
  - **Exercícios:** Criação de subconsultas em condições `WHERE`.

#### Vídeo 31: Subconsultas no FROM
- **Conteúdo:**
  - Uso de subconsultas no `FROM`.
  - **Exercícios:** Criação de subconsultas em cláusulas `FROM`.

### Módulo 8: Atualizando e Deletando Dados
#### Vídeo 32: Atualizando Dados
- **Conteúdo:**
  - Comando `UPDATE`.
  - **Exercícios:** Atualização de registros em tabelas.

#### Vídeo 33: Atualizando Registros Específicos
- **Conteúdo:**
  - Filtros no comando `UPDATE`.
  - **Exercícios:** Atualização de registros específicos.

#### Vídeo 34: Deletando Dados
- **Conteúdo:**
  - Comando `DELETE`.
  - **Exercícios:** Remoção de registros de tabelas.

#### Vídeo 35: Removendo Registros Específicos
- **Conteúdo:**
  - Filtros no comando `DELETE`.
  - **Exercícios:** Deleção de registros específicos.

#### Vídeo 36: Integridade Referencial
- **Conteúdo:**
  - Conceito de integridade referencial.
  - **Exercícios:** Manutenção da integridade referencial em operações de atualização e deleção.

### Módulo 9: Visões (Views)
#### Vídeo 37: Introdução às Visões
- **Conteúdo:**
  - Conceito de visões.
  - **Exercícios:** Identificação de situações para uso de visões.

#### Vídeo 38: Criando Visões
- **Conteúdo:**
  - Comando `CREATE VIEW`.
  - **Exercícios:** Criação de visões para diferentes consultas.

#### Vídeo 39: Utilizando Visões
- **Conteúdo:**
  - Utilização de visões em consultas.
  - **Exercícios:** Uso de visões para simplificar consultas complexas.

### Módulo 10: Índices


#### Vídeo 40: Introdução aos Índices
- **Conteúdo:**
  - Conceito de índices.
  - **Exercícios:** Identificação de benefícios e usos de índices.

#### Vídeo 41: Criando Índices
- **Conteúdo:**
  - Comando `CREATE INDEX`.
  - **Exercícios:** Criação de índices em tabelas.

#### Vídeo 42: Considerações sobre Índices
- **Conteúdo:**
  - Cuidados ao usar índices.
  - **Exercícios:** Análise de impacto de índices na performance.

## Conclusão
Com este plano de 60 vídeos de 10 minutos cada, incluindo exemplos práticos e exercícios, os participantes terão uma base sólida e prática em SQL. O treinamento será interativo e reforçará o aprendizado de forma eficaz, cobrindo os comandos mais frequentes e importantes para manipulação e consulta de dados.
