CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

CREATE TABLE produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    quantidade INT, 
    valor DECIMAL(10, 2), 
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

INSERT INTO categorias (nome, descricao) VALUES 
('Ferramentas', 'Ferramentas diversas para construção e reparo.'),
('Materiais Elétricos', 'Produtos relacionados a instalações elétricas.'),
('Materiais Hidráulicos', 'Produtos relacionados a sistemas hidráulicos.'),
('Tintas', 'Tintas e produtos relacionados à pintura.'),
('Acabamentos', 'Produtos para acabamento e decoração.');

INSERT INTO produtos (nome, descricao, quantidade, valor, id_categoria) VALUES 
('Martelo', 'Martelo de aço com cabo de madeira.', 50, 75.00, 1),
('Alicate', 'Alicate universal de 6 polegadas.', 30, 55.00, 1),
('Fio Elétrico', 'Rolo de fio elétrico de 100m.', 20, 120.00, 2),
('Interruptor', 'Interruptor de luz branco.', 100, 15.00, 2),
('Tubo PVC', 'Tubo de PVC de 3 polegadas.', 60, 80.00, 3),
('Tinta Acrílica', 'Lata de tinta acrílica branca 18L.', 25, 200.00, 4),
('Rejunte', 'Rejunte para piso e azulejo.', 40, 35.00, 5),
('Torneira', 'Torneira de metal para cozinha.', 35, 150.00, 3);

select * from produtos where produtos.valor > 100;
select * from produtos where produtos.valor between 70 and 150;
select * from produtos where nome like "%C%";
select * from produtos inner join categorias where produtos.id_categoria = categorias.id;
select * from produtos inner join categorias where produtos.id_categoria = categorias.id and categorias.nome = "ferramentas";