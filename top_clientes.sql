WITH gasto_cliente AS (
    SELECT 
        c.nome AS cliente,
        c.cidade,
        c.estado,
        SUM(ip.quantidade * ip.preco_unitario) AS total_gasto,
        COUNT(DISTINCT p.pedido_id) AS qtd_pedidos
    FROM clientes c
    JOIN pedidos p ON c.cliente_id = p.cliente_id
    JOIN itens_pedido ip ON p.pedido_id = ip.pedido_id
    WHERE p.status != 'cancelado'
    GROUP BY c.nome, c.cidade, c.estado
)
SELECT 
    cliente,
    cidade,
    estado,
    total_gasto,
    qtd_pedidos,
    ROUND(total_gasto * 100.0 / SUM(total_gasto) OVER (), 2) AS pct_faturamento_total,
    RANK() OVER (ORDER BY total_gasto DESC) AS ranking
FROM gasto_cliente
ORDER BY ranking
LIMIT 10;