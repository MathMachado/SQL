# Window Functions (obs.: esse conteúdo ainda não foi adicionado aos videos)

## O Conceito: O que é uma "Janela" de Dados?

Pense em uma consulta SQL tradicional com `GROUP BY`. Se você calcular a média de salários por cargo (`SELECT Cargo, AVG(Salario) FROM Colaboradores GROUP BY Cargo`), você perde a informação individual de cada Colaboradores. O resultado mostra apenas o cargo e a média, colapsando todas as linhas de colaboradores em uma só por cargo.

As **Window Functions** resolvem esse problema.

Imagine que, para cada linha da sua tabela (cada funcionário), você pudesse abrir uma "janela" para olhar as linhas vizinhas (outros Colaboradores) e fazer um cálculo. Essa "janela" pode ser o conjunto de todos os colaboradores, ou apenas os colaboradores do mesmo cargo, ou os colaboradores admitidos no mesmo ano, etc.

A principal vantagem é esta: **você realiza cálculos complexos sobre um conjunto de linhas, mas o resultado é adicionado em uma nova coluna, sem destruir ou agrupar os dados originais.** Cada linha individual é preservada.

Vamos para a prática, que é onde tudo fica mais claro. Usaremos a nossa tabela `Colaboradores`.

-----

## Passo a Passo: Executando os Exemplos

#### Criação dos dados

-- Passo 1: Criação da Tabela "Colaboradores" com uma estrutura mais rica para permitir análises mais complexas.

```sql
CREATE TABLE Colaboradores (
    ID_Colaborador INT PRIMARY KEY,
    Nome VARCHAR(100),
    Departamento VARCHAR(50),
    Cargo VARCHAR(50),
    Regiao VARCHAR(50),
    Salario DECIMAL(10, 2),
    Data_Contratacao DATE
);
```

