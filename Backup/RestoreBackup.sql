use master;

-- Restaurando Backup

RESTORE Database DessenvolvedorIo
FROM DISK = '/var/opt/mssql/data/AulaBackup.back'
WITH REPLACE 