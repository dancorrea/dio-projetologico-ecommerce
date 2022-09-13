-- DB Ecommerce DSC - Database Experience DIO

USE EcommerceDSC;

INSERT INTO Cliente (Nome, Endereco, CPF) VALUES
('José Maria', 'Rua Sete - 221', '12345678909'),
('Maria José', 'Rua Nove - 357', '90876536211'),
('José Maria', 'Rua Dois - 9863', '0987654321');

INSERT INTO Produto (idCategoria, idFornecedor, Descricao, Avaliacao, Valor) VALUES
(1, 1, 'Notebook', 'Desc Prod 1', 5, 4999.99),
(1, 2, 'Mesa', 'Desc Prod 2', 5, 700.00),
(4, 2, 'Cadeira', 'Desc Prod 3', 5, 490.99),
(2, 1, 'Monitor', 'Desc Prod 4', 3, 840.50),
(3, 1, 'Impressora', 'Desc Prod 5', 4, 149.99);

INSERT INTO Categoria (Descricao) VALUES
('Informática'),
('Móveis'),
('Infantil'),
('Vestuário');

INSERT INTO Fornecedor (Descricao, RazaoSocial, CNPJ) VALUES
('Forncedor1', 'DSC Produtos de Informática', '1234567890'),
('Fornecedor2', 'Móveis Planejados Brasil', '0987654321');

INSERT INTO Pedido (idEntrega, idPagamento, ValorFinal, Descricao) VALUES
(3, 1, 780.00, 'Pedido #2022-34533056'),
(1, 4, 120.00, 'Pedido #2022-34644235'),
(2, 5, 4800.00, 'Pedido #2022-75464264'),
(9, 8, 340.50, 'Pedido #2022-64734624'),
(5, 3, 999.99, 'Pedido #2022-753473244'),
(7, 8, 27.00, 'Pedido #2022-646342467'),
(4, 7, 1300.00, 'Pedido #2022-66426474'),
(9, 2, 757.87, 'Pedido #2022-46689959');

INSERT INTO Entrega (StatusEntrega, CodigoRastreio, Frete, DataEntrega) VALUES
('ENTREGUE', '79865-50003', '15.00', 2022-09-13),
('ENTREGUE', '79865-50003', '25.00', 2022-09-10),
('EM TRÂNSITO', '79865-50003', '0.00', 2022-09-20),
('ENTREGUE', '79865-50003', '0.00', 2022-09-13),
('SEPARANDO PEDIDO', '79865-50003', '35.00', 2022-09-22),
('EM TRÂNSITO', '79865-50003', '15.00', 2022-09-15);

INSERT INTO Pagamento (Tipo, NumeroIdentificador) VALUES
('Cartao', '435-6547'),
('Cartao', '435-6547'),
('Boleto', '435-6547'),
('Pix', '435-6547'),
('Pix', '435-6547');

INSERT INTO Estoque (idProduto, Quantidade) VALUES
(1, 50),
(2, 20),
(5, 50),
(3, 20),
(4, 10);

INSERT INTO PedidoProduto (idPedido, idProduto, Quantidade) VALUES
(9, 5, 1),
(34, 7, 5),
(11, 1, 2),
(2, 3, 2),
(3, 3, 1),
(9, 2, 1),
(4, 2, 1),
(6, 4, 3),
(21, 1, 12),
(1, 8, 1);