-- SELECIONANDO OS PEDIDOS QUE FORAM FEITO NO MÊS DE DEZEMBRO

SELECT * FROM TB_PEDIDO WHERE MONTH(DATA_COMPRA) = 12;

-- SELECIONANDO OS PEDIDOS QUE FORAM FEITO NO ANO DE 2022 SELECT * FROM TB_PEDIDO WHERE YEAR(DATA_COMPRA) = 2022;

-- SELECIONANDO OS PEDIDOS QUE FORAM FEITO NO DIA 20 SELECT * FROM TB_PEDIDO WHERE DAY(DATA_COMPRA) = 20;

-- SELECIONANDO O DIA, MES E ANOS DOS PEDIDOS SELECT * , DAY(DATA_COMPRA) as Dia , MONTH(DATA_COMPRA) as Mes , YEAR(DATA_COMPRA) as Ano FROM TB_PEDIDO WHERE YEAR(DATA_COMPRA) = 2022;

-- CALCULANDO IDADE SELECT data_nascimento , GETDATE() , DATEDIFF(YY,DATA_NASCIMENTO, GETDATE()) AS idade FROM tb_cliente;

-- FORMATANDO DATA

SELECT convert(varchar, getdate(), 100) --'100 = 0',

  , convert(varchar, getdate(), 101) --'101: dd-mm-aaaa',

  , convert(varchar, getdate(), 102) --'102: aaa.mm.dd',

  , convert(varchar, getdate(), 103) --'103: dd/mm/aaaa - Brasil 4 dig', 

  , convert(varchar, getdate(), 104) --'104: dd.mm.aaaa',

  , convert(varchar, getdate(), 105) --'105: dd-mm-aaaa',

  , convert(varchar, getdate(), 106) --'106: dd mmm aaaa',

  , convert(varchar, getdate(), 107) --'107: mmm dd, aaaa',

  , convert(varchar, getdate(), 108) --'108: hh:mm:ss',

  , convert(varchar, getdate(), 109) --'109 = 09',

  , convert(varchar, getdate(), 110) --'110: mm-dd-aaaa',

  , convert(varchar, getdate(), 111) --'111: aaaa-mm-dd',

  , convert(varchar, getdate(), 112) --'112: aaaammdd',

  , convert(varchar, getdate(), 113) --'113 = 13',

  , convert(varchar, getdate(), 114) --'114 = 14'