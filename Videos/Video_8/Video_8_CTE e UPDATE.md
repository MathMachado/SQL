# Vídeo 8: CTE, UPDATE, DELETE

## Introdução

No SQL, é essencial não só saber como selecionar e manipular dados, mas também como atualizar e excluir registros. Além disso, as Common Table Expressions (CTEs) oferecem uma maneira conveniente e legível de organizar consultas complexas. Neste vídeo, vamos explorar:

1. **CTE (Common Table Expressions)**
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

**Exemplo de CTE com a Tabela `clientes_video3`:**

Vamos criar uma CTE para selecionar todos os clientes que moram em "São Paulo":

```sql
WITH ClientesSP AS (
    SELECT * FROM clientes_video3
    WHERE cidade = 'São Paulo'
)
SELECT * FROM ClientesSP;
```

# 2. Comando UPDATE

O comando `UPDATE` é usado para modificar registros existentes em uma tabela.

**Sintaxe Básica de UPDATE:**

```sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
```

**Exemplo de UPDATE com a Tabela `clientes_video3`:**

Vamos atualizar o e-mail de um cliente específico:

```sql
UPDATE clientes_video3
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

**Exemplo de DELETE com a Tabela `clientes_video3`:**

Vamos excluir um cliente específico da tabela:

```sql
DELETE FROM clientes_video3
WHERE ID = 2;
```

# Exercícios

## Exercício 1: Utilização de CTEs

- Crie uma CTE para selecionar todos os clientes com idade maior que 30 anos.

```sql
WITH ClientesMais30 AS (
    SELECT * FROM clientes_video3
    WHERE idade > 30
)
SELECT * FROM ClientesMais30;
```

## Exercício 2: Atualização de Registros

- Atualize a cidade para "Rio de Janeiro" de todos os clientes que atualmente moram em "São Paulo".

```sql
UPDATE clientes_video3
SET cidade = 'Rio de Janeiro'
WHERE cidade = 'São Paulo';
```

## Exercício 3: Exclusão de Registros

- Exclua todos os clientes que têm idade menor que 25 anos.

```sql
DELETE FROM clientes_video3
WHERE idade < 25;
```

# Conclusão

Neste vídeo, aprendemos sobre o uso de Common Table Expressions (CTEs) para simplificar consultas complexas, e como usar os comandos `UPDATE` e `DELETE` para modificar e excluir registros em uma tabela SQL. Pratique os exercícios fornecidos para consolidar seu entendimento e aumentar sua proficiência no uso desses comandos essenciais. Se você tiver dúvidas ou precisar de mais exemplos, deixe um comentário no vídeo!
