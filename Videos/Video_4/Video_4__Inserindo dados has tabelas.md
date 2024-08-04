# Vídeo 4: Inserindo Dados Simples e Múltiplas Linhas

## 1. Introdução ao Comando INSERT INTO
O comando `INSERT INTO` é bastante direto e é usado para adicionar novos registros a uma tabela existente. Temos duas maneiras principais de usar esse comando:

- Para inserir uma única linha.
- Para inserir múltiplas linhas.

## 2. Inserindo uma Única Linha
Para adicionar uma única linha em uma tabela, usamos a seguinte sintaxe:

```sql
INSERT INTO nome_da_tabela (coluna1, coluna2, coluna3, ...)
VALUES (valor1, valor2, valor3, ...);
```

**Exemplo Prático:**
Imaginemos que temos uma tabela chamada `clientes` com as colunas `id`, `nome`, `idade` e `cidade`. Vamos adicionar um novo cliente nessa tabela.

```sql
INSERT INTO clientes (id, nome, idade, cidade)
VALUES (1, 'João Silva', 28, 'São Paulo');
```

## 3. Inserindo Múltiplas Linhas
Para adicionar várias linhas de uma só vez, a sintaxe é similar, mas utilizamos múltiplas cláusulas `VALUES`.

```sql
INSERT INTO nome_da_tabela (coluna1, coluna2, coluna3, ...)
VALUES 
(valor1_1, valor1_2, valor1_3, ...),
(valor2_1, valor2_2, valor2_3, ...),
...;
```

**Exemplo Prático:**
Vamos adicionar três novos clientes na tabela `clientes` de uma única vez.

```sql
INSERT INTO clientes (id, nome, idade, cidade)
VALUES 
(2, 'Maria Oliveira', 34, 'Rio de Janeiro'),
(3, 'Pedro Santos', 22, 'Belo Horizonte'),
(4, 'Ana Costa', 29, 'Curitiba');
```

## 4. Exercícios Práticos

**Exercício 1: Inserção Simples**
1. Crie uma tabela chamada `produtos` com as colunas `id`, `nome`, `preco` e `quantidade`.
2. Insira um produto com os seguintes dados: `id=1`, `nome='Notebook'`, `preco=3500.00`, `quantidade=10`.

```sql
CREATE TABLE produtos (
    id INT,
    nome VARCHAR(100),
    preco DECIMAL(10, 2),
    quantidade INT
);

INSERT INTO produtos (id, nome, preco, quantidade)
VALUES (1, 'Notebook', 3500.00, 10);
```

**Exercício 2: Inserção Múltipla**
1. Usando a mesma tabela `produtos`, insira três novos produtos com os seguintes dados:

| id | nome          | preco   | quantidade |
|----|---------------|---------|------------|
| 2  | 'Mouse'       | 50.00   | 100        |
| 3  | 'Teclado'     | 120.00  | 50         |
| 4  | 'Monitor'     | 800.00  | 30         |

```sql
INSERT INTO produtos (id, nome, preco, quantidade)
VALUES 
(2, 'Mouse', 50.00, 100),
(3, 'Teclado', 120.00, 50),
(4, 'Monitor', 800.00, 30);
```

## 5. Conclusão
O comando `INSERT INTO` é fundamental para adicionar novos dados às suas tabelas SQL. Saber como inserir tanto dados simples quanto múltiplas linhas de uma vez pode melhorar muito sua eficiência no gerenciamento de dados.
