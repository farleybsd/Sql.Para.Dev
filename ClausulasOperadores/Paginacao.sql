-- Paginacao 
select   * 
from alunos 
ORDER BY id
OFFSET 2 ROWS
FETCH FIRST 2 ROWS ONLY