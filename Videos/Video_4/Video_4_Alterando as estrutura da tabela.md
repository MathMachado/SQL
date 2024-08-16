# Vídeo 4: Modificando a estrutura das tabelas

## Introdução ao Comando ALTER TABLE

O comando `ALTER TABLE` é uma ferramenta poderosa no SQL que permite modificar a estrutura de uma tabela existente. Este comando é muito útil quando precisamos fazer alterações em uma tabela sem perder os dados já armazenados. Com o `ALTER TABLE`, podemos:

1. **Adicionar colunas**: Quando precisamos armazenar informações adicionais.
2. **Modificar colunas existentes**: Para alterar o tipo de dados ou outras propriedades de uma coluna.
3. **Excluir colunas**: Remover colunas que não são mais necessárias.
4. **Renomear colunas ou a tabela**: Para tornar os nomes mais descritivos ou ajustar a nomenclatura de acordo com novas convenções.

Vamos explorar cada uma dessas operações com exemplos práticos utilizando a tabela `clientes` e, em seguida, faremos alguns exercícios para consolidar o aprendizado.

## 1. Criar a tabela Clientes

```sql
CREATE OR REPLACE TABLE clientes (
    ID INT,
    NOME STRING,
    IDADE INT,
    CIDADE STRING
);
```

O próximo passo será inserir alguns dados na tabela `Clientes`:
```sql
INSERT INTO clientes (ID, NOME, IDADE, CIDADE) VALUES
(1, 'Ana', 30, 'São Paulo'),
(2, 'Bruno', 25, 'Rio de Janeiro'),
(3, 'Carla', 28, 'Belo Horizonte'),
(4, 'Diego', 35, 'Curitiba'),
(5, 'Elena', 40, 'Porto Alegre'),
(6, 'Fabio', 22, 'Salvador'),
(7, 'Gabriela', 27, 'Fortaleza'),
(8, 'Hugo', 33, 'Brasília'),
(9, 'Isabela', 29, 'Recife'),
(10, 'João', 31, 'Manaus'),

-- 40 registros para a cidade de São Paulo
(11, 'Lucas', 25, 'São Paulo'),
(12, 'Mariana', 32, 'São Paulo'),
(13, 'Pedro', 29, 'São Paulo'),
(14, 'Fernanda', 27, 'São Paulo'),
(15, 'Ricardo', 35, 'São Paulo'),
(16, 'Juliana', 26, 'São Paulo'),
(17, 'Gustavo', 31, 'São Paulo'),
(18, 'Natália', 28, 'São Paulo'),
(19, 'Thiago', 33, 'São Paulo'),
(20, 'Amanda', 24, 'São Paulo'),
(21, 'Felipe', 30, 'São Paulo'),
(22, 'Camila', 29, 'São Paulo'),
(23, 'Leandro', 36, 'São Paulo'),
(24, 'Patrícia', 38, 'São Paulo'),
(25, 'André', 34, 'São Paulo'),
(26, 'Larissa', 27, 'São Paulo'),
(27, 'Vinícius', 32, 'São Paulo'),
(28, 'Priscila', 29, 'São Paulo'),
(29, 'Rafael', 33, 'São Paulo'),
(30, 'Beatriz', 26, 'São Paulo'),
(31, 'Carlos', 28, 'São Paulo'),
(32, 'Tatiana', 35, 'São Paulo'),
(33, 'Rodrigo', 30, 'São Paulo'),
(34, 'Vanessa', 27, 'São Paulo'),
(35, 'Bruno', 31, 'São Paulo'),
(36, 'Renata', 33, 'São Paulo'),
(37, 'Marcelo', 34, 'São Paulo'),
(38, 'Gabriel', 29, 'São Paulo'),
(39, 'Alessandra', 28, 'São Paulo'),
(40, 'Vitor', 32, 'São Paulo'),
(41, 'Daniela', 25, 'São Paulo'),
(42, 'Paulo', 31, 'São Paulo'),
(43, 'Adriana', 28, 'São Paulo'),
(44, 'Eduardo', 35, 'São Paulo'),
(45, 'Simone', 29, 'São Paulo'),
(46, 'Fernando', 27, 'São Paulo'),
(47, 'Luana', 30, 'São Paulo'),
(48, 'Júlio', 32, 'São Paulo'),
(49, 'Letícia', 34, 'São Paulo'),
(50, 'Mateus', 26, 'São Paulo'),

-- 10 registros para a cidade de Brasília
(51, 'Carlos', 29, 'Brasília'),
(52, 'Sofia', 27, 'Brasília'),
(53, 'Eduarda', 30, 'Brasília'),
(54, 'Renan', 33, 'Brasília'),
(55, 'Luan', 25, 'Brasília'),
(56, 'Vitória', 29, 'Brasília'),
(57, 'Arthur', 28, 'Brasília'),
(58, 'Bianca', 26, 'Brasília'),
(59, 'Raquel', 31, 'Brasília'),
(60, 'Wesley', 32, 'Brasília'),

-- 20 registros para a cidade do Rio de Janeiro
(61, 'Gabriel', 25, 'Rio de Janeiro'),
(62, 'Marta', 32, 'Rio de Janeiro'),
(63, 'Otávio', 29, 'Rio de Janeiro'),
(64, 'Julia', 27, 'Rio de Janeiro'),
(65, 'Paulo', 33, 'Rio de Janeiro'),
(66, 'Rosa', 24, 'Rio de Janeiro'),
(67, 'Sérgio', 30, 'Rio de Janeiro'),
(68, 'Elaine', 29, 'Rio de Janeiro'),
(69, 'Rafael', 36, 'Rio de Janeiro'),
(70, 'Maria', 28, 'Rio de Janeiro'),
(71, 'Leonardo', 33, 'Rio de Janeiro'),
(72, 'Clara', 26, 'Rio de Janeiro'),
(73, 'Anderson', 28, 'Rio de Janeiro'),
(74, 'Tânia', 35, 'Rio de Janeiro'),
(75, 'Fábio', 31, 'Rio de Janeiro'),
(76, 'Helena', 27, 'Rio de Janeiro'),
(77, 'Renato', 29, 'Rio de Janeiro'),
(78, 'Ana Paula', 28, 'Rio de Janeiro'),
(79, 'Flávio', 30, 'Rio de Janeiro'),
(80, 'Débora', 32, 'Rio de Janeiro'),

-- 5 registros para a cidade de Porto Alegre
(81, 'Carolina', 28, 'Porto Alegre'),
(82, 'Giovana', 27, 'Porto Alegre'),
(83, 'Murilo', 30, 'Porto Alegre'),
(84, 'Luiz', 29, 'Porto Alegre'),
(85, 'Suzana', 33, 'Porto Alegre'),

-- 5 registros para a cidade de Salvador
(86, 'Igor', 24, 'Salvador'),
(87, 'Tatiane', 26, 'Salvador'),
(88, 'Marcos', 31, 'Salvador'),
(89, 'Ana Clara', 28, 'Salvador'),
(90, 'Roberto', 30, 'Salvador');

```

