USE DB_ecommerce;

select * from tb_cliente;

-- Quantidade de pessoas cadastradas SELECT COUNT(DISTINCT CPF) FROM tb_cliente;

-- Maior e menor valor

select max(valor_produto) , min(valor_produto) from tb_produto

select * from tb_produto

-- Maior e menor quantidade em estoque

select max(qtd_estoque) , min(qtd_estoque) from tb_produto

-- Valor total que tenho

select sum(valor_produto) from tb_produto

-- Total em estoque

select sum(qtd_estoque) from tb_produto

-- Quantidade de produtos, total vendido

SELECT prd.DESC_PRODUTO , sum(itn.VALOR_ITEM) as VALOR_TOTAL , SUM(itn.QTD_ITEM) AS QTD_TOTAL FROM tb_pedido ped INNER JOIN tb_item_pedido itn on ped.id_pedido = itn.id_pedido inner join tb_produto prd on itn.id_produto = prd.id_produto group by prd.DESC_PRODUTO ORDER BY prd.DESC_PRODUTO;