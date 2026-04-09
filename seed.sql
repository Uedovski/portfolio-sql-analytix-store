
use ecommerce;
CREATE TABLE categorias (
    categoria_id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL UNIQUE,
    descricao TEXT
);

CREATE TABLE produtos (
    produto_id SERIAL PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    categoria_id INTEGER REFERENCES categorias(categoria_id) ON DELETE SET NULL,
    preco NUMERIC(12,2) NOT NULL CHECK (preco > 0),
    estoque INTEGER NOT NULL DEFAULT 0 CHECK (estoque >= 0),
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE,
    cidade VARCHAR(100),
    estado VARCHAR(2),
    data_cadastro DATE
);

CREATE TABLE vendedores (
    vendedor_id SERIAL PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    departamento VARCHAR(50),
    contratado_em DATE
);

CREATE TABLE pedidos (
    pedido_id SERIAL PRIMARY KEY,
    cliente_id INTEGER REFERENCES clientes(cliente_id),
    vendedor_id INTEGER REFERENCES vendedores(vendedor_id),
    data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'pendente' 
        CHECK (status IN ('pendente', 'pago', 'enviado', 'cancelado')),
    total NUMERIC(14,2) DEFAULT 0.00
);

CREATE TABLE itens_pedido (
    item_id SERIAL PRIMARY KEY,
    pedido_id INTEGER REFERENCES pedidos(pedido_id) ON DELETE CASCADE,
    produto_id INTEGER REFERENCES produtos(produto_id),
    quantidade INTEGER NOT NULL CHECK (quantidade > 0),
    preco_unitario NUMERIC(12,2) NOT NULL
);

CREATE TABLE pagamentos (
    pagamento_id SERIAL PRIMARY KEY,
    pedido_id INTEGER REFERENCES pedidos(pedido_id),
    valor NUMERIC(14,2) NOT NULL,
    data_pagamento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    metodo VARCHAR(30) CHECK (metodo IN ('cartao_credito', 'pix', 'boleto'))
);

CREATE INDEX idx_pedidos_data ON pedidos(data_pedido);
CREATE INDEX idx_pedidos_cliente ON pedidos(cliente_id);
CREATE INDEX idx_itens_produto ON itens_pedido(produto_id);
CREATE INDEX idx_produtos_categoria ON produtos(categoria_id);
