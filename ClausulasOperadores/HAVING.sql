-- Trabalha em cima do resultado do GroupBy

SELECT 
cidade,estado,COUNT(*) total
from alunos
GROUP BY
cidade,estado
HAVING COUNT(*)  > 1