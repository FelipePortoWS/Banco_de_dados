CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT
);

CREATE TABLE cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    duracao INT,
    valor DECIMAL(10, 2),
    id_categoria BIGINT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

INSERT INTO categorias (nome, descricao) VALUES 
('Programação', 'Cursos relacionados à programação e desenvolvimento de software.'),
('Banco de Dados', 'Cursos sobre gerenciamento e design de bancos de dados.'),
('Desenvolvimento Web', 'Cursos sobre desenvolvimento de websites e aplicações web.'),
('Inteligência Artificial', 'Cursos sobre IA, aprendizado de máquina e redes neurais.'),
('Segurança da Informação', 'Cursos sobre proteção e segurança de informações digitais.');

INSERT INTO cursos (nome, descricao, duracao, valor, id_categoria) VALUES 
('Introdução à Programação', 'Curso básico de programação para iniciantes.', 40, 300.00, 1),
('Desenvolvimento Web com JavaScript', 'Curso sobre desenvolvimento web usando JavaScript.', 60, 700.00, 3),
('Banco de Dados SQL', 'Curso sobre design e gerenciamento de bancos de dados SQL.', 50, 600.00, 2),
('Python para Data Science', 'Curso de Python focado em ciência de dados.', 80, 1200.00, 1),
('Segurança em Redes', 'Curso sobre segurança em redes de computadores.', 45, 900.00, 5),
('Machine Learning', 'Curso sobre fundamentos de aprendizado de máquina.', 70, 1500.00, 4),
('Desenvolvimento Full Stack', 'Curso completo de desenvolvimento web full stack.', 90, 2000.00, 3),
('Administração de Banco de Dados', 'Curso avançado sobre administração de bancos de dados.', 60, 800.00, 2);

select * from cursos where cursos.valor > 500;
select * from cursos where cursos.valor between 600 and 1000;
select * from cursos where nome like "%J%";
select * from cursos inner join categorias where cursos.id_categoria = categorias.id;
select * from cursos inner join categorias on cursos.id_categoria = categorias.id and categorias.nome = "Programação";

