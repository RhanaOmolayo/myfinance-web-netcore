CRIAR  BANCO DE DADOS  myfinance

USAR minhas finanças

CREATE  TABLE  plano conta (
	id IDENTITY NÃO NULL ,
	descrição VARCHAR ( 50 ) NOT NULL ,
	tipo CHAR ( 1 ),
	CHAVE PRIMÁRIA (id)
);

CREATE  TABLE  transação (
	id IDENTIDADE DA CHAVE PRIMÁRIA NÃO NULL ,
	dados VARCHAR ( 14 ) NÃO NULO ,
	valor DECIMAL ( 10 , 2 ) NÃO NULO ,
TEXTO 	histórico ,
	planocontaid INT  NOT NULL
	CHAVE PRIMÁRIA (ID),
	FOREIGN KEY (planocontaid) REFERÊNCIAS planoconta(id)	
);

/* MASSA DE DADOS */
INSERT INTO planoconta(descricao, tipo) VALUES ( ' Combustivel ' , ' D ' )
INSERT INTO planoconta(descricao, tipo) VALUES ( ' Alimentação ' , ' D ' )
INSERT INTO planoconta(descricao, tipo) VALUES ( ' Plano de Saúde ' , ' D ' )
INSERT INTO planoconta(descricao, tipo) VALUES ( ' IPTU ' , ' D ' )
INSERT INTO planoconta(descricao, tipo) VALUES ( ' Salário ' , ' R ' )
INSERT INTO planoconta(descricao, tipo) VALUES ( ' Dividendos de ações ' , ' R ' )

INSERT INTO transacao(data, valor, historico, planocontaid) VALUES ( ' 20230214 21:00 ' , 800 , ' Gasolina Ferrari ' , 1 )
INSERT INTO transacao(data, valor, historico, planocontaid) VALUES ( ' 20230214 21:20 ' , 100 , ' Jantar MC Donalds ' , 2 )
INSERT INTO transacao(data, valor, historico, planocontaid) VALUES ( ' 20230213 10:47 ' , 1000 , ' Plano de saúde Bradesco ' , 3 )
INSERT INTO transacao(data, valor, historico, planocontaid) VALUES ( ' 20230212 11:00 ' , 2000 , ' IPTU Mansão Guarujá ' , 4 )
INSERT INTO transacao(data, valor, historico, planocontaid) VALUES ( ' 20230205 08:00 ' , 100000 , ' Salario Executivo ' , 5 )
INSERT INTO transacao(data, valor, historico, planocontaid) VALUES ( ' 20230205 09:00 ' , 500000 , ' Dividendos ' , 6 )