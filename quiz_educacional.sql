CREATE DATABASE quiz_educacional;
USE quiz_educacional;
CREATE TABLE alunos (
    ra VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
    
);

CREATE TABLE resultados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    aluno_id VARCHAR(20),
    materia VARCHAR(50) NOT NULL,
    acertos INT NOT NULL,
    erros INT NOT NULL,
    desempenho DECIMAL(5, 2) NOT NULL,
    nota_final DECIMAL(5, 2) NOT NULL,
    data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (aluno_id) REFERENCES alunos(ra)
);

