SET STATISTICS IO, TIME ON 

SELECT COUNT(*) FROM Categorias

SELECT SUM(s.row_count) FROM sys.dm_db_partition_stats s 
where OBJECT_NAME(object_id)='Categorias' 
and s.index_id in(0,1)