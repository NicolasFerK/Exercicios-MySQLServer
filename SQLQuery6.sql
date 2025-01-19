SELECT colunas, função_agregação() FROM tabela WHERE filtro GROUP BY colunas HAVING filtro_agrupamento

SELECT nome, COUNT() FROM tb_cliente GROUP BY nome HAVING COUNT() = 1

select * from tb_cliente

SELECT * FROM tb_cliente WHERE id_cliente BETWEEN 1 AND 2;

SELECT * FROM tb_cliente WHERE year(data_nascimento) BETWEEN 1985 AND 1988;