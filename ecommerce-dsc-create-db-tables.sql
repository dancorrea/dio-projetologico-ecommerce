-- DB Ecommerce DSC - Database Experience DIO

CREATE DATABASE EcommerceDSC;

USE EcommerceDSC;

CREATE TABLE Cliente(
	idCliente INT auto_increment PRIMARY KEY,
    Nome VARCHAR(120),
    Endereco VARCHAR(120),
	CPF CHAR (11) NOT NULL UNIQUE,
    CONSTRAINT unique_cpf_cliente UNIQUE (CPF)
    );

CREATE TABLE Produto(
	idProduto INT auto_increment PRIMARY KEY,
    idCategoria INT,
    idFornecedor INT,
    Descricao VARCHAR(300),
    Avaliacao INT(1),
	Valor FLOAT,
    FOREIGN KEY (idCategoria) REFERENCES Categoria(idCategoria),
    FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor)
);

CREATE TABLE Categoria(
	idCategoria INT auto_increment PRIMARY KEY,
    Descricao VARCHAR(300)
);

CREATE TABLE Fornecedor(
	idFornecedor INT auto_increment PRIMARY KEY,
    Descricao VARCHAR(300),
    RazaoSocial VARCHAR(100),
    CNPJ VARCHAR(11)
);

CREATE TABLE Pedido(
	idPedido INT auto_increment PRIMARY KEY,
    idEntrega INT,
    idPagamento INT,
    ValorFinal FLOAT,
    Descricao VARCHAR(45),
    FOREIGN KEY (idEntrega) REFERENCES Entrega(idEntrega),
    FOREIGN KEY (idPagamento) REFERENCES Pagamento(idPagamento)
);

CREATE TABLE Entrega(
	idEntrega INT auto_increment PRIMARY KEY,
    StatusEntrega BOOL,
    CodigoRastreio VARCHAR(45),
    Frete FLOAT,
    DataEntrega DATE
);

CREATE TABLE Pagamento(
	idPagamento INT auto_increment PRIMARY KEY,
    Tipo ENUM('Cartao', 'Boleto', 'Pix', 'Transferencia'),
    NumeroIdentificador VARCHAR(45)
);

CREATE TABLE Estoque(
	idEstoque INT auto_increment PRIMARY KEY,
    idProduto INT,
    Quantidade INT,
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);

CREATE TABLE PedidoProduto(
    idPedidoProduto INT auto_increment PRIMARY KEY,
	idPedido INT,
    idProduto INT,
    Quantidade FLOAT DEFAULT 1,
    FOREIGN KEY (idPedido) REFERENCES Pedido(idPedido),
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto)
);