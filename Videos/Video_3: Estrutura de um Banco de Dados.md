# Vídeo 3: Estrutura de um Banco de Dados

## Parte 1: Estrutura Básica de um Banco de Dados
- **Conceito de Banco de Dados:**
  - Um banco de dados é uma coleção organizada de dados que podem ser facilmente acessados, gerenciados e atualizados.
  - Utilizado para armazenar informações de maneira estruturada.

- **Componentes Principais:**
  - **Tabelas:** Estruturas que armazenam dados em linhas e colunas.
  - **Registros (Linhas):** Cada linha em uma tabela representa um registro único.
  - **Campos (Colunas):** Cada coluna em uma tabela representa um atributo ou campo de dados.
  - **Chave Primária:** Um campo ou combinação de campos que identificam unicamente cada registro na tabela.
  - **Chave Estrangeira:** Um campo ou combinação de campos que estabelecem um vínculo entre duas tabelas.
  - **Índices:** Estruturas que melhoram a velocidade de recuperação de dados.

- **Relacionamentos entre Tabelas:**
  - **Relacionamento Um-para-Um:** Cada registro em uma tabela corresponde a um único registro em outra tabela.
  - **Relacionamento Um-para-Muitos:** Um registro em uma tabela pode corresponder a muitos registros em outra tabela.
  - **Relacionamento Muitos-para-Muitos:** Muitos registros em uma tabela podem corresponder a muitos registros em outra tabela.

- **Esquema de Banco de Dados:**
  - Representação visual das tabelas, colunas, e relacionamentos dentro do banco de dados.
  - Facilita a compreensão da estrutura e das interações entre os dados.

## Parte 2: Exercícios Práticos
- **Desenho de um Esquema Simples de Banco de Dados:**
  - **Exercício 1:** Desenhar um esquema de banco de dados para uma aplicação de biblioteca.
    - **Tabelas:**
      - **Livros:** ID, Título, Autor, Ano_Publicação, Gênero
      - **Autores:** ID, Nome, Data_Nascimento, Nacionalidade
      - **Empréstimos:** ID, ID_Livro, ID_Cliente, Data_Empréstimo, Data_Devolução
      - **Clientes:** ID, Nome, Email, Telefone
    - **Relacionamentos:**
      - Um-para-Muitos entre Autores e Livros (um autor pode escrever muitos livros).
      - Muitos-para-Muitos entre Livros e Clientes através da tabela Empréstimos (um cliente pode pegar emprestado muitos livros e um livro pode ser emprestado a muitos clientes).

  - **Exercício 2:** Desenhar um esquema de banco de dados para uma aplicação de vendas.
    - **Tabelas:**
      - **Produtos:** ID, Nome, Categoria, Preço, Quantidade
      - **Clientes:** ID, Nome, Email, Telefone
      - **Pedidos:** ID, ID_Cliente, Data_Pedido, Total
      - **Itens_Pedido:** ID, ID_Pedido, ID_Produto, Quantidade, Preço
    - **Relacionamentos:**
      - Um-para-Muitos entre Clientes e Pedidos (um cliente pode fazer muitos pedidos).
      - Muitos-para-Muitos entre Pedidos e Produtos através da tabela Itens_Pedido (um pedido pode conter muitos produtos e um produto pode aparecer em muitos pedidos).

# Recursos Visuais
- **Slides de Apresentação:**
  - Definições e exemplos de componentes principais de um banco de dados.
  - Exemplos de relacionamentos entre tabelas.
  - Representações visuais de esquemas de banco de dados.

- **Demonstrações:**
  - Diagramas de esquemas de banco de dados desenhados em ferramentas como Lucidchart, draw.io ou até mesmo à mão.

# Exemplos de Esquema de Banco de Dados:

## Exemplo 1: Biblioteca

- **Livros:**
  - `ID` (INT)
  - `Título` (VARCHAR)
  - `Autor` (VARCHAR)
  - `Ano_Publicação` (INT)
  - `Gênero` (VARCHAR)

- **Autores:**
  - `ID` (INT)
  - `Nome` (VARCHAR)
  - `Data_Nascimento` (DATE)
  - `Nacionalidade` (VARCHAR)

- **Empréstimos:**
  - `ID` (INT)
  - `ID_Livro` (INT)
  - `ID_Cliente` (INT)
  - `Data_Empréstimo` (DATE)
  - `Data_Devolução` (DATE)

- **Clientes:**
  - `ID` (INT)
  - `Nome` (VARCHAR)
  - `Email` (VARCHAR)
  - `Telefone` (VARCHAR)

## Exemplo 2: Vendas

- **Produtos:**
  - `ID` (INT)
  - `Nome` (VARCHAR)
  - `Categoria` (VARCHAR)
  - `Preço` (DECIMAL)
  - `Quantidade` (INT)

- **Clientes:**
  - `ID` (INT)
  - `Nome` (VARCHAR)
  - `Email` (VARCHAR)
  - `Telefone` (VARCHAR)

- **Pedidos:**
  - `ID` (INT)
  - `ID_Cliente` (INT)
  - `Data_Pedido` (DATE)
  - `Total` (DECIMAL)

- **Itens_Pedido:**
  - `ID` (INT)
  - `ID_Pedido` (INT)
  - `ID_Produto` (INT)
  - `Quantidade` (INT)
  - `Preço` (DECIMAL)
