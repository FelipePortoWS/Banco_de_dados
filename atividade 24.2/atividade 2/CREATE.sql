CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE categorias(
id bigint auto_increment,
categoria varchar(30) not null,
primary key (id)
);

CREATE TABLE produtos(
id bigint auto_increment,
nome varchar(30) not null,
id_categoria bigint,
quantidade int(7),
valor decimal(8,2) not null,
data_validade date,
primary key (id),
foreign key (id_categoria) references categorias (id)
);

INSERT INTO categorias(categoria) VALUES
("laticínio"),
("hortifruti"),
("limpeza"),
("eletrodoméstico"),
("molhos");

INSERT INTO produtos(nome, id_categoria, quantidade, valor, data_validade) VALUES
("Beterraba", 2, 230, 12.00, '2024-07-22'),
("Ketchup", 5, 120, 18.00, '2026-06-27'),
("Queijo Minas", 1, 35, 54.00, '2024-09-15'),
("Lysoform", 3, 160, 20.00, '2024-07-22'),
("Geladeira Eletrolux", 4, 25, 3200.00, null);

/* Retorna os produtos com o valor superior a 500 reais
select * from produtos where valor > 500; 
   Retorna os produtos com o valor inferior a 500 reais
select * from produtos where valor < 500; 
*/

UPDATE produtos SET quantidade = 26 where id = 3;