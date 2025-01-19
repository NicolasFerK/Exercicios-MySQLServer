--======================================= FUN��ES NATIVAS ================================================== -- CALCULANDO IDADE SELECT data_nascimento , DATEDIFF(dd, DATA_NASCIMENTO, getdate()) / 365 AS idade FROM tb_cliente;

select getdate();

--======================================= CRIANDO FUN��ES ==================================================

CREATE FUNCTION CalcularIdade (@dataNascimento DATE) RETURNS INT AS BEGIN DECLARE @idade INT

SET @idade = DATEDIFF(YEAR, @dataNascimento, GETDATE())

-- Ajustar a idade se ainda n�o tiver completado o anivers�rio neste ano
IF (DATEADD(YEAR, @idade, @dataNascimento) > GETDATE())
    SET @idade = @idade - 1

RETURN @idade
END;

---------------- CHAMADA FUN��O --------------------------------------------- DECLARE @dataNascimento DATE = '1988-02-09';

SELECT dbo.CalcularIdade(@dataNascimento) AS Idade;

SELECT dbo.CalcularIdade('1988-02-09') AS Idade;