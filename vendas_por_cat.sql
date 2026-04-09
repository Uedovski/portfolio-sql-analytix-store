SELECT 
    cat.nome AS categoria,
    COUNT(DISTINCT p.pedido_id) AS qtd_pedidos,
    SUM(ip.quantidade) AS unidades_vendidas,
    ROUND(SUM(ip.quantidade * ip.preco_unitario), 2) AS receita_categoria,
    ROUND(AVG(ip.preco_unitario), 2) AS preco_medio_vendido,
    ROUND(SUM(ip.quantidade * ip.preco_unitario) * 100.0 / 
          SUM(SUM(ip.quantidade * ip.preco_unitario)) OVER (), 2) AS pct_receita
FROM categorias cat
JOIN produtos prod ON cat.categoria_id = prod.categoria_id
JOIN itens_pedido ip ON prod.produto_id = ip.produto_id
JOIN pedidos p ON ip.pedido_id = p.pedido_id
WHERE p.status != 'cancelado'
GROUP BY cat.nome
ORDER BY receita_categoria DESC;