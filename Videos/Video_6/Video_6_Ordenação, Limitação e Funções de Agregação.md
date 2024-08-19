# Vídeo 6: Ordenação, Limitação e Funções de Agregação

Link do Notebook no Databricks: https://community.cloud.databricks.com/?o=8534892839601329#notebook/2249540384276140

## Introdução

Neste vídeo, vamos explorar comandos e funções essenciais para ordenar, limitar e agregar dados em SQL. Usaremos a tabela `clientes` como referência para os exemplos e exercícios.

# Conteúdo

## 1. Comandos `ORDER BY` e `LIMIT`

O comando `ORDER BY` é utilizado para ordenar os resultados de uma consulta em ordem ascendente ou descendente. O comando `LIMIT` é usado para restringir o número de registros retornados pela consulta.

**Exemplo de `ORDER BY` e `LIMIT`:**

```sql
SELECT * FROM clientes
ORDER BY idade DESC
LIMIT 5;
```

Neste exemplo, ordenamos os resultados pela coluna `idade` em ordem decrescente e limitamos a saída aos 5 primeiros registros.

## 2. Funções de Agregação

As funções de agregação são usadas para realizar cálculos em um conjunto de valores e retornar um único valor.

- **COUNT**: Retorna o número de registros.
- **SUM**: Retorna a soma dos valores.
- **AVG**: Retorna a média dos valores.
- **MIN**: Retorna o valor mínimo.
- **MAX**: Retorna o valor máximo.

**Exemplo de Funções de Agregação:**

```sql
SELECT COUNT(*), AVG(idade), MIN(idade), MAX(idade)
FROM clientes;
```

Neste exemplo, contamos o número de registros e calculamos a média, o valor mínimo e o valor máximo da coluna `idade`.

## 3. Comando `GROUP BY`

O comando `GROUP BY` é usado para agrupar registros que têm valores idênticos em colunas específicas. Pode ser combinado com funções de agregação para produzir resultados resumidos.

**Exemplo de `GROUP BY`:**

```sql
SELECT cidade, COUNT(*), AVG(idade)
FROM clientes
GROUP BY cidade;
```

Neste exemplo, agrupamos os registros pela coluna `cidade` e contamos o número de registros e a média das idades para cada cidade.

# Exercícios

## Exercícios de Ordenação e Limitação

1. **Ordenar os clientes por nome em ordem ascendente e limitar o resultado aos 10 primeiros registros:**

   ```sql
   SELECT * FROM clientes
   ORDER BY Nome ASC
   LIMIT 10;
   ```

2. **Ordenar os clientes pela idade em ordem crescente e limitar o resultado aos 5 primeiros registros:**

   ```sql
   SELECT * FROM clientes
   ORDER BY idade ASC
   LIMIT 5;
   ```

## Exercícios de Funções de Agregação, Agrupamento e Filtragem

1. **Contar o número de clientes por cidade:**

   ```sql
   SELECT cidade, COUNT(*)
   FROM clientes
   GROUP BY cidade;
   ```

2. **Calcular a soma das idades dos clientes por cidade:**

   ```sql
   SELECT cidade, SUM(idade)
   FROM clientes
   GROUP BY cidade;
   ```

3. **Calcular a média das idades dos clientes por cidade e ordenar o resultado pela média em ordem decrescente:**

   ```sql
   SELECT cidade, AVG(idade)
   FROM clientes
   GROUP BY cidade
   ORDER BY AVG(idade) DESC;
   ```

4. **Encontrar a idade mínima e máxima dos clientes por cidade:**

   ```sql
   SELECT cidade, MIN(idade), MAX(idade)
   FROM clientes
   GROUP BY cidade;
   ```

# Conclusão

Neste vídeo, aprendemos a usar os comandos `ORDER BY` e `LIMIT` para ordenar e limitar os resultados das consultas, as funções de agregação `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` para realizar cálculos em conjuntos de dados, e o comando `GROUP BY` para agrupar e sumarizar os dados. Pratique os exercícios fornecidos para consolidar seu entendimento e aumentar sua proficiência no uso desses comandos e funções. 

Se você tiver dúvidas ou precisar de mais exemplos, deixe um comentário no vídeo!
