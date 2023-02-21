-- SEM CTE
SELECT
prod.descricao,
 i.produto_id,
sum(i.quantidade)  total FROM [dbo].[pedido_itens] I
INNER 
    JOIN PEDIDOS P ON I.pedido_id = P.id
inner 
    join produtos prod on prod.id = i.produto_id
GROUP by prod.descricao,i.produto_id
ORDER by i.produto_id


-- COM CTE
WITH CONSULTA (CODIGO,quantidade) AS (
SELECT
i.produto_id,
sum(i.quantidade)  total FROM [dbo].[pedido_itens] I
INNER 
    JOIN PEDIDOS P ON I.pedido_id = P.id
GROUP by i.produto_id

)

SELECT prod.descricao,C.CODIGO,c.quantidade FROM CONSULTA C
INNER JOIN PRODUTOS PROD ON PROD.id = C.CODIGO
ORDER by c.CODIGO