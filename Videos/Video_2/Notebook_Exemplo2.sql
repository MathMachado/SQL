-- Passo 1: Criação da Tabela "Funcionários"
CREATE TABLE IF NOT EXISTS Funcionarios (
    ID INT,
    Nome STRING,
    Cargo STRING,
    Salario FLOAT,
    Data_Admissao DATE
)

-- Passo 2: Inserção de Dados na Tabela "Funcionários"
INSERT INTO Funcionarios VALUES
    (1, 'Ana Costa', 'Analista', 3500.00, '2023-05-10'),
    (2, 'Bruno Silva', 'Desenvolvedor', 4000.00, '2022-04-12'),
    (3, 'Carlos Lima', 'Gerente', 6000.00, '2020-03-15'),
    (4, 'Daniela Rocha', 'Desenvolvedor', 4200.00, '2021-08-22'),
    (5, 'Eduardo Santos', 'Analista', 3700.00, '2023-01-30'),
    (6, 'Fernanda Almeida', 'Gerente', 6200.00, '2019-12-01'),
    (7, 'Gabriel Ferreira', 'Designer', 3100.00, '2021-05-19'),
    (8, 'Heloisa Martins', 'Desenvolvedor', 4100.00, '2022-10-11'),
    (9, 'Igor Costa', 'Analista', 3600.00, '2023-02-20'),
    (10, 'Juliana Souza', 'Designer', 3200.00, '2020-11-05'),
    (11, 'Karina Oliveira', 'Desenvolvedor', 4300.00, '2021-07-15'),
    (12, 'Lucas Pereira', 'Gerente', 5900.00, '2020-06-23'),
    (13, 'Mariana Castro', 'Analista', 3500.00, '2023-03-18'),
    (14, 'Nathan Rodrigues', 'Desenvolvedor', 4000.00, '2022-01-25'),
    (15, 'Olivia Santos', 'Designer', 3000.00, '2021-09-28'),
    (16, 'Paulo Almeida', 'Gerente', 6300.00, '2019-08-14'),
    (17, 'Renata Lima', 'Analista', 3700.00, '2023-04-05'),
    (18, 'Samuel Barros', 'Desenvolvedor', 4200.00, '2020-02-12'),
    (19, 'Tatiana Souza', 'Designer', 3100.00, '2021-03-07'),
    (20, 'Ulysses Mendes', 'Analista', 3600.00, '2023-05-22'),
    (21, 'Victor Gomes', 'Gerente', 6100.00, '2019-01-30'),
    (22, 'Wesley Ribeiro', 'Desenvolvedor', 4000.00, '2022-02-17'),
    (23, 'Ximena Lopes', 'Designer', 3200.00, '2020-04-20'),
    (24, 'Yuri Martins', 'Analista', 3500.00, '2023-06-01'),
    (25, 'Zélia Castro', 'Desenvolvedor', 4100.00, '2021-08-19'),
    (26, 'Arthur Ramos', 'Gerente', 6200.00, '2019-03-25'),
    (27, 'Beatriz Cunha', 'Analista', 3600.00, '2023-07-10'),
    (28, 'César Vieira', 'Desenvolvedor', 4300.00, '2020-01-11'),
    (29, 'Denise Ferreira', 'Designer', 3100.00, '2021-05-23'),
    (30, 'Eduardo Campos', 'Analista', 3700.00, '2023-08-14')

-- Passo 3: Consulta de Dados da Tabela "Funcionários"
SELECT * FROM Funcionarios
