CREATE DATABASE db_generation_game_online;


USE db_generation_game_online;

CREATE TABLE classes(
id BIGINT AUTO_INCREMENT,
classe VARCHAR(25) NOT NULL,
descricao VARCHAR(500),
PRIMARY KEY (id)
);

CREATE TABLE personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(80),
id_classe BIGINT NOT NULL,
hp INT(6) NOT NULL,
mana INT(6),
ataque INT(6) NOT NULL,
defesa INT(6) NOT NULL,
arma VARCHAR(45),
PRIMARY KEY (id),
FOREIGN KEY (id_classe) REFERENCES classes(id)
);

INSERT INTO classes(classe, descricao) VALUES
('Guerreiro', 'Um personagem equilibrado em ataque,defesa,hp e mana, capaz de utilizar 
magias e manusear os mais diversos tipos de armas, perfeito para quem ama explorar as 
mais diversas mecânicas do jogo de maneira sem muitas complicações.'),
('Bárbaro', 'Um personagem focado no ataque e defesa físicos, quantidade de hp ideal
para lidar com batalhas longas e fazer uma boa linha de frente para sua equipe, incapaz
de usar magia, mas particularmente habilidoso com armas pesadas e escudos de vanguarda.'),
('Mago', 'Um personagem voltado para o casting de habilidades mágicas e utilização de
recursos que necessitam altas quantidades de mana. capaz de ativar propriedades especiais
de itens mágicos. Não é muito habilidoso com armas, prefere utilizar grimórios e cajados.'),
('Artífice', ' Gosta de criar JeRiNgOnÇaS? bUgIgAnGaS? Quer criar um saco sem fundo para 
ganhar dinheiro com apresentações na praça da cidade? criar artefatos mágicos que você não
faz ideia de como funciona? o artífice é para você! Um personagem especialista na resolução
de problemas através da invenção e do burlar da regras, divirta-se e seja criativo!'),
('Bardo', ' Possui o atributo "VERGONHA NA CARA" travado em ---> 0 <--- , personagem
perfeito para quem gosta de assistir seus amgigos lutarem com valentia enquanto toca 
seu banjo, violão, viola, trompete, harpa, flauta e tudo quanto é artefato musical.
Tem a habilidade única de "Cura Melódica". Aumente a sua mana, caso o contrário,
só te restará assistir o Bárbaro barter a cabeça nos inimigos.' );

INSERT INTO personagens (nome, id_classe, hp, mana, ataque, defesa, arma) VALUES 
('Elefante de guerra pré-histórico', 3, 5000, 9000, 2600, 1200, 'Metralhadoras-antimatéria automáticas'),
('Olaf', 2, 8000, null, 2100, 2300, 'Marreta da pelúcia flamejante eterna'),
('James', 5, 4000, 12000, 700, 500, 'Viola... é só uma viola'),
('Donkey Kongo', 1, 6000, 1500, 1800, 600, 'Dados anti-balões de festa'),
('HeImErDoNgAs', 4, 4000, 3200, 900, 650, null),
('Guto', 2, 7000, 1100, 999999, 1900, 'Espada Gpc.'),
('Homem louco', 3, 2489, 1843, 360, 67, '6 Bastões desnecessariamente grandes'),
('Sif', 1, 6000, 1500, 1800, 1400, 'Kusabimaru-Katana');

select * from personagens where personagens.ataque > 2000;
select * from personagens where personagens.defesa between 1000 and 2000;
select * from personagens where personagens.nome LIKE "%C%";
select * from personagens inner join classes where personagens.id_classe = classes.id;
select * from personagens inner join classes on personagens.id_classe = classes.id and classes.classe = 'Bardo';
