# portfolio-sql-analytix-store
Projeto livre intermediário de SQL - Análise de Vendas de E-commerce (MySQL)
## Sobre o projeto
Sistema de análise de vendas de uma loja online de eletrônicos. Inclui modelagem de banco de dados, inserção de dados e consultas analíticas avançadas.

## Tecnologias utilizadas
- MySQL
- Consultas com JOINs, CTE
- Agregações, análises de faturamento, retenção de clientes e performance de vendedores

## Arquivos do projeto
- `seed.sql`  - Criação das tabelas e índices
- `seed2.sql` - Dados de exemplo realistas
- `ticketmedio_mes,top_clientes.sql, top_vendedores.sql, vendas_estado.sql, vendas_por_cat.sql` - consultas analíticas intermediárias

## Como executar
1. Execute o `seed.sql`
2. Execute o `seed2.sql`
3. Atualize o total dos pedidos:
   ```sql
   UPDATE pedidos p
   SET total = (SELECT COALESCE(SUM(quantidade * preco_unitario), 0) 
                FROM itens_pedido ip 
                WHERE ip.pedido_id = p.pedido_id);```
:) :D
