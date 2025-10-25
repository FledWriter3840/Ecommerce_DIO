use ecommerce;

INSERT INTO client (Fname, Minit, Lname, CPF, Address) VALUES
('Lucas', 'A', 'Silva', '12345678901', 'Rua das Flores, 123'),
('Mariana', 'B', 'Oliveira', '23456789012', 'Av. Central, 45'),
('João', 'C', 'Souza', '34567890123', 'Rua do Sol, 67'),
('Fernanda', 'D', 'Lima', '45678901234', 'Travessa Azul, 10'),
('Ricardo', 'E', 'Almeida', '56789012345', 'Rua Verde, 100'),
('Beatriz', 'F', 'Martins', '67890123456', 'Rua das Árvores, 88'),
('Gabriel', 'G', 'Pereira', '78901234567', 'Av. Brasil, 55'),
('Patrícia', 'H', 'Ferreira', '89012345678', 'Rua Nova, 12'),
('André', 'I', 'Gomes', '90123456789', 'Rua das Palmeiras, 40'),
('Camila', 'J', 'Costa', '01234567890', 'Rua São João, 99');

INSERT INTO product (Pname, classification_kids, category, avaliação, size) VALUES
('Notebook', false, 'Eletrônico', 4.8, '15pol'),
('Camiseta', false, 'Vestimenta', 4.3, 'M'),
('Boneca', true, 'Brinquedos', 4.7, '30cm'),
('Smartphone', false, 'Eletrônico', 4.9, '6pol'),
('Mesa', false, 'Móveis', 4.5, '1.5x1m'),
('Chocolate', true, 'Alimentos', 4.6, '100g'),
('Carrinho', true, 'Brinquedos', 4.2, '40cm'),
('Calça Jeans', false, 'Vestimenta', 4.4, 'G'),
('Sofá', false, 'Móveis', 4.8, '3Lugares'),
('TV', false, 'Eletrônico', 4.9, '50pol'),
('Tenis', false, 'Vestimenta', 4.3, '42'),
('Livro', true, 'Brinquedos', 4.9, 'Pequeno'),
('Mouse', false, 'Eletrônico', 4.5, 'Médio'),
('Teclado', false, 'Eletrônico', 4.4, 'Full'),
('Sandália', false, 'Vestimenta', 4.1, '38');

INSERT INTO supplier (SocialName, CNPJ, contact) VALUES
('TechSupplies LTDA', '11222333000111', '11998887766'),
('ModaBrasil S.A.', '22333444000122', '21997776655'),
('Brinquedos Felizes', '33444555000133', '31996655444'),
('Móveis Modernos', '44555666000144', '41995544333'),
('Alimentos & Cia', '55666777000155', '51994433222');

INSERT INTO seller (SocialName, AbstName, CNPJ, CPF, location, contact) VALUES
('Tech House Comércio', 'Tech House', '11222333000111', null, 'São Paulo - SP', '11998887766'),
('Veste Bem LTDA', 'Veste Bem', '22333444000122', null, 'Rio de Janeiro - RJ', '21997776655'),
('Casa dos Brinquedos', 'Brinq House', '33444555000133', null, 'Belo Horizonte - MG', '31996655444'),
('Móveis Prime', 'Prime Móveis', '44555666000144', null, 'Curitiba - PR', '41995544333'),
('ChocoMania', null, null, '12345678911', 'Porto Alegre - RS', '51994433222');

INSERT INTO productStorage (storageLocation, quantity) VALUES
('Depósito SP', 200),
('Depósito RJ', 150),
('Depósito MG', 100),
('Depósito PR', 180),
('Depósito RS', 120);

INSERT INTO orders (idOrderClient, orderStatus, orderDescription, sendValue, paymentCash) VALUES
(1, 'Confirmado', 'Notebook e Mouse', 20, true),
(2, 'Em Processamento', 'Camiseta e Calça Jeans', 15, false),
(3, 'Cancelado', 'Boneca', 10, true),
(4, 'Confirmado', 'Smartphone e TV', 25, false),
(5, 'Confirmado', 'Mesa e Sofá', 30, true),
(6, 'Em Processamento', 'Chocolate e Sandália', 10, false),
(7, 'Confirmado', 'Carrinho', 10, true),
(8, 'Em Processamento', 'Tenis', 15, false),
(9, 'Confirmado', 'Livro e Teclado', 10, true),
(10, 'Em Processamento', 'TV e Mouse', 20, false);

INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity, poStatus) VALUES
(1, 1, 1, 'Disponível'),
(13, 1, 1, 'Disponível'),
(2, 2, 1, 'Disponível'),
(8, 2, 1, 'Disponível'),
(3, 3, 1, 'Sem estoque'),
(4, 4, 1, 'Disponível'),
(10, 4, 1, 'Disponível'),
(5, 5, 1, 'Disponível'),
(9, 5, 1, 'Disponível'),
(6, 6, 2, 'Disponível'),
(15, 6, 1, 'Disponível'),
(7, 7, 1, 'Disponível'),
(11, 8, 1, 'Disponível'),
(12, 9, 1, 'Disponível'),
(14, 9, 1, 'Disponível'),
(10, 10, 1, 'Disponível'),
(13, 10, 1, 'Disponível');