-- Passo 2: Inserção de Registros na Tabela "Colaboradores"
```sql
INSERT INTO Colaboradores (ID_Colaborador, Nome, Departamento, Cargo, Regiao, Salario, Data_Contratacao) VALUES
(101, 'Ana Júlia da Cruz', 'Vendas', 'Gerente de Contas', 'Sudeste', 8250.70, '2022-07-21'),
(102, 'Breno Rocha', 'Engenharia', 'Engenheiro de Software Pleno', 'Sudeste', 10560.50, '2021-05-15'),
(103, 'Carla Dias', 'Marketing', 'Analista de Marketing Digital', 'Sul', 6100.00, '2023-01-30'),
(104, 'Diego Farias', 'Recursos Humanos', 'Analista de Recrutamento', 'Sudeste', 5850.25, '2022-11-10'),
(105, 'Elisa Gomes', 'Financeiro', 'Analista Financeiro Sênior', 'Nordeste', 9200.80, '2020-03-12'),
(106, 'Fábio Teixeira', 'Vendas', 'Vendedor Interno', 'Sul', 4890.00, '2023-08-01'),
(107, 'Giovana Martins', 'Engenharia', 'Engenheira de Dados Júnior', 'Sudeste', 7200.00, '2023-04-18'),
(108, 'Heitor Barbosa', 'Marketing', 'Coordenador de SEO', 'Sudeste', 9550.60, '2021-09-05'),
(109, 'Isabela Cardoso', 'Vendas', 'Gerente de Contas', 'Nordeste', 8150.90, '2022-08-14'),
(110, 'João Pedro Almeida', 'Engenharia', 'Arquiteto de Soluções', 'Centro-Oeste', 15500.00, '2019-02-20'),
(111, 'Karen Souza', 'Recursos Humanos', 'Business Partner', 'Sudeste', 9800.00, '2020-10-01'),
(112, 'Lucas Ribeiro', 'Financeiro', 'Analista Financeiro Pleno', 'Sul', 7100.30, '2022-02-25'),
(113, 'Mariana Costa', 'Vendas', 'Vendedora Interna', 'Sudeste', 5100.75, '2022-05-19'),
(114, 'Nicolas Azevedo', 'Engenharia', 'Engenheiro de Software Sênior', 'Sudeste', 13200.00, '2020-06-11'),
(115, 'Olivia Ferreira', 'Marketing', 'Analista de Conteúdo', 'Nordeste', 5600.40, '2023-03-22'),
(116, 'Paulo Vieira', 'Vendas', 'Gerente Regional', 'Sul', 14500.00, '2018-11-15'),
(117, 'Quintino Gusmão', 'Engenharia', 'Engenheiro de Software Pleno', 'Sul', 10250.00, '2021-08-03'),
(118, 'Rafaela Nogueira', 'Recursos Humanos', 'Analista de Recrutamento', 'Sudeste', 5950.00, '2023-06-20'),
(119, 'Samuel Pires', 'Financeiro', 'Analista Financeiro Júnior', 'Sudeste', 4800.90, '2023-09-01'),
(120, 'Tatiana Justo', 'Vendas', 'Gerente de Contas', 'Sudeste', 8400.10, '2021-04-12'),
(121, 'Ulisses Moura', 'Engenharia', 'Engenheiro de DevOps Pleno', 'Sudeste', 11500.00, '2022-01-28'),
(122, 'Valentina Reis', 'Marketing', 'Designer Gráfico', 'Sul', 5300.20, '2022-10-03'),
(123, 'Wagner Matos', 'Vendas', 'Vendedor Interno', 'Centro-Oeste', 4750.50, '2023-07-11'),
(124, 'Xuxa Menezes', 'Marketing', 'Gerente de Marketing', 'Sudeste', 16200.00, '2018-05-22'),
(125, 'Yasmin Santos', 'Engenharia', 'Engenheira de Software Júnior', 'Sudeste', 6900.80, '2023-02-17'),
(126, 'Ziraldo Alves', 'Financeiro', 'Coordenador Financeiro', 'Sudeste', 11800.60, '2019-07-30'),
(127, 'Arthur Correia', 'Vendas', 'Gerente de Contas', 'Sul', 8320.00, '2022-09-02'),
(128, 'Beatriz Lima', 'Engenharia', 'Engenheira de QA Pleno', 'Sudeste', 9700.40, '2021-11-20'),
(129, 'Caio Moreira', 'Marketing', 'Analista de Marketing Digital', 'Sudeste', 6300.00, '2022-04-05'),
(130, 'Daniela Barros', 'Recursos Humanos', 'Analista de RH Generalista', 'Sul', 6200.70, '2021-03-18'),
(131, 'Eduardo Neves', 'Vendas', 'Vendedor Interno', 'Nordeste', 4950.80, '2023-10-02'),
(132, 'Fernanda Justino', 'Engenharia', 'Engenheira de Software Pleno', 'Sudeste', 10800.00, '2022-03-14'),
(133, 'Gustavo Lins', 'Financeiro', 'Analista Financeiro Pleno', 'Sudeste', 7250.50, '2021-06-25'),
(134, 'Helena Tavares', 'Marketing', 'Analista de Conteúdo', 'Sudeste', 5750.00, '2023-05-11'),
(135, 'Igor Caldeira', 'Vendas', 'Gerente de Contas', 'Sudeste', 8600.30, '2021-02-09'),
(136, 'Júlia Pimenta', 'Engenharia', 'Engenheira de Dados Pleno', 'Sudeste', 11200.90, '2020-08-17'),
(137, 'Kléber Novais', 'Financeiro', 'Analista Financeiro Sênior', 'Sudeste', 9450.00, '2019-12-04'),
(138, 'Larissa Mendes', 'Recursos Humanos', 'Analista de Recrutamento', 'Norte', 5700.10, '2023-08-16'),
(139, 'Marcelo Campos', 'Vendas', 'Vendedor Interno', 'Sudeste', 5050.60, '2022-06-30'),
(140, 'Natália Xavier', 'Engenharia', 'Engenheira de Software Sênior', 'Sul', 12900.20, '2021-01-22'),
(141, 'Otávio Ramos', 'Marketing', 'Designer Gráfico', 'Sudeste', 5450.00, '2023-07-28'),
(142, 'Patrícia Bernardes', 'Vendas', 'Gerente de Contas', 'Centro-Oeste', 8050.80, '2022-12-01'),
(143, 'Quevin da Mata', 'Engenharia', 'Engenheiro de DevOps Sênior', 'Sudeste', 14200.00, '2019-10-10'),
(144, 'Ricardo Sampaio', 'Financeiro', 'Diretor Financeiro', 'Sudeste', 22500.00, '2017-04-03'),
(145, 'Sílvia Abravanel', 'Recursos Humanos', 'Gerente de RH', 'Sudeste', 15800.50, '2018-09-21'),
(146, 'Thiago Ventura', 'Marketing', 'Analista de Marketing Digital', 'Nordeste', 6000.00, '2023-10-10'),
(147, 'Úrsula Benincasa', 'Vendas', 'Vendedora Interna', 'Sul', 4990.20, '2023-02-01'),
(148, 'Vinícius de Moraes', 'Engenharia', 'Engenheiro de Software Pleno', 'Norte', 10100.70, '2022-08-22'),
(149, 'Wanessa Camargo', 'Marketing', 'Coordenadora de Mídia Paga', 'Sudeste', 8900.00, '2021-07-14'),
(150, 'Xavier Andrade', 'Financeiro', 'Analista Financeiro Pleno', 'Nordeste', 7000.40, '2022-11-28'),
(151, 'Yuri Gagarin', 'Engenharia', 'Engenheiro de QA Sênior', 'Sudeste', 11800.00, '2020-01-15'),
(152, 'Zelda Fitzgerald', 'Recursos Humanos', 'Analista de RH Generalista', 'Centro-Oeste', 6100.90, '2022-03-03'),
(153, 'Amanda Teles', 'Vendas', 'Gerente de Contas', 'Sudeste', 8550.00, '2021-05-24'),
(154, 'Bruno Gagliasso', 'Engenharia', 'Engenheiro de Software Sênior', 'Sudeste', 13500.00, '2019-04-19'),
(155, 'Cibele Dantas', 'Financeiro', 'Analista Financeiro Júnior', 'Sul', 4900.10, '2023-03-09'),
(156, 'Davi Cunha', 'Marketing', 'Analista de Conteúdo', 'Centro-Oeste', 5500.60, '2022-09-15'),
(157, 'Ester de Souza', 'Vendas', 'Vendedora Interna', 'Sudeste', 5150.40, '2022-07-07'),
(158, 'Felipe Neto', 'Engenharia', 'Arquiteto de Software', 'Sudeste', 16500.00, '2018-02-28'),
(159, 'Gabriela Pugliesi', 'Recursos Humanos', 'Analista de Recrutamento Sênior', 'Sudeste', 7800.00, '2021-12-10'),
(160, 'Hugo Bonemer', 'Vendas', 'Gerente de Contas', 'Norte', 7900.25, '2023-01-12'),
(161, 'Íris Stefanelli', 'Marketing', 'Analista de Mídia Social', 'Sudeste', 6400.00, '2022-05-02'),
(162, 'Jonas da Silva', 'Engenharia', 'Engenheiro de Dados Sênior', 'Sudeste', 13800.80, '2019-11-08'),
(163, 'Kelly Key', 'Financeiro', 'Analista Financeiro Sênior', 'Sul', 9300.70, '2020-09-14'),
(164, 'Luan Santana', 'Vendas', 'Coordenador de Vendas', 'Centro-Oeste', 10500.00, '2020-02-03'),
(165, 'Mônica Benini', 'Recursos Humanos', 'Business Partner', 'Sudeste', 9950.50, '2019-05-13'),
(166, 'Nícolas Prattes', 'Engenharia', 'Engenheiro de Software Pleno', 'Sudeste', 10950.00, '2021-10-25'),
(167, 'Otávia Augusta', 'Marketing', 'Analista de Marketing Pleno', 'Sul', 7200.00, '2021-08-19'),
(168, 'Pedro Bial', 'Financeiro', 'Analista Financeiro Pleno', 'Sudeste', 7400.20, '2022-04-21'),
(169, 'Queli Santos', 'Vendas', 'Gerente de Contas', 'Sudeste', 8750.90, '2020-07-06'),
(170, 'Raul Seixas', 'Engenharia', 'Engenheiro de Software Pleno', 'Nordeste', 10300.00, '2022-10-18'),
(171, 'Sasha Meneghel', 'Marketing', 'Estagiária de Marketing', 'Sudeste', 1800.00, '2024-02-01'),
(172, 'Túlio Maravilha', 'Vendas', 'Vendedor Externo', 'Norte', 6200.30, '2021-03-29'),
(173, 'Ubirajara da Costa', 'Engenharia', 'Engenheiro de DevOps Pleno', 'Sul', 11300.50, '2022-09-05'),
(174, 'Vitória Falcão', 'Recursos Humanos', 'Analista de RH Júnior', 'Nordeste', 4600.00, '2023-11-07'),
(175, 'Washington Olivetto', 'Marketing', 'Diretor de Criação', 'Sudeste', 21000.00, '2017-08-10'),
(176, 'Ximbinha Mendes', 'Financeiro', 'Analista Financeiro Sênior', 'Norte', 9100.80, '2021-02-15'),
(177, 'Yasmin Brunet', 'Vendas', 'Vendedora Interna', 'Sudeste', 5250.00, '2023-06-12'),
(178, 'Zeca Pagodinho', 'Engenharia', 'Engenheiro de Software Júnior', 'Sudeste', 7100.60, '2023-01-09'),
(179, 'Ariana Grande', 'Marketing', 'Analista de Mídia Social', 'Sudeste', 6550.00, '2022-08-30'),
(180, 'Bernardo Silva', 'Vendas', 'Gerente de Contas', 'Sul', 8480.20, '2021-09-22'),
(181, 'Celso Portiolli', 'Engenharia', 'Engenheiro de QA Pleno', 'Sudeste', 9850.00, '2022-06-08'),
(182, 'Débora Secco', 'Recursos Humanos', 'Analista de RH Pleno', 'Sudeste', 7500.00, '2020-04-25'),
(183, 'Emílio Surita', 'Financeiro', 'Analista Financeiro Pleno', 'Sudeste', 7350.50, '2021-11-04'),
(184, 'Fátima Bernardes', 'Marketing', 'Gerente de Conteúdo', 'Sudeste', 14800.00, '2019-01-18'),
(185, 'Geraldo Luís', 'Vendas', 'Vendedor Externo', 'Nordeste', 6400.90, '2020-05-30'),
(186, 'Heloísa Périssé', 'Engenharia', 'Engenheira de Software Pleno', 'Centro-Oeste', 10450.00, '2021-12-17'),
(187, 'Ícaro Silva', 'Recursos Humanos', 'Coordenador de RH', 'Sudeste', 11200.70, '2019-08-26'),
(188, 'Juliette Freire', 'Marketing', 'Influenciadora Digital', 'Nordeste', 12500.00, '2021-05-05'),
(189, 'Kevinho de Oliveira', 'Vendas', 'Vendedor Interno', 'Sudeste', 5350.00, '2023-04-28'),
(190, 'Luciano Huck', 'Engenharia', 'Diretor de Tecnologia (CTO)', 'Sudeste', 28000.00, '2016-10-03'),
(191, 'Maisa Silva', 'Marketing', 'Analista de Mídia Social Júnior', 'Sudeste', 4800.40, '2023-09-20'),
(192, 'Neymar Júnior', 'Vendas', 'Executivo de Vendas Estratégicas', 'Sudeste', 18500.00, '2018-07-19'),
(193, 'Ofélia Queiroz', 'Financeiro', 'Analista Financeiro Sênior', 'Sul', 9600.60, '2020-11-16'),
(194, 'Pedro Scooby', 'Engenharia', 'Engenheiro de Software Sênior', 'Sudeste', 13800.00, '2020-03-23'),
(195, 'Regina Casé', 'Recursos Humanos', 'Diretora de RH', 'Sudeste', 24000.00, '2017-01-30'),
(196, 'Silvio Santos', 'Vendas', 'Diretor Comercial', 'Sudeste', 29500.00, '2016-02-10'),
(197, 'Tadeu Schmidt', 'Marketing', 'Apresentador', 'Sudeste', 19500.00, '2018-01-05'),
(198, 'Vera Fischer', 'Engenharia', 'Engenheira de Dados Pleno', 'Sudeste', 11400.20, '2021-04-08'),
(199, 'William Bonner', 'Financeiro', 'Controller', 'Sudeste', 17200.90, '2018-03-15'),
(200, 'Zeca Camargo', 'Marketing', 'Especialista em Comunicação', 'Sudeste', 13500.00, '2019-06-28');
```

