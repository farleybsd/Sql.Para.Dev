-- Pegando comeco de uma String
Select LEFT(c.descricao,4),c.descricao  from Categorias c

-- Pegando final de uma string 
Select RIGHT(c.descricao,4),c.descricao  from Categorias c

-- Pegar quantidade de uma string a partir de um carater
Select  SUBSTRING(c.descricao,2,5),c.descricao  from Categorias c

-- Concatenando String 
Select  'Farley ' + 'Rufino'
Select CONCAT('Farley',' de Souza',' Rufino')
Select  CONCAT(c.descricao,'Teste'),c.descricao  from Categorias c

-- Tratando Nulo
SELECT ISNULL(NULL,'Default')

SELECT COALESCE(NULL,NULL,NULL,'Primeiro','Segundo')

SELECT 2 * COALESCE(null,1)

SELECT COALESCE(TEL1,TEL2,TEL3)

-- Condicional 

SELECT IIF( 1 > 0,'Maior que zero','Menor que Zero')

Select IIF(LEN(c.descricao) > 5,'Maior que 5','Menor que 5'),c.descricao  from Categorias c