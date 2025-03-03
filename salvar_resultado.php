<?php
// Inclui o arquivo de configuração do banco de dados
require 'config.php';

// Recebe os dados enviados pelo front-end (via JSON)
$data = json_decode(file_get_contents('php://input'), true);
//print_r($data);

// Extrai os dados do array
$ra = $data['ra']; // RA do aluno
$nome = $data['nome']; // Nome do aluno
$materia = $data['materia']; // Matéria do quiz
$acertos = $data['acertos']; // Número de acertos
$erros = $data['erros']; // Número de erros
$desempenho = $data['desempenho']; // Porcentagem de desempenho
$notaFinal = $data['notaFinal']; // Nota final

try {
    // Verifica se o aluno já existe
    $stmt = $pdo->prepare('SELECT ra FROM alunos WHERE ra = ?');
    $stmt->execute([$ra]);
    $alunoExistente = $stmt->fetch();

    if (!$alunoExistente) {
        // Insere o aluno na tabela 'alunos' (com RA e nome)
        $stmt = $pdo->prepare('INSERT INTO alunos (ra, nome) VALUES (?, ?)');
        $stmt->execute([$ra, $nome]);
    }

    // Insere os resultados na tabela 'resultados' (usando o RA como chave estrangeira)
    $stmt = $pdo->prepare('INSERT INTO resultados (aluno_id, materia, acertos, erros, desempenho, nota_final) VALUES (?, ?, ?, ?, ?, ?)');
    $stmt->execute([$ra, $materia, $acertos, $erros, $desempenho, $notaFinal]);

    // Retorna uma mensagem de sucesso para o front-end
    echo json_encode(['status' => 'success', 'message' => 'Resultado salvo com sucesso!']);
} catch (PDOException $e) {
    // Retorna uma mensagem de erro caso algo dê errado
    echo json_encode(['status' => 'error', 'message' => 'Erro ao salvar resultado: ' . $e->getMessage()]);
}