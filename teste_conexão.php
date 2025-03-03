<?php
require 'config.php';

try {
    $stmt = $pdo->query('SELECT 1');
    echo "Conexão com o banco de dados funcionando!";
} catch (PDOException $e) {
    echo "Erro na conexão com o banco de dados: " . $e->getMessage();
}
?>