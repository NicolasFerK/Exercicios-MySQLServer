USE DB_ecommerce;

-- Quantidade de caracteres SELECT len(ENDERECO) , ENDERECO FROM tb_CLIENTE;

-- Nome maiusculo e minisculo SELECT nome , UPPER(nome) , LOWER(nome) FROM tb_CLIENTE;

select upper('Camila Vieira')

-- Buscando apenas uma quantidade especifica de caracteres

SELECT nome , LEFT(nome,6) , RIGHT(nome,6) FROM tb_CLIENTE;

SELECT nome , LEFT('Camila Vieira',6) , RIGHT('Camila Vieira',6) FROM tb_CLIENTE;

-- Duas Funções SELECT 'Camila Vieira' , upper(LEFT('Camila Vieira',6)) , upper(RIGHT('Camila Vieira',6))

-- Removendo Espaçoes SELECT 'Camila Vieira' , ltrim(' Camila Vieira ') , rtrim(' Camila Vieira ') , trim(' Camila Vieira ')

'Camila Vieira'

-- Removendo caracteres especiais SELECT data_nascimento , replace(data_nascimento,'-','') FROM tb_CLIENTE;