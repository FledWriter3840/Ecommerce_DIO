use ecommerce;

-- Mostrar todos os clientes cadastrados
SELECT * FROM client;

-- Mostrar nome e categoria dos produtos
SELECT Pname, category FROM product;

-- Mostrar todos os pedidos e seus status
SELECT idOrder, orderStatus, orderDescription FROM orders;

-- Clientes com sobrenome "Silva"
SELECT * FROM client
WHERE Lname = 'Silva';

-- Produtos da categoria 'Eletrônico'
SELECT * FROM product
WHERE category = 'Eletrônico';

-- Pedidos confirmados
SELECT * FROM orders
WHERE orderStatus = 'Confirmado';

-- Produtos com avaliação acima de 4.5
SELECT Pname, avaliação FROM product
WHERE avaliação > 4.5;

-- Calcular valor total estimado (frete + 10% de taxa fictícia)
SELECT idOrder,
       orderDescription,
       sendValue,
       sendValue * 1.10 AS total_com_taxa
FROM orders;

-- Exibir nome completo dos clientes (concatenação)
SELECT CONCAT(Fname, ' ', Minit, '. ', Lname) AS nome_completo, CPF
FROM client;

-- Mostrar quantidade convertida para dúzias (exemplo de expressão numérica)
SELECT Pname, quantity, quantity / 12 AS quantidade_em_duzias
FROM productStorage;

-- Clientes em ordem alfabética
SELECT * FROM client
ORDER BY Lname ASC;

-- Produtos por melhor avaliação
SELECT Pname, avaliação FROM product
ORDER BY avaliação DESC;

-- Pedidos do mais caro para o mais barato (com base no frete)
SELECT idOrder, orderDescription, sendValue
FROM orders
ORDER BY sendValue DESC;

-- Quantidade de produtos por categoria
SELECT category, COUNT(*) AS total_produtos
FROM product
GROUP BY category;

-- Média de avaliações por categoria
SELECT category, AVG(avaliação) AS media_avaliacao
FROM product
GROUP BY category;

-- Somente categorias com média de avaliação acima de 4.5
SELECT category, AVG(avaliação) AS media_avaliacao
FROM product
GROUP BY category
HAVING AVG(avaliação) > 4.5;

-- Total de pedidos por status
SELECT orderStatus, COUNT(*) AS total_pedidos
FROM orders
GROUP BY orderStatus
HAVING COUNT(*) >= 1;

-- Pedidos e os nomes dos clientes
SELECT o.idOrder, o.orderStatus, o.orderDescription,
       c.Fname, c.Lname
FROM orders o
JOIN client c ON o.idOrderClient = c.idClient;

-- Produtos e seus respectivos fornecedores
SELECT p.Pname, s.SocialName AS fornecedor, ps.quantity
FROM product p
JOIN productSupplier ps ON p.idProduct = ps.idPsProduct
JOIN supplier s ON s.idSupplier = ps.idPsSupplier;

-- Produtos e os vendedores que os comercializam
SELECT p.Pname, se.SocialName AS vendedor, ps.prodQuantity
FROM productSeller ps
JOIN product p ON ps.idPproduct = p.idProduct
JOIN seller se ON ps.idPseller = se.idSeller;

-- Produtos e a localização no estoque
SELECT p.Pname, sl.location, st.quantity
FROM storageLocation sl
JOIN product p ON sl.idLproduct = p.idProduct
JOIN productStorage st ON sl.idLstorage = st.idProdStorage;