### EXEMPLO 1: Ranking de Salários com `RANK()` e `DENSE_RANK()`

  * **Objetivo:** Nosso primeiro desafio é simples: criar um ranking de todos os colaboradores, do que ganha mais para o que ganha menos.

  * **Sintaxe e Execução:**

    ```sql
    SELECT
        Nome,
        Cargo,
        Salario,
        RANK() OVER (ORDER BY Salario DESC) AS Rank_Salario,
        DENSE_RANK() OVER (ORDER BY Salario DESC) AS Dense_Rank_Salario
    FROM
        Colaboradores;
    ```

  * **Análise do Resultado:**
    Observe as duas novas colunas, `Rank_Salario` e `Dense_Rank_Salario`.

      * A cláusula `OVER (ORDER BY Salario DESC)` diz ao SQL: "Olhe para todos os salários, ordene-os do maior para o menor, e então aplique a função de ranking".
      * Note que há colaboradores com salários iguais, como `César Vieira` e `Karina Oliveira` (ambos com 4300.00).
          * `RANK()`: Ambos recebem o rank 5, mas o próximo funcionário (com salário de 4200.00) recebe o rank 7. A posição 6 foi "pulada" para compensar o empate.
          * `DENSE_RANK()`: Ambos recebem o rank 5, e o próximo funcionário recebe o rank 6. Não há pulos, o que é útil para criar classificações contínuas.

