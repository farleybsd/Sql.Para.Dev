-- View

CREATE VIEW VwCursos
AS
select 
c.decricao,
ca.descricao categoria
from cursos c 
inner join Categorias ca 
      on c.categoria_id = ca.id




      select * from VwCursos

      -- Apagando uma view
      drop view VwCursos

      -- Aterando uma view 
Alter  VIEW VwCursos
AS
select 
c.decricao,
ca.descricao categoria
from cursos c 
inner join Categorias ca 
      on c.categoria_id = ca.id