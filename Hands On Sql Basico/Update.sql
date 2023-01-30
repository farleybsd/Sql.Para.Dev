Select * from alunos 

update alunos
set data_nascimento = GETDATE(),
ativo = 1
where 
id =3