
use pla4coh7zioqztf9;

 CREATE TABLE pla4coh7zioqztf9.lancamento(
 
 	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT, 
 	descricao VARCHAR(50) NOT NULL,
 	data_vencimento Date NOT NULL,
 	data_pagamento Date,
 	valor DECIMAL(10,2) NOT NULL,
 	observacao VARCHAR(100),
 	tipo VARCHAR(20) NOT NULL,
 	codigo_categoria BIGINT(20) NOT NULL,
 	codigo_pessoa BIGINT(20) NOT NULL,
 	
 	FOREIGN KEY(codigo_categoria) REFERENCES categoria(codigo),
 	FOREIGN KEY(codigo_pessoa) REFERENCES pessoa(codigo)
 )ENGINE= InnoDB DEFAULT CHARSET=utf8;

 insert into lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa)
 values ('Salario Mensal', '2017-06-10', null, 6500.00, 'Distribuição de Lucro', 'RECEITA', 1, 1);
 
 insert into lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa)
 values ('Bahamas', '2017-02-10', '2017-02-10', 100.32, null, 'DESPESA', 2, 2);
 
 insert into lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa)
 values ('Top Club', '2017-06-10', null, 120, null, 'RECEITA', 3, 3);
 
 insert into lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa)
 values ('CEMIG', '2017-02-10', '2017-02-10', 110.44, 'Geração', 'RECEITA', 2, 1);
 
 insert into lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa)
 values ('DMAE', '2017-06-10', null, 200.30, null, 'DESPESA', 3, 2);
 
 insert into lancamento(descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa)
 values ('Extra', '2017-03-10', '2017-03-10', 700, null, 'DESPESA', 1, 3);
 