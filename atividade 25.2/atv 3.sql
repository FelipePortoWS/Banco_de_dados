CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

INSERT INTO categorias (nome, descricao) VALUES
('Medicamentos', 'Produtos destinados ao tratamento de doenças e sintomas'),
('Cosméticos', 'Produtos de beleza e cuidados pessoais'),
('Suplementos', 'Produtos destinados à suplementação alimentar'),
('Higiene', 'Produtos de higiene pessoal e cuidados diários'),
('Infantil', 'Produtos destinados ao cuidado e bem-estar infantil');

CREATE TABLE produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    descricao TEXT NOT NULL,
    estoque INT NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

INSERT INTO produtos (nome, preco, descricao, estoque, id_categoria) VALUES
('Paracetamol', 12.00, 'Analgésico e antipirético', 100, 1),
('Vitamina C', 45.00, 'Suplemento alimentar com vitamina C', 50, 3),
('Shampoo Anticaspa', 25.00, 'Shampoo para controle de caspa', 30, 2),
('Protetor Solar FPS 50', 60.00, 'Protetor solar de alta proteção', 20, 2),
('Fralda Geriátrica', 55.00, 'Fralda para uso geriátrico', 40, 4),
('Leite em Pó Infantil', 65.00, 'Leite em pó para bebês', 15, 5),
('Creme Hidratante', 35.00, 'Hidratante para pele seca', 25, 2),
('Complexo Vitamínico', 80.00, 'Suplemento com várias vitaminas', 10, 3);

select * from produtos where produtos.preco > 50;
select * from produtos where produtos.preco between 5 and 60;
select * from produtos where nome like "%C%";
select * from produtos inner join categorias where produtos.id_categoria = categorias.id;
select * from produtos inner join categorias on produtos.id_categoria = categorias.id and categorias.nome = "cosmeticos";