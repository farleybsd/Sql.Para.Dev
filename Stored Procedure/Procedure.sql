-- Stored Procedure
/*
    * Nao e usda no Select nem uma Query
/*

Create PROCEDURE PesquisarCategoriaPorId(@id int)
AS
BEGIN 
    select * from categorias where id=@id
END


EXEC dbo.PesquisarCategoriaPorId @id=1

EXEC dbo.PesquisarCategoriaPorId @id=1,@novoParametro=22


-- PersistindoDados

Create PROCEDURE PersistindoDadosEmCategoria(@descricao varchar(255))
AS
BEGIN 
    insert into categorias(descricao,cadastrado_em)
        values(@descricao,getdate())
END


exec dbo.PersistindoDadosEmCategoria @descricao='Categoria Procedure'


-- Apagando Procedure

drop procedure PersistindoDadosEmCategoria



-- fazendo if

Create PROCEDURE PersistindoDadosEmCategoria(@descricao varchar(255))
AS
BEGIN 
    if(@descricao is null)
        begin 
            RAISERROR('DESCRICAO NAO E VALIDA ',16,1)
            RETURN
        end
    insert into categorias(descricao,cadastrado_em)
        values(@descricao,getdate())
END


exec dbo.PersistindoDadosEmCategoria @descricao=NULL