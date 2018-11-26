
use pla4coh7zioqztf9;

 CREATE TABLE pla4coh7zioqztf9.pessoa(
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT, 
	nome VARCHAR(20) NOT NULL,
	ativo boolean DEFAULT false,
	logradouro VARCHAR(20),
	numero VARCHAR(20),
	complemento VARCHAR(20),
	bairro VARCHAR(20),
	cep VARCHAR(20),
	cidade VARCHAR(20),
	estado VARCHAR(20) 
) ENGINE= InnoDB DEFAULT CHARSET=utf8;

INSERT INTO pessoa(nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado ) 
values ('Sergio', true, 'Rua Andre Pujos', '57', 'Apto 65', 'Jd. Celeste', '04195-040', 'São Paulo', 'SP');

INSERT INTO pessoa(nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado ) 
values ('Nick', false, 'Rua dos anjos', '02', 'Sem Complemtento', 'Saude', '02234-543', 'Rio de Janeiro', 'RJ');

INSERT INTO pessoa(nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado ) 
values ('Gabriela', true, 'Rua Das noivas', '1800', 'casa 5', 'Jd germania', '12345-67', 'Minas Gerais', 'MG');