use DessenvolvedorIo
-- Backup Full
BACKUP DATABASE DessenvolvedorIo
TO DISK = '/var/opt/mssql/data/AulaBackup.back'
WITH INIT,
NAME ='Backup Banco de Dados'  


-- Backup Diferencial
BACKUP DATABASE DessenvolvedorIo
TO DISK = '/var/opt/mssql/data/AulaBackup01.back'
WITH DIFFERENTIAL,
NAME ='Backup Banco de Dados -Diferencial ' 