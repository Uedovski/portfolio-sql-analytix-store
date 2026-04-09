
-- 1. Categorias
INSERT INTO categorias (nome, descricao) VALUES
('Smartphones', 'Celulares e smartphones high-end'),
('Notebooks', 'Computadores portáteis'),
('Acessórios', 'Periféricos e acessórios para computador'),
('Audio', 'Fones de ouvido, caixas de som e áudio'),
('Tablets', 'Tablets e iPads'),
('Smartwatch', 'Relógios inteligentes');

-- 2. Produtos (20 produtos)
INSERT INTO produtos (nome, categoria_id, preco, estoque) VALUES
('iPhone 15 Pro 256GB', 1, 7499.90, 42),
('iPhone 16 128GB', 1, 5499.90, 68),
('Samsung Galaxy S24 Ultra 512GB', 1, 6899.90, 31),
('Samsung Galaxy S23 FE', 1, 2899.90, 25),
('MacBook Air M3 16GB/256GB', 2, 10999.90, 18),
('MacBook Pro M3 14" 18GB', 2, 14999.90, 12),
('Dell XPS 13 9345', 2, 8999.90, 15),
('Lenovo ThinkPad X1 Carbon', 2, 10599.90, 9),
('AirPods Pro 2ª Geração', 4, 1499.90, 87),
('Sony WH-1000XM5', 4, 2199.90, 54),
('Mouse Logitech MX Master 3S', 3, 599.90, 73),
('Teclado Mecânico Keychron K2', 3, 449.90, 41),
('iPad Air 6ª Geração 11"', 5, 4499.90, 29),
('iPad Pro 12.9" M2', 5, 8999.90, 11),
('Apple Watch Ultra 2', 6, 6499.90, 33),
('Samsung Galaxy Watch 6 Classic', 6, 1899.90, 47),
('Suporte Notebook Ergonômico', 3, 129.90, 120),
('Cabo USB-C 2m Anker', 3, 89.90, 95),
('JBL Flip 6 Caixa de Som', 4, 799.90, 38),
('Galaxy Tab S9 FE', 5, 2199.90, 22);

-- 3. Clientes (15 clientes)
INSERT INTO clientes (nome, email, cidade, estado) VALUES
('Mariana Oliveira Santos', 'mariana.oliveira@email.com', 'São Paulo', 'SP'),
('João Pedro Costa Silva', 'joao.pedro@email.com', 'Rio de Janeiro', 'RJ'),
('Ana Clara Mendes', 'ana.clara.mendes@email.com', 'Belo Horizonte', 'MG'),
('Lucas Ferreira Lima', 'lucas.ferreira@email.com', 'Curitiba', 'PR'),
('Beatriz Souza Almeida', 'beatriz.souza@email.com', 'Porto Alegre', 'RS'),
('Rafael Mendes Oliveira', 'rafael.mendes@email.com', 'São Paulo', 'SP'),
('Camila Rodrigues Santos', 'camila.rodrigues@email.com', 'Campinas', 'SP'),
('Gabriel Santos Costa', 'gabriel.santos@email.com', 'Florianópolis', 'SC'),
('Isabela Ferreira', 'isabela.ferreira@email.com', 'Salvador', 'BA'),
('Mateus Almeida', 'mateus.almeida@email.com', 'Brasília', 'DF'),
('Larissa Costa', 'larissa.costa@email.com', 'São Paulo', 'SP'),
('Enzo Silva', 'enzo.silva@email.com', 'Rio de Janeiro', 'RJ'),
('Sophia Oliveira', 'sophia.oliveira@email.com', 'Belo Horizonte', 'MG'),
('Arthur Mendes', 'arthur.mendes@email.com', 'Curitiba', 'PR'),
('Valentina Santos', 'valentina.santos@email.com', 'Porto Alegre', 'RS');

-- 4. Vendedores (5 vendedores)
INSERT INTO vendedores (nome, departamento) VALUES
('Carlos Eduardo Almeida', 'Vendas Online'),
('Beatriz Costa Silva', 'Vendas Corporativas'),
('Rafael Santos Oliveira', 'Vendas Online'),
('Fernanda Lima Mendes', 'Vendas Online'),
('Thiago Rodrigues', 'Vendas Corporativas');