## 2. Adicionar Colunas

Adicionar uma coluna em uma tabela existente é útil quando você precisa armazenar informações adicionais. 

**Exemplo:** coluna chamada `email` do tipo `STRING` à tabela `clientes`.

```sql
ALTER TABLE clientes
ADD COLUMNS (email STRING);
```

## 2. Modificar Colunas Existentes

Modificar uma coluna pode incluir alterar o tipo de dado ou renomear a coluna. 

**Atualizar a Versão do Protocolo da Tabela**

```sql
ALTER TABLE clientes
SET TBLPROPERTIES (
  'delta.minReaderVersion' = '2',
  'delta.minWriterVersion' = '5'
);
```

**Ativar o Column Mapping**

```sql
ALTER TABLE clientes
SET TBLPROPERTIES ('delta.columnMapping.mode' = 'name');
```

**Adicionar uma Nova Coluna**

```sql
ALTER TABLE clientes
ADD COLUMNS (nova_idade SMALLINT);
```


**Copiar os Dados da Coluna Antiga para a Nova Coluna**

```sq
UPDATE clientes
SET nova_idade = idade;
```

**Remover a Coluna Antiga**
Remova a coluna antiga:

```sql
ALTER TABLE clientes
DROP COLUMN idade;
```

**Renomear a Nova Coluna para o Nome da Coluna Original**

```sql
ALTER TABLE clientes
RENAME COLUMN nova_idade TO idade;
```


## 3. Excluir Colunas

Excluir colunas é útil para remover dados que não são mais necessários. 

**Exemplo:**

```sql
ALTER TABLE clientes
DROP COLUMN cidade;
```

Neste exemplo, estamos removendo a coluna `cidade` da tabela `clientes`.

## 4. Renomear Colunas ou a Tabela

Renomear colunas ou a tabela ajuda a manter uma nomenclatura consistente e descritiva. 

**Exemplo de renomear uma coluna:**

```sql
ALTER TABLE clientes
RENAME COLUMN Nome TO nome_completo;
```

Neste exemplo, estamos renomeando a coluna `Nome` para `nome_completo`.

**Exemplo de renomear a tabela:**

```sql
ALTER TABLE clientes
RENAME TO clientes_atualizados;
```

Neste exemplo, estamos renomeando a tabela `clientes` para `clientes_atualizados`.

## Exercícios Práticos

Vamos praticar os conceitos aprendidos com alguns exercícios:

1. **Adicionar uma coluna**:
   - Adicione uma coluna chamada `telefone` do tipo `STRING` na tabela `clientes`.

   ```sql
   ALTER TABLE clientes
   ADD COLUMNS (telefone STRING);
   ```

2. **Modificar uma coluna existente**:
   - Altere o tipo de dado da coluna `idade` de `INT` para `SMALLINT`.

   ```sql
   ALTER TABLE clientes
   ALTER COLUMN idade SET DATA TYPE SMALLINT;
   ```

3. **Excluir uma coluna**:
   - Remova a coluna `cidade` da tabela `clientes`.

   ```sql
   ALTER TABLE clientes
   DROP COLUMN cidade;
   ```

4. **Renomear uma coluna**:
   - Renomeie a coluna `Nome` para `nome_completo`.

   ```sql
   ALTER TABLE clientes
   RENAME COLUMN Nome TO nome_completo;
   ```

5. **Renomear a tabela**:
   - Renomeie a tabela `clientes` para `clientes_atualizados`.

   ```sql
   ALTER TABLE clientes
   RENAME TO clientes_atualizados;
   ```

## Conclusão

O comando `ALTER TABLE` é uma ferramenta essencial para a modificação da estrutura das tabelas em SQL. Com ele, podemos adicionar, modificar, excluir e renomear colunas e tabelas de forma eficiente e sem perder os dados existentes. Pratique os exercícios fornecidos para consolidar seu entendimento e aumentar sua proficiência no uso do comando `ALTER TABLE`.

Se você tiver dúvidas ou precisar de mais exemplos, envie-nos seu feedback!
