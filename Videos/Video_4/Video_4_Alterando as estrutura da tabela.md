# Vídeo 4: Comando ALTER TABLE

## Introdução ao Comando ALTER TABLE

O comando `ALTER TABLE` é uma ferramenta poderosa no SQL que permite modificar a estrutura de uma tabela existente. Este comando é muito útil quando precisamos fazer alterações em uma tabela sem perder os dados já armazenados. Com o `ALTER TABLE`, podemos:

1. **Adicionar colunas**: Quando precisamos armazenar informações adicionais.
2. **Modificar colunas existentes**: Para alterar o tipo de dados ou outras propriedades de uma coluna.
3. **Excluir colunas**: Remover colunas que não são mais necessárias.
4. **Renomear colunas ou a tabela**: Para tornar os nomes mais descritivos ou ajustar a nomenclatura de acordo com novas convenções.

Vamos explorar cada uma dessas operações com exemplos práticos e, em seguida, faremos alguns exercícios para consolidar o aprendizado.

## 1. Adicionar Colunas

Adicionar uma coluna em uma tabela existente é útil quando você precisa armazenar informações adicionais. 

**Exemplo:**

```sql
ALTER TABLE Produtos
ADD COLUMNS (Descricao STRING);
```

Neste exemplo, estamos adicionando uma nova coluna chamada `Descricao` do tipo `STRING` à tabela `Produtos`.

## 2. Modificar Colunas Existentes

Modificar uma coluna pode incluir alterar o tipo de dado ou renomear a coluna. 

**Exemplo de alteração do tipo de dado:**

```sql
ALTER TABLE Produtos
ALTER COLUMN Preco SET DATA TYPE DOUBLE;
```

Neste exemplo, estamos alterando o tipo de dado da coluna `Preco` para `DOUBLE`.

## 3. Excluir Colunas

Excluir colunas é útil para remover dados que não são mais necessários. 

**Exemplo:**

```sql
ALTER TABLE Produtos
DROP COLUMN Quantidade;
```

Neste exemplo, estamos removendo a coluna `Quantidade` da tabela `Produtos`.

## 4. Renomear Colunas ou a Tabela

Renomear colunas ou a tabela ajuda a manter uma nomenclatura consistente e descritiva. 

**Exemplo de renomear uma coluna:**

```sql
ALTER TABLE Produtos
RENAME COLUMN Nome TO NomeProduto;
```

Neste exemplo, estamos renomeando a coluna `Nome` para `NomeProduto`.

**Exemplo de renomear a tabela:**

```sql
ALTER TABLE Produtos
RENAME TO NovosProdutos;
```

Neste exemplo, estamos renomeando a tabela `Produtos` para `NovosProdutos`.

## Exercícios Práticos

Vamos praticar os conceitos aprendidos com alguns exercícios:

1. **Adicionar uma coluna**:
   - Adicione uma coluna chamada `DataDeValidade` do tipo `DATE` na tabela `Produtos`.

   ```sql
   ALTER TABLE Produtos
   ADD COLUMNS (DataDeValidade DATE);
   ```

2. **Modificar uma coluna existente**:
   - Altere o tipo de dado da coluna `Preco` de `FLOAT` para `DOUBLE`.

   ```sql
   ALTER TABLE Produtos
   ALTER COLUMN Preco SET DATA TYPE DOUBLE;
   ```

3. **Excluir uma coluna**:
   - Remova a coluna `Categoria` da tabela `Produtos`.

   ```sql
   ALTER TABLE Produtos
   DROP COLUMN Categoria;
   ```

4. **Renomear uma coluna**:
   - Renomeie a coluna `Nome` para `NomeProduto`.

   ```sql
   ALTER TABLE Produtos
   RENAME COLUMN Nome TO NomeProduto;
   ```

5. **Renomear a tabela**:
   - Renomeie a tabela `Produtos` para `InventarioProdutos`.

   ```sql
   ALTER TABLE Produtos
   RENAME TO InventarioProdutos;
   ```

## Conclusão

O comando `ALTER TABLE` é uma ferramenta essencial para a modificação da estrutura das tabelas em SQL. Com ele, podemos adicionar, modificar, excluir e renomear colunas e tabelas de forma eficiente e sem perder os dados existentes. Pratique os exercícios fornecidos para consolidar seu entendimento e aumentar sua proficiência no uso do comando `ALTER TABLE`.

Se você tiver dúvidas ou precisar de mais exemplos, deixe um comentário no vídeo!