INSERT INTO productSeller (idPseller, idPproduct, prodQuantity) VALUES
(1, 1, 10),
(1, 13, 20),
(1, 14, 15),
(2, 2, 50),
(2, 8, 40),
(2, 15, 25),
(3, 3, 30),
(3, 7, 25),
(3, 12, 10),
(4, 5, 10),
(4, 9, 12),
(5, 6, 50);

INSERT INTO storageLocation (idLproduct, idLstorage, location) VALUES
(1, 1, 'Depósito SP - Seção Eletrônicos'),
(2, 2, 'Depósito RJ - Seção Vestuário'),
(3, 3, 'Depósito MG - Seção Brinquedos'),
(4, 1, 'Depósito SP - Seção Eletrônicos'),
(5, 4, 'Depósito PR - Seção Móveis'),
(6, 5, 'Depósito RS - Seção Alimentos'),
(7, 3, 'Depósito MG - Seção Brinquedos'),
(8, 2, 'Depósito RJ - Seção Vestuário'),
(9, 4, 'Depósito PR - Seção Móveis'),
(10, 1, 'Depósito SP - Seção Eletrônicos');

INSERT INTO productSupplier (idPsSupplier, idPsProduct, quantity) VALUES
(1, 1, 50),
(1, 13, 100),
(2, 2, 80),
(2, 8, 70),
(3, 3, 60),
(3, 7, 40),
(3, 12, 50),
(4, 5, 30),
(4, 9, 20),
(5, 6, 100),
(5, 15, 50);

INSERT INTO personPhysical (idClient, CPF, BirthDate) VALUES
(1, '12345678901', '1995-03-15'),
(2, '23456789012', '1988-07-22'),
(3, '34567890123', '2000-01-05'),
(4, '45678901234', '1992-09-10'),
(6, '67890123456', '1999-11-25'),
(8, '89012345678', '1985-04-18'),
(10, '01234567890', '2002-06-30');

INSERT INTO personJuridical (idClient, CNPJ, CorporateName, StateRegistration) VALUES
(5, '11122233000199', 'Tech Vision LTDA', 'SP123456789'),
(7, '22233344000188', 'Moda Total Comércio de Roupas', 'RJ987654321'),
(9, '33344455000177', 'Casa Nova Móveis e Decoração', 'PR112233445');

INSERT INTO payment (idOrder, paymentType, paymentStatus, paymentValue, paymentDate) VALUES
(1, 'Pix', 'Concluído', 3500.00, '2025-10-10 14:22:00'),
(2, 'Cartão de Crédito', 'Concluído', 250.00, '2025-10-11 09:45:00'),
(2, 'Pix', 'Concluído', 50.00, '2025-10-11 09:46:00'),
(3, 'Boleto', 'Cancelado', 120.00, '2025-10-12 16:00:00'),
(4, 'Cartão de Crédito', 'Concluído', 5200.00, '2025-10-13 18:12:00'),
(5, 'Pix', 'Concluído', 2300.00, '2025-10-14 11:00:00'),
(6, 'Dinheiro', 'Pendente', 60.00, '2025-10-15 10:30:00'),
(7, 'Cartão de Débito', 'Concluído', 140.00, '2025-10-16 17:00:00'),
(8, 'Pix', 'Concluído', 300.00, '2025-10-17 08:20:00'),
(9, 'Cartão de Crédito', 'Concluído', 700.00, '2025-10-18 13:10:00'),
(10, 'Boleto', 'Pendente', 1800.00, '2025-10-19 09:00:00'),
(10, 'Pix', 'Concluído', 300.00, '2025-10-19 09:01:00');

INSERT INTO delivery (idOrder, trackingCode, deliveryStatus, deliveryDate, estimatedArrival) VALUES
(1, 'BR123456789SP', 'Entregue', '2025-10-12', '2025-10-13'),
(2, 'BR987654321RJ', 'Em Transporte', '2025-10-15', '2025-10-20'),
(3, 'BR456789123MG', 'Cancelada', NULL, NULL),
(4, 'BR789123456SP', 'Entregue', '2025-10-18', '2025-10-19'),
(5, 'BR321654987PR', 'Em Transporte', '2025-10-19', '2025-10-25'),
(6, 'BR654987321RS', 'Aguardando Envio', NULL, '2025-10-27'),
(7, 'BR852369741MG', 'Entregue', '2025-10-17', '2025-10-19'),
(8, 'BR963258147RJ', 'Entregue', '2025-10-20', '2025-10-22'),
(9, 'BR147258369PR', 'Em Transporte', '2025-10-22', '2025-10-28'),
(10, 'BR258369147SP', 'Aguardando Envio', NULL, '2025-10-30');
