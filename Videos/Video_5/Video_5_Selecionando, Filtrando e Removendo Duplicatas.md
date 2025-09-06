# Vídeo 5: Selecionando, Filtrando e Removendo Duplicatas

Link do Notebook no Databricks: https://community.cloud.databricks.com/?o=8534892839601329#notebook/1942009169231968

## Introdução

No SQL, a capacidade de selecionar, filtrar e remover duplicatas dos dados é essencial para a análise eficiente de grandes conjuntos de dados. Os comandos `SELECT`, `WHERE` e `DISTINCT` são fundamentais para essas operações. 

- O comando `SELECT` é usado para selecionar dados de uma tabela.
- O comando `WHERE` é utilizado para filtrar registros com base em uma condição específica.
- O comando `DISTINCT` permite remover registros duplicados dos resultados da consulta.

Neste vídeo, vamos explorar como usar esses comandos com exemplos práticos e exercícios para reforçar o aprendizado.

Para tornar as coisas mais interessantes, vamos adicionar mais 20 registros à tabela `clientes`. Aqui está um exemplo de como adicionar esses registros:

### Adicionando Registros à Tabela `clientes`

Primeiro, vamos garantir que a tabela não existe para não termos um erro no Databricks:

```sql
DROP TABLE IF EXISTS warehouse.clientes;
```

Na sequência, criamos a tabela clientes:

```sql
CREATE OR REPLACE TABLE clientes (
    ID INT,
    Nome STRING,
    idade INT,
    cidade STRING,
    email STRING
);
```

Agora, vamos adicionar 20 registros com diferentes valores para cada coluna.

### Inserindo Registros

```sql
INSERT INTO clientes (ID, Nome, idade, cidade, email) VALUES
(1, 'Ana Silva', 28, 'São Paulo', 'ana.silva@example.com'),
(2, 'Bruno Santos', 35, 'Rio de Janeiro', 'bruno.santos@example.com'),
(3, 'Carla Dias', 22, 'Belo Horizonte', 'carla.dias@example.com'),
(4, 'Daniel Alves', 45, 'São Paulo', 'daniel.alves@example.com'),
(5, 'Eduardo Lima', 30, 'Curitiba', 'eduardo.lima@example.com'),
(6, 'Fernanda Souza', 26, 'Porto Alegre', 'fernanda.souza@example.com'),
(7, 'Gustavo Pereira', 33, 'São Paulo', 'gustavo.pereira@example.com'),
(8, 'Helena Costa', 29, 'Recife', 'helena.costa@example.com'),
(9, 'Igor Oliveira', 31, 'Salvador', 'igor.oliveira@example.com'),
(10, 'Juliana Rocha', 27, 'Fortaleza', 'juliana.rocha@example.com'),
(11, 'Lucas Mendes', 40, 'São Paulo', 'lucas.mendes@example.com'),
(12, 'Mariana Ribeiro', 23, 'Rio de Janeiro', 'mariana.ribeiro@example.com'),
(13, 'Nicolas Ferreira', 36, 'Belo Horizonte', 'nicolas.ferreira@example.com'),
(14, 'Olivia Araujo', 34, 'Curitiba', 'olivia.araujo@example.com'),
(15, 'Pedro Martins', 28, 'Porto Alegre', 'pedro.martins@example.com'),
(16, 'Quintino Guedes', 37, 'São Paulo', 'quintino.guedes@example.com'),
(17, 'Rafaela Duarte', 24, 'Recife', 'rafaela.duarte@example.com'),
(18, 'Sofia Almeida', 32, 'Salvador', 'sofia.almeida@example.com'),
(19, 'Thiago Barbosa', 41, 'Fortaleza', 'thiago.barbosa@example.com'),
(20, 'Ursula Teixeira', 30, 'São Paulo', 'ursula.teixeira@example.com');
```

**Seleção de todos os registros:**

```sql
SELECT * FROM clientes;
```

Neste exemplo, selecionamos todas as colunas e registros da tabela `clientes`.

#### Exemplo 2: Filtrando Dados

O comando `WHERE` é usado para filtrar registros com base em condições específicas.

**Seleção de clientes com idade maior que 30 anos:**

```sql
SELECT * FROM clientes
WHERE idade > 30;
```

Neste exemplo, selecionamos apenas os registros onde a idade dos clientes é maior que 30.

#### Exemplo 3: Removendo Duplicatas

O comando `DISTINCT` é usado para remover duplicatas dos resultados.

**Seleção de cidades únicas:**

```sql
SELECT DISTINCT cidade FROM clientes;
```

Neste exemplo, selecionamos todas as cidades únicas da tabela `clientes`, removendo duplicatas.

### Exercícios

Vamos praticar os conceitos aprendidos com alguns exercícios:

1. **Seleção de Dados**:
   - Selecione todas as colunas da tabela `clientes`.

   ```sql
   SELECT * FROM clientes;
   ```

2. **Filtragem de Dados**:
   - Selecione os clientes que moram na cidade "São Paulo".

   ```sql
   SELECT * FROM clientes
   WHERE cidade = 'São Paulo';
   ```

3. **Remoção de Duplicatas**:
   - Selecione todos os nomes de clientes únicos da tabela `clientes`.

   ```sql
   SELECT DISTINCT Nome FROM clientes;
   ```

4. **Combinação de Seleção, Filtragem e Remoção de Duplicatas**:
   - Selecione as cidades únicas onde a idade dos clientes é maior que 25 anos.

   ```sql
   SELECT DISTINCT cidade FROM clientes
   WHERE idade > 25;
   ```

### Conclusão

Neste vídeo, aprendemos a usar os comandos `SELECT`, `WHERE` e `DISTINCT` para selecionar, filtrar e remover duplicatas dos dados em uma tabela SQL. Pratique os exercícios fornecidos para consolidar seu entendimento e aumentar sua proficiência no uso desses comandos. Se você tiver dúvidas ou precisar de mais exemplos, deixe um comentário no vídeo!
Este conteúdo fornece uma base sólida para entender como selecionar, filtrar e remover duplicatas no SQL, utilizando a tabela `clientes` com os 20 registros adicionados.
