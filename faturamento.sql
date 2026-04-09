WITH faturamento_mensal AS (
    SELECT 
        DATE_FORMAT(p.data_pedido, '%Y-%m-01') AS mes,
        SUM(ip.quantidade * ip.preco_unitario) AS receita_total,
        COUNT(DISTINCT p.pedido_id) AS quantidade_pedidos
    FROM pedidos p
    JOIN itens_pedido ip ON p.pedido_id = ip.pedido_id
    WHERE p.status != 'cancelado'
    GROUP BY mes
)
SELECT 
    mes,
    receita_total,
    quantidade_pedidos,
    LAG(receita_total) OVER (ORDER BY mes) AS receita_mes_anterior,
    ROUND(
        (receita_total - LAG(receita_total) OVER (ORDER BY mes)) 
        / NULLIF(LAG(receita_total) OVER (ORDER BY mes), 0) * 100, 2
    ) AS variacao_pct
FROM faturamento_mensal
ORDER BY mes DESC;