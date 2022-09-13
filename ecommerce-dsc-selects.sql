-- DB Ecommerce DSC - Database Experience DIO

USE EcommerceDSC;

SELECT * FROM Cliente
ORDER BY Nome;

SELECT COUNT(*) FROM Pedido
HAVING ValorFinal >= 500;

SELECT Descricao FROM Categoria;

SELECT * FROM Entrega
WHERE StatusEntrega = 'ENTREGUE';

SELECT P.Descricao, C.Descricao FROM Produto AS P
INNER JOIN Categoria AS C ON P.idCategoria = C.idCategoria
WHERE C.idCategoria = 1
GROUP BY P.Descricao, C.Descricao;