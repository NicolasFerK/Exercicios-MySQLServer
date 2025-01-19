-- DELETANDO OS REGISTROS select * from TB_CLIENTE

select * from tb_pedido

select * from tb_item_pedido

delete from tb_item_pedido where id_pedido in (1,2,3,4,5)

select * from tb_pedido

delete from tb_pedido where id_cliente = 1

DELETE FROM TB_CLIENTE WHERE ID_CLIENTE = 1;

DELETE FROM tb_email WHERE ID_CLIENTE = 1;

DELETE FROM tb_telefone WHERE ID_CLIENTE = 1;

INSERT INTO tb_cliente ( CPF ,NOME ,DATA_NASCIMENTO ,GENERO ,ENDERECO ,BAIRRO ,CIDADE ,UF ,CEP ) VALUES (4444,'JULIO','20000508','M','RUA: FLORENCIO DE ABREU, 500','CENTRO','EXTREMA','MG','4535510');

SELECT * FROM tb_cliente;

DELETE FROM TB_CLIENTE WHERE ID_CLIENTE = 6;

-- LIMPAR A TABELA INTEIRA TRUNCATE TABLE tb_item_pedido

select * from tb_item_pedido