USE ecommerce_celulares;

-- 1. Listar todos os clientes e seus emails
SELECT nome, email FROM clientes;

-- 2. Relatório Financeiro: Mostrar o valor total gasto por cada cliente (Usando JOIN e GROUP BY)
SELECT c.nome AS Cliente, SUM(ip.quantidade * ip.preco_unitario) AS Total_Gasto
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
JOIN itens_pedido ip ON p.id_pedido = ip.id_pedido
GROUP BY c.id_cliente, c.nome
ORDER BY Total_Gasto DESC;

-- 3. Detalhes do Pedido 1 (Juntando 3 tabelas para ver o que o cliente comprou)
SELECT p.id_pedido, pr.nome AS Produto, ip.quantidade, ip.preco_unitario
FROM pedidos p
JOIN itens_pedido ip ON p.id_pedido = ip.id_pedido
JOIN produtos pr ON ip.id_produto = pr.id_produto
WHERE p.id_pedido = 1;

-- 4. Alerta de Estoque: Produtos com menos de 20 unidades
SELECT nome, estoque FROM produtos WHERE estoque < 20;

-- 5. Faturamento total do E-commerce até agora
SELECT SUM(quantidade * preco_unitario) AS Faturamento_Total FROM itens_pedido;