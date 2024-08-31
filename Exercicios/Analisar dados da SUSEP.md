# Exercicios: Análise de dados da SUSEP.
## Instruções:
- Acesse o site da SUSEP (https://www2.susep.gov.br/menuestatistica/Autoseg/principal.aspx); do lado direito você vai encontrar vários dados sobre seguros de automóveis. Faça o download dos dados referente ao 2º semestre de 2020. O arquivo ZIP contém vários arquivos menores no formato CSV.

- Abaixo, eu disponibilizo a função para ler os arquivos CSV:

```python
%python

def criar_view_temporaria(nome_tabela):
    # Construindo o caminho do arquivo CSV com base no nome da tabela
    caminho_csv = f"dbfs:/FileStore/{nome_tabela}.csv"
    
    # Leitura do arquivo CSV usando PySpark
    df = spark.read.format("csv") \
        .option("header", "true") \
        .option("inferSchema", "true") \
        .option("sep", ';') \
        .load(caminho_csv)
    
    # Criando uma view temporária com o nome especificado
    df.createOrReplaceTempView(nome_tabela)
    
    # Exibindo as primeiras 10 linhas da view temporária
    print(f"\nTabela: {nome_tabela}")
    spark.sql(f"SELECT * FROM {nome_tabela} LIMIT 10").display()
```

Para executar a função, utilize os comandos abaixo:

```python
%python
criar_view_temporaria(nome_tabela="auto_cau")
criar_view_temporaria(nome_tabela="auto_cat")
criar_view_temporaria(nome_tabela="auto_cep")
criar_view_temporaria(nome_tabela="auto_cidade")
criar_view_temporaria(nome_tabela="auto_cob")
criar_view_temporaria(nome_tabela="auto_idade")
criar_view_temporaria(nome_tabela="auto_reg")
criar_view_temporaria(nome_tabela="auto_sexo")
criar_view_temporaria(nome_tabela="auto2_grupo")
criar_view_temporaria(nome_tabela="auto2_vei")
criar_view_temporaria(nome_tabela="PremReg")
criar_view_temporaria(nome_tabela="arq_casco_comp")
criar_view_temporaria(nome_tabela="arq_casco3_comp")
criar_view_temporaria(nome_tabela="arq_casco4_comp")
```

1. Importação e Preparação de Dados:
   - Questão: Como você importaria os arquivos CSV do 2º semestre de 2020 para uma plataforma como o Databricks usando SQL? Descreva os passos necessários para garantir que os dados sejam carregados corretamente e estejam prontos para análise.
   - Objetivo: Avaliar a compreensão sobre importação e preparação de dados.

2. Exploração de Dados:
   - Questão: Quais são os primeiros insights que você pode extrair ao explorar as bases de dados importadas? Cite ao menos três descobertas iniciais baseadas em consultas SQL simples.
   - Objetivo: Incentivar a exploração inicial dos dados para identificar padrões ou anomalias.

3. Análise por Sexo:
   - Questão: Usando SQL, como você calcularia a média de idade dos segurados por sexo no arquivo `arq_casco_comp`? Qual é a interpretação desses resultados em termos de perfil dos segurados?
   - Objetivo: Ensinar a aplicação de funções agregadas e a análise dos resultados.

4. Análise por Região:
   - Questão: Escreva uma consulta SQL para calcular a média de idade por região no arquivo `arq_casco_comp`. O que esses resultados podem indicar sobre a distribuição demográfica dos segurados por região?
   - Objetivo: Aplicar funções agregadas com agrupamento e incentivar a interpretação de dados regionais.

5. Análise por Ano do Modelo:
   - Questão: Como você consultaria a média de idade por ano do modelo no arquivo `arq_casco_comp`? Que conclusões podem ser tiradas sobre a relação entre a idade dos segurados e o ano do modelo dos veículos?
   - Objetivo: Fazer a conexão entre diferentes dimensões de dados e seus impactos.

6. Análise de Prêmio:
   - Questão: Utilize SQL para calcular a média de `premio1` por sexo no arquivo `arq_casco_comp`. Como você interpretaria as diferenças encontradas entre os sexos?
   - Objetivo: Explorar as disparidades de prêmios de seguro entre diferentes grupos.

7. Análise de Sinistros:
   - Questão: Qual seria a consulta SQL para descobrir a média de sinistros (`numSinistros`) por região no arquivo `SinReg`? O que esses dados revelam sobre a frequência de sinistros em diferentes regiões?
   - Questão: Qual a média de indenizações levando em consideração o valor das indenizações (`indenizacoes`) e o número de sinistros (`numSinistros`)? 
   - Objetivo: Analisar padrões de sinistralidade geográfica.

8. Interpretação dos Dados:
   - Questão: Após realizar as análises pedidas (idade, prêmio, IS_MEDIA), como você correlacionaria esses resultados para criar um perfil detalhado dos segurados por região, sexo e ano do modelo? Quais insights estratégicos você pode extrair desses dados?
   - Objetivo: Desenvolver a habilidade de correlacionar e interpretar múltiplas dimensões de dados para gerar insights mais profundos.
