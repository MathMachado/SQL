# Vídeo 7: Introdução aos Joins e Inner Join

Link do Notebook no Databricks: https://community.cloud.databricks.com/?o=8534892839601329#notebook/1977099235362647

## Introdução

Joins são uma parte fundamental do SQL, permitindo combinar dados de duas ou mais tabelas com base em uma condição relacionada. O `INNER JOIN` é um dos tipos de joins mais utilizados, retornando apenas os registros que possuem correspondências em ambas as tabelas.

# Conceito de Joins

Joins permitem combinar registros de duas ou mais tabelas em um conjunto de resultados. Existem vários tipos de joins, mas o `INNER JOIN` é o mais comum. 

- **INNER JOIN**: Retorna os registros que têm valores correspondentes em ambas as tabelas.

# Comando INNER JOIN

O `INNER JOIN` combina registros de duas tabelas com base em uma condição de correspondência, geralmente uma chave primária em uma tabela e uma chave estrangeira na outra.

# Exemplo de INNER JOIN

Vamos usar a tabela `clientes` e criar uma nova tabela `pedidos` para demonstrar o uso do `INNER JOIN`.

## Criação da Tabela `pedidos`

```sql
CREATE OR REPLACE TABLE pedidos (
    PedidoID INT,
    ClienteID INT,
    DataPedido DATE,
    Valor FLOAT
);
```

## Inserção de Dados na Tabela `pedidos`

```sql
INSERT INTO pedidos (PedidoID, ClienteID, DataPedido, Valor) VALUES
(1, 1, '2023-01-10', 150.75),
(2, 2, '2023-02-15', 200.00),
(3, 1, '2023-03-20', 99.99),
(4, 3, '2023-04-05', 250.00),
(5, 4, '2023-05-10', 300.50);
```

## Realizando um INNER JOIN

**Exemplo de INNER JOIN**:

```sql
SELECT clientes.Nome, pedidos.PedidoID, pedidos.DataPedido, pedidos.Valor
FROM clientes
INNER JOIN pedidos ON clientes.ID = pedidos.ClienteID;
```

Neste exemplo, estamos combinando as tabelas `clientes` e `pedidos` onde `clientes.ID` corresponde a `pedidos.ClienteID`. O resultado inclui apenas os registros que têm correspondência em ambas as tabelas.

# Exercícios

## Exercício 1: Realização de um INNER JOIN Simples

- Combine as tabelas `clientes` e `pedidos` para exibir o nome do cliente, ID do pedido e o valor do pedido.

```sql
SELECT clientes.Nome, pedidos.PedidoID, pedidos.Valor
FROM clientes
INNER JOIN pedidos ON clientes.ID = pedidos.ClienteID;
```

## Exercício 2: Filtragem Após o INNER JOIN

- Combine as tabelas `clientes` e `pedidos` para exibir os pedidos feitos por clientes da cidade "São Paulo".

```sql
SELECT clientes.Nome, pedidos.PedidoID, pedidos.Valor
FROM clientes
INNER JOIN pedidos ON clientes.ID = pedidos.ClienteID
WHERE clientes.cidade = 'São Paulo';
```

## Exercício 3: Adicionando Mais Colunas ao INNER JOIN

- Combine as tabelas `clientes` e `pedidos` para exibir o nome do cliente, data do pedido e a idade do cliente.

```sql
SELECT clientes.Nome, pedidos.DataPedido, clientes.idade
FROM clientes
INNER JOIN pedidos ON clientes.ID = pedidos.ClienteID;
```

# Conclusão

Neste vídeo, aprendemos sobre o conceito de joins e exploramos o comando `INNER JOIN`, que é utilizado para combinar registros de duas tabelas com base em uma condição de correspondência. Pratique os exercícios fornecidos para consolidar seu entendimento e aumentar sua proficiência no uso do `INNER JOIN`. Se você tiver dúvidas ou precisar de mais exemplos, deixe um comentário no vídeo!
