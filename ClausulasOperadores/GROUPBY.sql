SELECT 
cidade,
estado,
COUNT(*)
from alunos
GROUP BY
cidade,
estado