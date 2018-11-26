
use pla4coh7zioqztf9;

 CREATE TABLE pla4coh7zioqztf9.usuario(
 
 	codigo BIGINT(20) PRIMARY KEY, 
 	nome VARCHAR(50) NOT NULL,
 	email VARCHAR(50) NOT NULL,
 	senha VARCHAR(150) NOT NULL
 	 	
 )ENGINE= InnoDB DEFAULT CHARSET=utf8;

 CREATE TABLE pla4coh7zioqztf9.permissao(
 
 	codigo BIGINT(20) PRIMARY KEY, 
 	descricao VARCHAR(50) NOT NULL
 	 	
 )ENGINE= InnoDB DEFAULT CHARSET=utf8;
 
 CREATE TABLE pla4coh7zioqztf9.usuario_permissao(
 
 	codigo_usuario BIGINT(20) NOT NULL, 
	codigo_permissao BIGINT(20) NOT NULL, 
	
 	PRIMARY KEY(codigo_usuario, codigo_permissao),
 	FOREIGN KEY(codigo_usuario) REFERENCES usuario(codigo),
 	FOREIGN KEY(codigo_permissao) REFERENCES permissao(codigo)
 	 	
 )ENGINE= InnoDB DEFAULT CHARSET=utf8;
 
 
-- usuarios de sistemas
insert into usuario (codigo, nome, email, senha) values (1, 'Administrador', 'admin@algamoney.com', '$2a$10$SAr8gkmklwmQUEFR7WLyhePJyGOtA6Mblpm132LlYcEDFicSszoGe');
insert into usuario (codigo, nome, email, senha) values (2, 'Maria', 'maria@algamoney.com', '$2a$10$dm/5qqykrzP50LYERFrsYeYNhq8TyzNsu4uUHp3gIh4k8JB/RstQi');

-- regras
insert into permissao(codigo, descricao) values ( 1, 'ROLE_CADASTRAR_CATEGORIA');
insert into permissao(codigo, descricao) values ( 2, 'ROLE_PESQUISAR_CATEGORIA');
insert into permissao(codigo, descricao) values ( 3, 'ROLE_CADASTRAR_PESSOA');
insert into permissao(codigo, descricao) values ( 4, 'ROLE_REMOVER_PESSOA');
insert into permissao(codigo, descricao) values ( 5, 'ROLE_PESQUISAR_PESSOA');
insert into permissao(codigo, descricao) values ( 6, 'ROLE_CADASTRAR_LANCAMENTO');
insert into permissao(codigo, descricao) values ( 7, 'ROLE_REMOVER_LANCAMENTO');
insert into permissao(codigo, descricao) values ( 8, 'ROLE_PESQUISAR_LANCAMENTO');

-- admin permissao total
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 1);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 2);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 3);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 4);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 5);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 6);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 7);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (1, 8);


-- usuario somente leitura
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (2, 2);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (2, 5);
insert into usuario_permissao (codigo_usuario, codigo_permissao) values (2, 8);
