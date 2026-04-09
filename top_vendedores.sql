SELECT 
    v.nome AS vendedor,
    v.departamento,
    COUNT(DISTINCT p.pedido_id) AS qtd_pedidos,
    ROUND(SUM(p.total), 2) AS receita_total,
    ROUND(AVG(p.total), 2) AS ticket_medio,
    RANK() OVER (ORDER BY SUM(p.total) DESC) AS ranking_vendas
FROM vendedores v
JOIN pedidos p ON v.vendedor_id = p.vendedor_id
WHERE p.status != 'cancelado'
GROUP BY v.nome, v.departamento
ORDER BY ranking_vendas;