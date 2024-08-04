# Vídeo 4: Inserindo Dados Simples e Múltiplas Linhas

## **1. Introdução ao Comando INSERT INTO**
O comando `INSERT INTO` é utilizado para adicionar novos registros em uma tabela existente. Existem duas formas principais de usar este comando:

- Inserção de uma única linha.
- Inserção de múltiplas linhas.

## **2. Inserindo uma Única Linha**
Para inserir uma única linha em uma tabela, utilizamos a seguinte sintaxe:

```sql
INSERT INTO nome_da_tabela (coluna1, coluna2, coluna3, ...)
VALUES (valor1, valor2, valor3, ...);
```

**Exemplo:**
Suponha que temos uma tabela chamada `clientes` com as colunas `id`, `nome`, `idade` e `cidade`. Vamos inserir um novo cliente nesta tabela.

```sql
INSERT INTO clientes (id, nome, idade, cidade)
VALUES (1, 'João Silva', 28, 'São Paulo');
```

## **3. Inserindo Múltiplas Linhas**
Para inserir múltiplas linhas de uma vez, utilizamos uma sintaxe similar, mas com várias cláusulas `VALUES`.

```sql
INSERT INTO nome_da_tabela (coluna1, coluna2, coluna3, ...)
VALUES 
(valor1_1, valor1_2, valor1_3, ...),
(valor2_1, valor2_2, valor2_3, ...),
...;
```

**Exemplo:**
Vamos inserir três novos clientes na tabela `clientes` de uma só vez.

```sql
INSERT INTO clientes (id, nome, idade, cidade)
VALUES 
(2, 'Maria Oliveira', 34, 'Rio de Janeiro'),
(3, 'Pedro Santos', 22, 'Belo Horizonte'),
(4, 'Ana Costa', 29, 'Curitiba');
```

## **4. Exercícios Práticos**

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

## **5. Conclusão**
O comando `INSERT INTO` é uma ferramenta essencial para adicionar novos dados às suas tabelas SQL. Saber como inserir tanto dados simples quanto múltiplas linhas de uma vez pode melhorar significativamente sua eficiência no gerenciamento de dados.

