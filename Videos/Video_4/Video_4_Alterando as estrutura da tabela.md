# Vídeo 4: Modificando a estrutura das tabelas

## Introdução ao Comando ALTER TABLE

O comando `ALTER TABLE` é uma ferramenta poderosa no SQL que permite modificar a estrutura de uma tabela existente. Este comando é muito útil quando precisamos fazer alterações em uma tabela sem perder os dados já armazenados. Com o `ALTER TABLE`, podemos:

1. **Adicionar colunas**: Quando precisamos armazenar informações adicionais.
2. **Modificar colunas existentes**: Para alterar o tipo de dados ou outras propriedades de uma coluna.
3. **Excluir colunas**: Remover colunas que não são mais necessárias.
4. **Renomear colunas ou a tabela**: Para tornar os nomes mais descritivos ou ajustar a nomenclatura de acordo com novas convenções.

Vamos explorar cada uma dessas operações com exemplos práticos utilizando a tabela `clientes_video3` e, em seguida, faremos alguns exercícios para consolidar o aprendizado.

## 1. Adicionar Colunas

Adicionar uma coluna em uma tabela existente é útil quando você precisa armazenar informações adicionais. 

**Exemplo:**

```sql
ALTER TABLE clientes_video3
ADD COLUMNS (email STRING);
```

Neste exemplo, estamos adicionando uma nova coluna chamada `email` do tipo `STRING` à tabela `clientes_video3`.

## 2. Modificar Colunas Existentes

Modificar uma coluna pode incluir alterar o tipo de dado ou renomear a coluna. 

**Atualizar a Versão do Protocolo da Tabela**

```sql
ALTER TABLE clientes_video3 
SET TBLPROPERTIES (
  'delta.minReaderVersion' = '2',
  'delta.minWriterVersion' = '5'
);

**Ativar o Column Mapping**

```sql
ALTER TABLE clientes_video3 
SET TBLPROPERTIES ('delta.columnMapping.mode' = 'name');
```

**Adicionar uma Nova Coluna**

```sql
ALTER TABLE clientes_video3
ADD COLUMNS (nova_idade SMALLINT);
```


**Copiar os Dados da Coluna Antiga para a Nova Coluna**

```sq
UPDATE clientes_video3
SET nova_idade = idade;
```

**Remover a Coluna Antiga**
Remova a coluna antiga:

```sql
ALTER TABLE clientes_video3
DROP COLUMN idade;
```

**Renomear a Nova Coluna para o Nome da Coluna Original**

```sql
ALTER TABLE clientes_video3
RENAME COLUMN nova_idade TO idade;
```


## 3. Excluir Colunas

Excluir colunas é útil para remover dados que não são mais necessários. 

**Exemplo:**

```sql
ALTER TABLE clientes_video3
DROP COLUMN cidade;
```

Neste exemplo, estamos removendo a coluna `cidade` da tabela `clientes_video3`.

## 4. Renomear Colunas ou a Tabela

Renomear colunas ou a tabela ajuda a manter uma nomenclatura consistente e descritiva. 

**Exemplo de renomear uma coluna:**

```sql
ALTER TABLE clientes_video3
RENAME COLUMN Nome TO nome_completo;
```

Neste exemplo, estamos renomeando a coluna `Nome` para `nome_completo`.

**Exemplo de renomear a tabela:**

```sql
ALTER TABLE clientes_video3
RENAME TO clientes_atualizados;
```

Neste exemplo, estamos renomeando a tabela `clientes_video3` para `clientes_atualizados`.

## Exercícios Práticos

Vamos praticar os conceitos aprendidos com alguns exercícios:

1. **Adicionar uma coluna**:
   - Adicione uma coluna chamada `telefone` do tipo `STRING` na tabela `clientes_video3`.

   ```sql
   ALTER TABLE clientes_video3
   ADD COLUMNS (telefone STRING);
   ```

2. **Modificar uma coluna existente**:
   - Altere o tipo de dado da coluna `idade` de `INT` para `SMALLINT`.

   ```sql
   ALTER TABLE clientes_video3
   ALTER COLUMN idade SET DATA TYPE SMALLINT;
   ```

3. **Excluir uma coluna**:
   - Remova a coluna `cidade` da tabela `clientes_video3`.

   ```sql
   ALTER TABLE clientes_video3
   DROP COLUMN cidade;
   ```

4. **Renomear uma coluna**:
   - Renomeie a coluna `Nome` para `nome_completo`.

   ```sql
   ALTER TABLE clientes_video3
   RENAME COLUMN Nome TO nome_completo;
   ```

5. **Renomear a tabela**:
   - Renomeie a tabela `clientes_video3` para `clientes_atualizados`.

   ```sql
   ALTER TABLE clientes_video3
   RENAME TO clientes_atualizados;
   ```

## Conclusão

O comando `ALTER TABLE` é uma ferramenta essencial para a modificação da estrutura das tabelas em SQL. Com ele, podemos adicionar, modificar, excluir e renomear colunas e tabelas de forma eficiente e sem perder os dados existentes. Pratique os exercícios fornecidos para consolidar seu entendimento e aumentar sua proficiência no uso do comando `ALTER TABLE`.

Se você tiver dúvidas ou precisar de mais exemplos, envie-nos seu feedback!
