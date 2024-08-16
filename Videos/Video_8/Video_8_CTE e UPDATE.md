# Vídeo 8: CTE, UPDATE, DELETE

## Introdução

No SQL, é essencial não só saber como selecionar e manipular dados, mas também como atualizar e excluir registros. Além disso, as Common Table Expressions (CTEs) oferecem uma maneira conveniente e legível de organizar consultas complexas. Neste vídeo, vamos explorar:

1. **CTE (Common Table Expressions)**: CTE (Common Table Expressions): Subconsultas no SELECT, WHERE e FROM
2. **Comando UPDATE**
3. **Comando DELETE**

# 1. Common Table Expressions (CTEs)

CTEs são uma forma de definir uma tabela temporária que pode ser referenciada dentro de uma `SELECT`, `INSERT`, `UPDATE` ou `DELETE` statement. São úteis para simplificar consultas complexas e torná-las mais legíveis.

**Sintaxe Básica de uma CTE:**

```sql
WITH cte_name AS (
    SELECT column1, column2
    FROM table_name
    WHERE condition
)
SELECT * FROM cte_name;
```

**Exemplo de CTE com a Tabela `clientes`:**

Vamos criar uma CTE para selecionar todos os clientes que moram em "São Paulo":

```sql
WITH ClientesSP AS (
    SELECT * FROM clientes
    WHERE cidade = 'São Paulo'
)
SELECT * FROM ClientesSP;
```

**Exemplo mais compexo com CTE**
Neste exemplo, vamos:

- Criar uma CTE para selecionar clientes de São Paulo.
- Criar outra CTE para calcular o valor total dos pedidos por cliente.
- Combinar essas CTEs para produzir um resultado final que mostra os clientes de São Paulo e o valor total dos pedidos deles.

```sql
WITH ClientesSP AS (
    SELECT ID, Nome, idade, cidade, email
    FROM clientes
    WHERE cidade = 'São Paulo'
),
TotalPedidosPorCliente AS (
    SELECT ClienteID, SUM(Valor) AS TotalValor
    FROM pedidos
    GROUP BY ClienteID
),
ClientesSPComPedidos AS (
    SELECT ClientesSP.Nome, ClientesSP.idade, ClientesSP.email, TotalPedidosPorCliente.TotalValor
    FROM ClientesSP
    LEFT JOIN TotalPedidosPorCliente ON ClientesSP.ID = TotalPedidosPorCliente.ClienteID
)
SELECT * FROM ClientesSPComPedidos;
```


# 2. Comando UPDATE

O comando `UPDATE` é usado para modificar registros existentes em uma tabela.

**Sintaxe Básica de UPDATE:**

```sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
```

**Exemplo de UPDATE com a Tabela `clientes`:**

Vamos atualizar o e-mail de um cliente específico:

```sql
UPDATE clientes
SET email = 'novo.email@example.com'
WHERE ID = 1;
```

# 3. Comando DELETE

O comando `DELETE` é usado para remover registros de uma tabela.

**Sintaxe Básica de DELETE:**

```sql
DELETE FROM table_name
WHERE condition;
```

**Exemplo de DELETE com a Tabela `clientes`:**

Vamos excluir um cliente específico da tabela:

```sql
DELETE FROM clientes
WHERE ID = 2;
```

# Exercícios

## Exercício 1: Utilização de CTEs

- Crie uma CTE para selecionar todos os clientes com idade maior que 30 anos.

```sql
WITH ClientesMais30 AS (
    SELECT * FROM clientes
    WHERE idade > 30
)
SELECT * FROM ClientesMais30;
```

## Exercício 2: Atualização de Registros

- Atualize a cidade para "Rio de Janeiro" de todos os clientes que atualmente moram em "São Paulo".

```sql
UPDATE clientes
SET cidade = 'Rio de Janeiro'
WHERE cidade = 'São Paulo';
```

## Exercício 3: Exclusão de Registros

- Exclua todos os clientes que têm idade menor que 25 anos.

```sql
DELETE FROM clientes
WHERE idade < 25;
```

## Exercício 4: CTE's complexas

- Crie uma consulta que:

    - Seleciona todos os clientes que têm mais de 30 anos.
    - Calcula a média de valor dos pedidos para cada cliente.
    - Combina essas informações para exibir os clientes que têm mais de 30 anos e a média de valor de seus pedidos.

# Conclusão

Neste vídeo, aprendemos sobre o uso de Common Table Expressions (CTEs) para simplificar consultas complexas, e como usar os comandos `UPDATE` e `DELETE` para modificar e excluir registros em uma tabela SQL. Pratique os exercícios fornecidos para consolidar seu entendimento e aumentar sua proficiência no uso desses comandos essenciais. Se você tiver dúvidas ou precisar de mais exemplos, deixe um comentário no vídeo!
