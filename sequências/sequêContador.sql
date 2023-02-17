-- Criando um Contador 
CREATE SEQUENCE MinhaSequencia
AS INT 
START WITH 6
INCREMENT BY 1
MINVALUE 6
MAXVALUE 1000
NO CYCLE


SELECT NEXT VALUE FOR  MinhaSequencia

CREATE TABLE TabelaTeste(
    id int DEFAULT NEXT value for MinhaSequencia,
    descricao VARCHAR(20)
)

INSERT into TabelaTeste(descricao)
        VALUES('Teste 01 ')

select * from TabelaTeste