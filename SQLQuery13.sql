-- TRABALHANDO COM OS JOINS

SELECT * FROM TB_CLIENTE;

SELECT * FROM TB_EMAIL;

SELECT CLI.CPF , CLI.NOME , EM.EMAIL FROM TB_CLIENTE CLI INNER JOIN TB_EMAIL EM ON CLI.ID_CLIENTE = EM.ID_CLIENTE;

INSERT INTO tb_cliente ( CPF ,NOME ,DATA_NASCIMENTO ,GENERO ,ENDERECO ,BAIRRO ,CIDADE ,UF ,CEP ) VALUES (4444,'JULIO','20000508','M','RUA: FLORENCIO DE ABREU, 500','CENTRO','EXTREMA','MG','4535510');

SELECT DISTINCT CLI.CPF , CLI.NOME , EM.EMAIL FROM TB_CLIENTE CLI LEFT JOIN TB_EMAIL EM ON CLI.ID_CLIENTE = EM.ID_CLIENTE;

SELECT CLI.CPF , CLI.NOME , EM.EMAIL FROM TB_CLIENTE CLI LEFT JOIN TB_EMAIL EM ON CLI.ID_CLIENTE = EM.ID_CLIENTE;

SELECT CLI.CPF , CLI.NOME , EM.EMAIL FROM TB_CLIENTE CLI RIGHT JOIN TB_EMAIL EM ON CLI.ID_CLIENTE = EM.ID_CLIENTE;

SELECT CLI.CPF , CLI.NOME , EM.EMAIL FROM TB_CLIENTE CLI LEFT JOIN TB_EMAIL EM ON CLI.ID_CLIENTE = EM.ID_CLIENTE WHERE EM.ID_CLIENTE IS NULL;

-- JOINS COM TODAS AS TABELAS

SELECT distinct CLI.CPF , CLI.NOME , em.email , tel.ddd , tel.telefone , ped.num_nota_fiscal , ped.qtd_total , ped.valor_total , prd.DESC_PRODUTO FROM tb_cliente CLI INNER JOIN tb_email em on cli.id_cliente = em.id_cliente

inner join tb_telefone tel on cli.id_cliente = tel.id_cliente inner join tb_pedido ped on cli.id_cliente = ped.id_cliente left join tb_item_pedido itm on ped.id_pedido = itm.id_pedido left join tb_produto prd on prd.id_produto = itm.id_produto order by cpf, nome;