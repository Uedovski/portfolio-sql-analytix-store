SELECT 
    c.estado,
    COUNT(DISTINCT p.pedido_id) AS qtd_pedidos,
    ROUND(SUM(p.total), 2) AS receita_estado,
    ROUND(AVG(p.total), 2) AS ticket_medio_estado,
    COUNT(DISTINCT c.cliente_id) AS qtd_clientes_unicos
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
WHERE p.status != 'cancelado'
GROUP BY c.estado
ORDER BY receita_estado DESC;