-----

### EXEMPLO 2: Ranking de Salários DENTRO de cada Cargo com `PARTITION BY`

  * **Objetivo:** Agora, a pergunta é diferente. Não queremos saber o ranking geral, mas sim **quem é o funcionário mais bem pago dentro de cada cargo**.

  * **Sintaxe e Execução:**

    ```sql
    SELECT
        Nome,
        Cargo,
        Salario,
        ROW_NUMBER() OVER (PARTITION BY Cargo ORDER BY Salario DESC) AS Rank_Dentro_Do_Cargo
    FROM
        Colaboradores;
    ```

  * **Análise do Resultado (Reforçando o `PARTITION BY`):**
    Este é o conceito-chave\!

      * A cláusula `PARTITION BY Cargo` é a mágica aqui. Ela diz ao SQL: "Quebre a tabela em 'mini-tabelas' separadas para cada cargo ('Analista', 'Desenvolvedor', 'Gerente', etc.)".
      * A função `ROW_NUMBER() OVER (...)` é então aplicada a cada um desses grupos de forma independente.
      * **Observe o resultado:** Quando você olha a coluna `Rank_Dentro_Do_Cargo`, o ranking começa em 1 para o primeiro Analista, continua para os outros Analistas, e assim que o `Cargo` muda para "Desenvolvedor", **o ranking zera e começa em 1 novamente\!**
      * Isso nos permite responder imediatamente à nossa pergunta: o funcionário com `Rank_Dentro_Do_Cargo` igual a 1 é o mais bem pago daquele cargo específico. O `PARTITION BY` nos permite fazer análises *dentro* de grupos, mantendo todos os dados visíveis.

