CREATE DATABASE db_cidades_das_carnes;

USE db_cidades_das_carnes;

CREATE TABLE categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

INSERT INTO categorias (nome, descricao) VALUES
('Carnes Bovinas', 'Produtos de carne de boi'),
('Carnes Suínas', 'Produtos de carne de porco'),
('Aves', 'Produtos de carne de frango e outras aves'),
('Peixes e Frutos do Mar', 'Produtos de peixe e frutos do mar'),
('Embutidos', 'Produtos como salsichas, linguiças e outros embutidos');

CREATE TABLE produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    descricao TEXT NOT NULL,
    peso_kg DECIMAL(5,2) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

INSERT INTO produtos (nome, preco, descricao, peso_kg, id_categoria) VALUES
('Picanha', 120.00, 'Corte nobre de carne bovina', 1.5, 1),
('Costela de Porco', 80.00, 'Costela de porco marinada', 2.0, 2),
('Frango Inteiro', 30.00, 'Frango inteiro congelado', 2.5, 3),
('Salmão', 150.00, 'Filé de salmão fresco', 1.2, 4),
('Linguiça Toscana', 25.00, 'Linguiça toscana artesanal', 1.0, 5),
('Bife de Chorizo', 90.00, 'Corte especial de carne bovina', 1.3, 1),
('Bacon', 45.00, 'Bacon defumado', 1.0, 2),
('Camarão', 130.00, 'Camarão fresco e limpo', 1.0, 4);

select * from produtos where produtos.preco >50;
select * from produtos where produtos.preco between 50 and 150;
select * from produtos where nome like "%C%";
select * from produtos inner join categorias where produtos.id_categoria = categorias.id;
select * from produtos inner join categorias on produtos.id_categoria = categorias.id and categorias.nome = "aves";