# Video 4: Modificando e Excluindo Tabelas

## 1. Comando ALTER TABLE
O comando `ALTER TABLE` é utilizado para modificar a estrutura de uma tabela existente. Podemos usá-lo para:

- Adicionar colunas
- Modificar colunas existentes
- Excluir colunas
- Renomear colunas ou a tabela

**Sintaxe Básica:**
```sql
ALTER TABLE nome_da_tabela
ADD nome_da_coluna tipo_de_dado;

ALTER TABLE nome_da_tabela
MODIFY nome_da_coluna novo_tipo_de_dado;

ALTER TABLE nome_da_tabela
DROP COLUMN nome_da_coluna;

ALTER TABLE nome_da_tabela
RENAME TO novo_nome_da_tabela;
```

**Exemplo Prático:**
Vamos modificar uma tabela chamada `clientes`.

- Adicionar uma nova coluna chamada `email`:
  ```sql
  ALTER TABLE clientes
  ADD email VARCHAR(255);
  ```

- Modificar o tipo de dado da coluna `idade` para `SMALLINT`:
  ```sql
  ALTER TABLE clientes
  MODIFY idade SMALLINT;
  ```

- Excluir a coluna `cidade`:
  ```sql
  ALTER TABLE clientes
  DROP COLUMN cidade;
  ```

- Renomear a tabela `clientes` para `clientes_vip`:
  ```sql
  ALTER TABLE clientes
  RENAME TO clientes_vip;
  ```

## 2. Comando DROP TABLE
O comando `DROP TABLE` é utilizado para excluir uma tabela do banco de dados. Esse comando remove a tabela e todos os dados contidos nela permanentemente.

**Sintaxe Básica:**
```sql
DROP TABLE nome_da_tabela;
```

**Exemplo Prático:**
Vamos excluir a tabela `clientes_vip` que criamos anteriormente.
```sql
DROP TABLE clientes_vip;
```

## 3. Exercícios Práticos

**Exercício 1: Modificação de Tabelas**
1. Crie uma tabela chamada `produtos` com as colunas `id`, `nome`, `preco` e `quantidade`.
2. Adicione uma coluna `categoria` do tipo `VARCHAR(50)`.
3. Modifique o tipo de dado da coluna `preco` para `DECIMAL(10, 2)`.
4. Exclua a coluna `quantidade`.
5. Renomeie a tabela `produtos` para `estoque`.

```sql
CREATE TABLE produtos (
    id INT,
    nome VARCHAR(100),
    preco FLOAT,
    quantidade INT
);

ALTER TABLE produtos
ADD categoria VARCHAR(50);

ALTER TABLE produtos
MODIFY preco DECIMAL(10, 2);

ALTER TABLE produtos
DROP COLUMN quantidade;

ALTER TABLE produtos
RENAME TO estoque;
```

**Exercício 2: Exclusão de Tabelas**
1. Exclua a tabela `estoque` que você modificou no exercício anterior.

```sql
DROP TABLE estoque;
```

## 4. Conclusão
Os comandos `ALTER TABLE` e `DROP TABLE` são fundamentais para a manutenção e gestão de tabelas em um banco de dados. Eles permitem modificar a estrutura das tabelas conforme necessário e excluir tabelas que não são mais úteis. Praticar essas operações ajuda a consolidar o conhecimento e a confiança no uso dessas ferramentas poderosas.
