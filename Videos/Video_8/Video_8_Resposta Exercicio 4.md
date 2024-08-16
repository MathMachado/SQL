```sql
WITH ClientesMais30 AS (
    SELECT ID, Nome, idade, cidade, email
    FROM clientes
    WHERE idade > 30
),
MediaPedidosPorCliente AS (
    SELECT ClienteID, AVG(Valor) AS MediaValor
    FROM pedidos
    GROUP BY ClienteID
),
ClientesMais30ComMediaPedidos AS (
    SELECT ClientesMais30.Nome, ClientesMais30.idade, ClientesMais30.email, MediaPedidosPorCliente.MediaValor
    FROM ClientesMais30
    LEFT JOIN MediaPedidosPorCliente ON ClientesMais30.ID = MediaPedidosPorCliente.ClienteID
)
SELECT * FROM ClientesMais30ComMediaPedidos;
```

