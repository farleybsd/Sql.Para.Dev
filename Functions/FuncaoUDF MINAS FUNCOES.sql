CREATE FUNCTION MARCARAR(@DATA VARCHAR(255),@QUANTIDADECARACTERES INT )
RETURNS VARCHAR(255)
AS 
BEGIN
RETURN LEFT(@DATA,@QUANTIDADECARACTERES) + '**** ****'
END 


-- Usando A Funcao
SELECT dbo.MARCARAR('Farley Rufino',4)



CREATE FUNCTION ContarRegistros()
RETURNS int
AS 
BEGIN
RETURN (select COUNT(*) from Categorias)
END 

-- Usando a funcao
SELECT dbo.ContarRegistros()

-- Retornando uma tabela 

CREATE FUNCTION GetCategoriaById(@id int )
RETURNS Table
AS 
RETURN (select * from Categorias where id=@id)

-- Usando Function 

select *  from dbo.GetCategoriaById(1)