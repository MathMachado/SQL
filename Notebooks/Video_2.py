from pyspark.sql.types import StructType, StructField, IntegerType, StringType, FloatType

# Define o esquema para a tabela de produtos
esquema = StructType([
    StructField("ID", IntegerType(), False),
    StructField("Nome", StringType(), False),
    StructField("Categoria", StringType(), False),
    StructField("Preço", FloatType(), False),
    StructField("Quantidade", IntegerType(), False)
])

# Cria uma lista de registros de produtos
dados = [
    (1, "Caneta", "Escritório", 1.50, 100),
    (2, "Lápis", "Escritório", 0.80, 150),
    (3, "Borracha", "Escritório", 0.50, 200),
    (4, "Caderno", "Papelaria", 5.00, 75),
    (5, "Estojo", "Papelaria", 7.20, 50),
    (6, "Mochila", "Escolar", 30.00, 20),
    (7, "Calculadora", "Eletrônicos", 25.50, 30),
    (8, "Régua", "Escritório", 1.20, 110),
    (9, "Tesoura", "Escritório", 3.00, 40),
    (10, "Agenda", "Papelaria", 12.00, 60)
]

# Cria um DataFrame usando o esquema e os dados
produtos_df = spark.createDataFrame(dados, esquema)

# Mostra o DataFrame
produtos_df.show()

# Para a sessão Spark
spark.stop()

produtos_df.toPandas()
