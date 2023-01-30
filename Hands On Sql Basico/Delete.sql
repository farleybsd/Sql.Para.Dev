select * from alunos 

delete Alunos
where id = 2

-- Limpando  todos os dados da tabela mas mantendo a tabela
TRUNCATE table alunos 

-- Deletando por quantidade
delete top (12)  Alunos

-- Deletando por porcentagem 
delete top (1) PERCENT  Alunos