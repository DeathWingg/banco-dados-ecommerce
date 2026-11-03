USE ecommerce_celulares;

-- Inserindo Clientes
INSERT INTO clientes (nome, email, cpf) VALUES 
('Wallysson Costa', 'wallysson@email.com', '123.456.789-00'),
('Maria Silva', 'maria@email.com', '987.654.321-00'),
('João Souza', 'joao@email.com', '111.222.333-44');

-- Inserindo Produtos (Celulares e Acessórios)
INSERT INTO produtos (nome, categoria, preco, estoque) VALUES 
('iPhone 13 128GB', 'Smartphone', 3999.00, 10),
('Galaxy S23 256GB', 'Smartphone', 3499.00, 15),
('Capinha Anti-Impacto', 'Acessório', 49.90, 100),
('Película de Vidro', 'Acessório', 19.90, 200),
('Carregador Turbo 20W', 'Acessório', 129.90, 50);

-- Inserindo Pedidos
-- O cliente 1 (Wallysson) comprou um Galaxy e uma Capinha (Pedido 1)
-- O cliente 2 (Maria) comprou um iPhone (Pedido 2)
INSERT INTO pedidos (id_cliente, status) VALUES 
(1, 'Pago'),
(2, 'Pendente'),
(1, 'Entregue');

-- Inserindo os Itens dos Pedidos (O que foi comprado em cada pedido)
INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES 
(1, 2, 1, 3499.00), -- Pedido 1: 1 Galaxy S23
(1, 3, 2, 49.90),   -- Pedido 1: 2 Capinhas
(2, 1, 1, 3999.00), -- Pedido 2: 1 iPhone 13
(3, 5, 1, 129.90);  -- Pedido 3: 1 Carregador Turbo