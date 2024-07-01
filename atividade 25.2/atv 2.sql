CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

INSERT INTO categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas com sabores clássicos e tradicionais'),
('Especial', 'Pizzas com sabores diferenciados e gourmet'),
('Vegetariana', 'Pizzas sem ingredientes de origem animal'),
('Doce', 'Pizzas com sabores doces para sobremesa'),
('Sem Glúten', 'Pizzas preparadas sem glúten');

CREATE TABLE pizzas (
    id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    preco DECIMAL(5,2) NOT NULL,
    ingredientes VARCHAR(255) NOT NULL,
    tamanho VARCHAR(10) NOT NULL,
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

INSERT INTO pizzas (nome, preco, ingredientes, tamanho, id_categoria) VALUES
('Margherita', 32.00, 'Mussarela, Tomate, Manjericão', 'Grande', 1),
('Pepperoni', 60.00, 'Mussarela, Pepperoni', 'Grande', 1),
('Quatro Queijos', 45.00, 'Mussarela, Parmesão, Gorgonzola, Provolone', 'Grande', 2),
('Portuguesa', 40.00, 'Mussarela, Presunto, Ovo, Cebola, Pimentão, Azeitona', 'Grande', 1),
('Veggie Delight', 38.00, 'Mussarela Vegana, Tomate, Pimentão, Cebola, Azeitona, Milho', 'Grande', 3),
('Chocolate com Morango', 30.00, 'Chocolate, Morango, Creme de Avelã', 'Média', 4),
('Calabresa', 50.00, 'Mussarela, Calabresa, Cebola', 'Grande', 1),
('Frango com Catupiry', 55.00, 'Mussarela, Frango, Catupiry', 'Grande', 2);

select * from pizzas where pizzas.preco > 45;
select * from pizzas where pizzas.preco > 50 and pizzas.preco < 100;
select * from pizzas where pizzas.nome like "%M%";
select * from pizzas inner join categorias on pizzas.id_categoria = categorias.id;
select * from pizzas inner join categorias on pizzas.id_categoria = categorias.id and categorias.nome = 'Doce';
