%sql
-- Passo 1: Criação da Tabela "Produtos"
CREATE TABLE IF NOT EXISTS Produtos (
    ID INT,
    Nome STRING,
    Categoria STRING,
    Preço FLOAT,
    Quantidade INT
)

-- Passo 2: Inserção de Dados na Tabela "Produtos"
%sql
INSERT INTO Produtos VALUES
    (1, 'Caneta', 'Escritório', 1.50, 100),
    (2, 'Lápis', 'Escritório', 0.80, 150),
    (3, 'Borracha', 'Escritório', 0.50, 200),
    (4, 'Caderno', 'Papelaria', 5.00, 75),
    (5, 'Estojo', 'Papelaria', 7.20, 50),
    (6, 'Mochila', 'Escolar', 30.00, 20),
    (7, 'Calculadora', 'Eletrônicos', 25.50, 30),
    (8, 'Régua', 'Escritório', 1.20, 110),
    (9, 'Tesoura', 'Escritório', 3.00, 40),
    (10, 'Agenda', 'Papelaria', 12.00, 60)

-- Passo 3: Consulta de Dados da Tabela "Produtos"
%sql
SELECT * FROM Produtos