-----

### EXEMPLO 3: Comparando o Salário com a Média do Cargo

  * **Objetivo:** Queremos adicionar uma coluna que mostre, para cada funcionário, qual é a média salarial do cargo que ele ocupa. Isso nos ajuda a ver rapidamente quem está ganhando acima ou abaixo da média em sua área.

  * **Sintaxe e Execução:**

    ```sql
    SELECT
        Nome,
        Cargo,
        Salario,
        ROUND(AVG(Salario) OVER (PARTITION BY Cargo), 2) AS Media_Salarial_Do_Cargo
    FROM
        Colaboradores;
    ```

  * **Análise do Resultado:**

      * Aqui, usamos uma função de agregação (`AVG`) como uma Window Function.
      * A "janela" é novamente definida por `PARTITION BY Cargo`. Para um funcionário que é 'Analista', a janela inclui todos os outros 'Analistas'. O SQL calcula a média de salário *apenas dessa janela* e a exibe na linha do funcionário.
      * Você verá que todos os colaboradores do cargo 'Gerente' têm o mesmo valor na coluna `Media_Salarial_Do_Cargo`, que é a média de salário de todos os gerentes. O mesmo vale para os outros cargos. Isso tudo sem usar `GROUP BY` e perdendo a linha do `Nome`\!

