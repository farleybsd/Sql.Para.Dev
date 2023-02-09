

select decricao from cursos where id=1
UNION
select descricao from Categorias where id=2
UNION
select 'Valor Dinamico'