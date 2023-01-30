CREATE TABLE Alunos (
    id INT PRIMARY KEY IDENTITY,
    nome  VARCHAR(80) NOT NULL,
    cpf CHAR(11) NOT NULL,
    data_nascimento DATE,
    ativo bit DEFAULT 1 ,
)