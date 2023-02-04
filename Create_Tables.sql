-- Alunos 
CREATE TABLE alunos
(
    id int PRIMARY KEY IDENTITY,
    nome VARCHAR(80) NOT NULL,
    cpf VARCHAR(11)  NOT NULL,
    cidade VARCHAR(60) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    data_nascimento DATE,
    ativo BIT DEFAULT 1
);


-- Categorias 
CREATE TABLE Categorias
(
    id INT PRIMARY KEY IDENTITY,
    descricao VARCHAR(80) NOT NULL,
    cadastrado_em DATETIME DEFAULT GETDATE()
);

-- Curso
CREATE TABLE cursos
(
    id INT PRIMARY key IDENTITY,
    categoria_id INT NOT NULL , -- Chave local para categoria 
    decricao VARCHAR(80) NOT NULL,
    total_horas INT NOT NULL,
    valor DECIMAL(12,2),
    cadastrado_em DATETIME DEFAULT GETDATE(),
    ativo bit DEFAULT 1,
    CONSTRAINT fk_categoria_id FOREIGN KEY (categoria_id) REFERENCES Categorias(id) -- Relacionameto com Categorias
);

-- Tabela Associativa AlunosCursos N:N
CREATE TABLE alunos_cursos
(
    aluno_id INT NOT NULL, -- Chave local para Aluno 
    curso_id INT NOT NULL, -- Chave local para Curso 
    cadastrado_em DATETIME DEFAULT GETDATE(),
    CONSTRAINT pk_Alunos_Cursos PRIMARY KEY(aluno_id,curso_id),          -- Chave Primaria Composta id e composto por mais de um campo
    CONSTRAINT fk_aluno_id FOREIGN KEY (aluno_id) REFERENCES alunos(id), -- Relacionameto com Alunos
    CONSTRAINT fk_curso_id FOREIGN KEY (curso_id) REFERENCES cursos(id)  -- Relacionameto com Cursos
);

-- Insert Aluno
INSERT INTO alunos(nome,cpf,cidade,estado,data_nascimento)
    VALUES
        ( 'RAFAEL','00000000001','Aracaju','Se','2000-01-01'),
        ('Eduardo','00000000002','Sao Paulo','Sp','2000-01-02'),
        ('Bruno','00000000003','Sao Paulo','Sp','2000-01-03'),
        ('Tiago','00000000004','Rio de Janeiro','Rj','2000-01-04'),
        ('Heloysa','00000000005','Aracaju','Se','2000-01-05');

-- Insert Categoria
 INSERT INTO Categorias(descricao) VALUES ('ACESSO A DADOS'),('SEGURANCA'),('WEB');
    
 -- Insert Cursos
 INSERT INTO cursos(decricao,categoria_id,total_horas,valor)
        VALUES
        ('EF Core',1,17,300),
        ('Sql Sever',1,5,200),
        ('Asp.Net Core Enterprise',3,5,200),
        ('Fundamentos de Indetity 4',2,5,200);

-- Insert Aluno no Curso
INSERT INTO alunos_cursos(aluno_id,curso_id)
VALUES
    (1,1),
    (1,2),
    (2,3),
    (3,1),
    (4,4),
    (5,1),
    (5,2),
    (5,3);