-- 5. Pedidos (25 pedidos - com datas variadas entre jan/2025 e abr/2026)
INSERT INTO pedidos (cliente_id, vendedor_id, data_pedido, status, total) VALUES
(1, 1, '2025-01-15 10:23:45', 'pago', 0),
(2, 3, '2025-01-22 14:12:30', 'enviado', 0),
(3, 2, '2025-02-03 09:45:12', 'pago', 0),
(4, 1, '2025-02-10 16:30:00', 'cancelado', 0),
(5, 4, '2025-02-18 11:05:55', 'pago', 0),
(6, 3, '2025-03-05 08:20:10', 'enviado', 0),
(7, 1, '2025-03-12 13:40:25', 'pago', 0),
(8, 5, '2025-03-20 17:15:40', 'pago', 0),
(9, 2, '2025-03-25 10:55:00', 'enviado', 0),
(1, 4, '2025-04-02 09:30:15', 'pago', 0),
(10, 1, '2025-04-08 14:22:30', 'pago', 0),
(11, 3, '2025-04-15 11:10:45', 'pago', 0),
(12, 2, '2025-04-20 15:45:20', 'enviado', 0),
(13, 5, '2025-05-01 08:50:00', 'pago', 0),
(14, 4, '2025-05-10 12:30:10', 'pago', 0),
(3, 1, '2025-05-18 10:05:55', 'pago', 0),
(5, 3, '2025-06-02 16:40:30', 'enviado', 0),
(7, 2, '2025-06-15 09:25:15', 'pago', 0),
(9, 4, '2025-07-05 14:10:40', 'pago', 0),
(2, 1, '2025-07-20 11:55:00', 'pago', 0),
(6, 5, '2025-08-10 13:30:25', 'enviado', 0),
(8, 3, '2025-09-01 10:15:50', 'pago', 0),
(10, 2, '2025-10-12 17:05:10', 'pago', 0),
(12, 4, '2025-11-05 08:40:00', 'pago', 0),
(15, 1, '2025-12-20 15:20:30', 'pago', 0);

-- 6. Itens dos Pedidos (vários itens por pedido)
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade, preco_unitario) VALUES
-- Pedido 1
(1, 1, 1, 7499.90),
(1, 9, 1, 1499.90),
-- Pedido 2
(2, 5, 1, 10999.90),
-- Pedido 3
(3, 3, 1, 6899.90),
(3, 11, 1, 599.90),
-- Pedido 4 (cancelado - mesmo assim inserimos para teste)
(4, 2, 1, 5499.90),
-- Pedido 5
(5, 10, 1, 2199.90),
(5, 17, 2, 129.90),
-- Pedido 6
(6, 6, 1, 14999.90),
-- Pedido 7
(7, 1, 1, 7499.90),
-- Pedido 8
(8, 13, 1, 4499.90),
(8, 19, 1, 799.90),
-- Pedido 9
(9, 4, 1, 2899.90),
-- Pedido 10
(10, 9, 2, 1499.90),
-- Pedido 11
(11, 15, 1, 6499.90),
-- Pedido 12
(12, 7, 1, 8999.90),
-- Pedido 13
(13, 12, 1, 449.90),
(13, 18, 3, 89.90),
-- Pedido 14
(14, 20, 1, 2199.90),
-- Pedido 15
(15, 8, 1, 10599.90),
-- Pedido 16
(16, 3, 1, 6899.90),
-- Pedido 17
(17, 5, 1, 10999.90),
-- Pedido 18
(18, 10, 1, 2199.90),
-- Pedido 19
(19, 1, 1, 7499.90),
(19, 9, 1, 1499.90),
-- Pedido 20
(20, 6, 1, 14999.90),
-- Pedido 21
(21, 14, 1, 8999.90),
-- Pedido 22
(22, 16, 1, 1899.90),
-- Pedido 23
(23, 2, 1, 5499.90),
-- Pedido 24
(24, 11, 2, 599.90),
-- Pedido 25
(25, 13, 1, 4499.90);

-- 7. Pagamentos (um por pedido pago)
INSERT INTO pagamentos (pedido_id, valor, metodo) VALUES
(1, 8999.80, 'pix'),
(2, 10999.90, 'cartao_credito'),
(3, 7499.80, 'pix'),
(5, 2459.70, 'boleto'),
(6, 14999.90, 'cartao_credito'),
(7, 7499.90, 'pix'),
(8, 5299.80, 'cartao_credito'),
(9, 2899.90, 'pix'),
(10, 2999.80, 'pix'),
(11, 6499.90, 'cartao_credito'),
(12, 8999.90, 'boleto'),
(13, 719.70, 'pix'),
(14, 2199.90, 'cartao_credito'),
(15, 10599.90, 'pix'),
(16, 6899.90, 'cartao_credito'),
(17, 10999.90, 'pix'),
(18, 2199.90, 'boleto'),
(19, 8999.80, 'pix'),
(20, 14999.90, 'cartao_credito'),
(21, 8999.90, 'pix'),
(22, 1899.90, 'cartao_credito'),
(23, 5499.90, 'pix'),
(24, 1199.80, 'pix'),
(25, 4499.90, 'boleto');