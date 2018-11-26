use pla4coh7zioqztf9;

CREATE TABLE pla4coh7zioqztf9.categoria(
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT, 
	nome VARCHAR(20) NOT NULL

) ENGINE= InnoDB DEFAULT CHARSET=utf8;

INSERT INTO categoria(nome) values ('Lazer');
INSERT INTO categoria(nome) values ('Alimentação');
INSERT INTO categoria(nome) values ('Supermercado');
INSERT INTO categoria(nome) values ('Farmácia');
INSERT INTO categoria(nome) values ('Outroa');

