CREATE DATABASE loja;

SHOW DATABASES;
-- 1. Seleciona o banco de dados que já existe
USE loja;


-- 2. Cria a tabela de clientes
CREATE TABLE cliente(  
    id INT AUTO_INCREMENT PRIMARY KEY,     
    nome VARCHAR(100) NOT NULL,     
    email VARCHAR(100) NOT NULL UNIQUE 
);

-- 3. Cria a tabela de produtos
CREATE TABLE produto(  
    id INT AUTO_INCREMENT PRIMARY KEY,     
    nome VARCHAR(100) NOT NULL,     
    preco DECIMAL(5,2) NOT NULL 
);

-- 4. Cria a tabela de pedidos
CREATE TABLE pedido(  
    id INT AUTO_INCREMENT PRIMARY KEY,     
    data_pedido DATE NOT NULL,     
    client_id INT NOT NULL,
    produto_id INT NOT NULL, 
    FOREIGN KEY (client_id) REFERENCES cliente(id),
    FOREIGN KEY (produto_id) REFERENCES produto(id)
    
);

USE loja;

-- 1. Adicionar uma coluna de telefone na tabela cliente
ALTER TABLE cliente 
ADD telefone VARCHAR(20);

-- Alterar o nome de uma coluna que está incorreta
ALTER TABLE cliente CHANGE telefone celular VARCHAR(100);

-- Mostra todas as informações das tabelas
SELECT * FROM cliente;

-- Aumenta ou diminui o tipo de dados colocado anteriormente
ALTER TABLE cliente MODIFY celular VARCHAR(20) NOT NULL;

-- Remove a coluna celulares
ALTER TABLE cliente DROP column celular;

-- Apaga a coluna celular
DROP TABLE pedido;

-- Apaga o banco de dados
DROP DATABASE loja;