-----

### EXEMPLO 4: Acessando Dados de Linhas Vizinhas com `LAG()`

  * **Objetivo:** Ordenar os colaboradores pela data de admissão e descobrir qual era o salário do funcionário contratado imediatamente antes do funcionário atual.

  * **Sintaxe e Execução:**

    ```sql
    SELECT
        Nome,
        Data_Admissao,
        Salario,
        LAG(Salario, 1) OVER (ORDER BY Data_Admissao) AS Salario_Funcionario_Anterior
    FROM
        Colaboradores
    ORDER BY
        Data_Admissao;
    ```

  * **Análise do Resultado:**

      * `LAG(Salario, 1)` significa: "pegue o valor da coluna `Salario`, 1 linha para trás".
      * A cláusula `OVER (ORDER BY Data_Admissao)` é crucial. Ela define a ordem das linhas para que o `LAG` saiba qual é a linha "anterior".
      * Na primeira linha do resultado (o funcionário mais antigo), a coluna `Salario_Funcionario_Anterior` será `NULL`, pois não há ninguém antes dele. Na segunda linha, essa coluna mostrará o salário do primeiro funcionário, e assim por diante. É como ter uma "memória" da linha anterior.

-----

### EXEMPLO 5: Cálculo de Total Acumulado (Running Total)

  * **Objetivo:** Calcular como o custo da folha de pagamento da empresa foi crescendo a cada nova contratação.

  * **Sintaxe e Execução:**

    ```sql
    SELECT
        Nome,
        Data_Admissao,
        Salario,
        SUM(Salario) OVER (ORDER BY Data_Admissao) AS Folha_Pagamento_Acumulada
    FROM
        Colaboradores
    ORDER BY
        Data_Admissao;
    ```

  * **Análise do Resultado:**

      * A função `SUM(Salario)` é aplicada sobre uma janela que cresce a cada linha.
      * `OVER (ORDER BY Data_Admissao)` define a ordem. Para a primeira linha (primeiro contratado), a soma é apenas o salário dele. Para a segunda linha, é a soma dos salários dos dois primeiros. Para a terceira, a soma dos três primeiros, e assim por diante.
      * Isso cria uma coluna de "soma acumulada", muito útil para análises financeiras e de crescimento ao longo do tempo.

-----

## Propondo Desafios

Agora que vimos os principais padrões de uso das Window Functions, é sua vez de praticar. Tente resolver os seguintes problemas usando a tabela `Colaboradores`:

1.  **"Liste os colaboradores e adicione uma coluna mostrando o salário do funcionário mais novo de seu mesmo cargo."**
    *(Dica: Você precisa ordenar por data de admissão dentro de cada cargo. Qual função permite "pegar" um valor específico de uma janela ordenada?)*

2.  **"Calcule, para cada funcionário, a diferença percentual de seu salário em relação à média de seu cargo."**
    *(Dica: Você já sabe como calcular a média do cargo. A fórmula para a diferença percentual é `(Valor - Média) / Média`.)*

3.  **"Encontre os 3 colaboradores admitidos mais recentemente em cada cargo."**
    *(Dica: Primeiro, crie um ranking de admissão dentro de cada cargo. Depois, como você pode filtrar uma consulta baseada no resultado de uma window function? Talvez você precise de uma subconsulta ou CTE.)*

Tente resolver e, quando estiver pronto, posso mostrar as soluções e explicar o raciocínio por trás de cada uma delas.
