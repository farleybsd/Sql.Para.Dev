-- Criar Banco de dados 
CREATE DATABASE DessenvolvedorIo;
--Deletando um banco de dados 
DROP DATABASE DessenvolvedorIo;
-- Deixando o banco para um unico usuario
ALTER DATABASE DessenvolvedorIo SET SINGLE_USER  WITH ROLLBACK IMMEDIATE;
-- Criando o banco e setando o caminho dos arquivos
CREATE DATABASE DessenvolvedorIo ON (Name = 'Dev_Mdf',Filename = 'C:\Teste.mdf')
LOG ON  (Name = 'Dev_Log',Filename = 'C:\Teste.ldf')