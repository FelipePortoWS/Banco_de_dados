CREATE DATABASE RH;

USE RH;

CREATE TABLE colaboradores(
id bigint auto_increment,
nome varchar(50),
cargo varchar(40),
presencial boolean,
salario decimal(6,2),
idade int(3),
primary key (id)
);

INSERT INTO colaboradores(nome, cargo, presencial, salario, idade) values
("Vanessa", "Gerente de projeto", true, 9289.00, 38),
("Guilherme", "Scrum Master", true, 8038.00, 41),
("Caio", "Desenvolvedor/a back-end", true, 6000.00, 27),
("Bruna", "UE/UI", false, 5536.00, 31),
("Marina", "Estágiário/a Desenvolvedor/a front-end", true, 1900, 24);

/* Para verificar os funcionários que ganham um valor superior a R$2000,00
SELECT * from colaboradores where salario > 2000;
 Para verificar os funcionários que ganham um valor inferior a R$2000,00 
SELECT * from colaboradores where salario < 2000;*/

UPDATE colaboradores SET cargo = "Desenvolvedor/a front-end" WHERE id = 5;
UPDATE colaboradores SET salario = 3850.00 WHERE id = 5;