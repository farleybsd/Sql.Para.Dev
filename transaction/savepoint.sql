-- Rollback de um determinado Ponto Save Point

Select * from [dbo].[Categorias]

BEGIN TRANSACTION
INSERT into Categorias(descricao,cadastrado_em) VALUES('Categoria Nova 1',GETDATE())
INSERT into Categorias(descricao,cadastrado_em) VALUES('Categoria Nova 2',GETDATE())
GO
SAVE TRANSACTION AtualizacaoPoint
UPDATE Categorias set descricao = 'Aplicacao WEB' where descricao = 'WEB' -- desfazer
GO
ROLLBACK TRANSACTION AtualizacaoPoint
COMMIT