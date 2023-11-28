CREATE schema PIZZARIA;
use PIZZARIA;

CREATE TABLE pedido (
    pedido_id INT PRIMARY KEY,
    datainicio DATE NOT NULL,
    datafim DATE,
    preco FLOAT NOT NULL
);

CREATE TABLE motorista (
    mot_id INT PRIMARY KEY,
    cpf CHAR(11) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

CREATE TABLE cliente (
    client_id INT PRIMARY KEY,
    cpf CHAR(11) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    ADMIN INT
);

CREATE TABLE bebida (
    bebida_id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(200),
    preco FLOAT NOT NULL
);

CREATE TABLE endereco (
	ende_id INT PRIMARY KEY,
    ponto_referencia VARCHAR(50) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    endereco VARCHAR(50) NOT NULL,
    numero INT NOT NULL,
    complemento VARCHAR(200)
);

CREATE TABLE borda (
	borda_id INT PRIMARY KEY,
    sabor_borda VARCHAR(50) NOT NULL
);

CREATE TABLE tamanho (
	tamanho_id INT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL,
    num_sabores INT NOT NULL
);

CREATE TABLE tiposabor (
	tipo_id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE sabor(
	sabor_id INT PRIMARY KEY,
    tipo_id INT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(200),
    FOREIGN KEY(tipo_id) REFERENCES tiposabor(tipo_id)
);

CREATE TABLE pedido_pizza (
	pedidopizza_id INT PRIMARY KEY,
    pedido_id INT,
    tamanho_id INT,
    borda_id INT, 
    FOREIGN KEY(pedido_id) REFERENCES pedido(pedido_id),
    FOREIGN KEY(tamanho_id) REFERENCES tamanho(tamanho_id),
    FOREIGN KEY(borda_id) REFERENCES borda(borda_id)
);

CREATE TABLE pedido_cliente (
	pedido_id INT,
    mot_id INT,
    client_id INT,
    ende_id INT,
    FOREIGN KEY(pedido_id) REFERENCES pedido(pedido_id),
    FOREIGN KEY(mot_id) REFERENCES motorista(mot_id),
    FOREIGN KEY(client_id) REFERENCES cliente(client_id),
    FOREIGN KEY(ende_id) REFERENCES endereco(ende_id)
);

CREATE TABLE pedido_bebida (
	pedido_id INT,
    bebida_id INT,
    FOREIGN KEY(pedido_id) REFERENCES pedido(pedido_id),
    FOREIGN KEY(bebida_id) REFERENCES bebida(bebida_id)
);

CREATE TABLE pizza_sabor (
    pedidopizza_id INT,
    sabor_id INT,
    FOREIGN KEY (pedidopizza_id) REFERENCES pedido_pizza(pedidopizza_id),
    FOREIGN KEY (sabor_id) REFERENCES sabor(sabor_id)
);

CREATE TABLE cliente_endereco (
    client_id INT,
    ende_id INT,
    FOREIGN KEY (client_id) REFERENCES cliente(client_id),
    FOREIGN KEY (ende_id) REFERENCES endereco(ende_id)
);

CREATE TABLE pizzapreco (
    tamanho_id INT,
    tipo_id INT,
    borda_id INT,
    preco FLOAT NOT NULL,
    FOREIGN KEY (tamanho_id) REFERENCES tamanho(tamanho_id),
    FOREIGN KEY(tipo_id) REFERENCES tiposabor(tipo_id),
    FOREIGN KEY (borda_id) REFERENCES borda(borda_id)
);
