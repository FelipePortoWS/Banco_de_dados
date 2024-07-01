CREATE DATABASE escola;

USE escola;

CREATE TABLE estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT,
    serie VARCHAR(50),
    nota FLOAT,
    data_matricula DATE,
    PRIMARY KEY(id)
);

INSERT INTO estudantes (nome, idade, serie, nota, data_matricula) VALUES
('Ana Souza', 14, '8ª Série', 8.5, '2023-01-15'),
('Bruno Lima', 15, '9ª Série', 6.2, '2023-02-20'),
('Carla Mendes', 13, '7ª Série', 7.3, '2023-03-10'),
('Diego Alves', 14, '8ª Série', 9.1, '2023-04-05'),
('Elisa Ferreira', 15, '9ª Série', 5.7, '2023-05-12'),
('Fernando Castro', 13, '7ª Série', 7.9, '2023-06-18'),
('Gabriela Rocha', 14, '8ª Série', 6.8, '2023-07-25'),
('Henrique Oliveira', 15, '9ª Série', 4.9, '2023-08-30');

/*
SELECT * FROM estudantes WHERE nota > 7.0;
SELECT * FROM estudantes WHERE nota < 7.0;
*/

UPDATE estudantes SET nota = 7.5 WHERE id = 2;
