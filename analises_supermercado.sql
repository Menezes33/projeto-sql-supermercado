-- Faturamento total do supermercado 
SELECT SUM(valor) AS faturamento_total
FROM vendas;

-- Faturamento por categoria 
SELECT categoria, SUM(valor) AS faturamento
FROM vendas
GROUP BY categoria
ORDER BY faturamento DESC;

-- Produtos mais vendidos (em valor) 
SELECT produto, SUM(valor) AS faturamento
FROM vendas
GROUP BY produto
ORDER BY faturamento DESC;

-- Faturamento por cidade --
SELECT c.cidade, SUM(v.valor) AS faturamento
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.cidade
ORDER BY faturamento DESC;

-- Cliente mais ativo
SELECT c.nome, COUNT(v.id_venda) AS total_compras
FROM vendas v
JOIN clientes c ON v.id_cliente = c.id_cliente
GROUP BY c.nome
ORDER BY total_compras DESC
LIMIT 1;

-- Ticket médio
SELECT AVG(valor) AS ticket_medio
FROM vendas;


