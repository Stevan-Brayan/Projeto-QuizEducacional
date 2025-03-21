<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *'); // Permite acesso de qualquer origem (apenas para desenvolvimento)

$servername = "localhost";
$username = "root";
$password = ""; 
$dbname = "quiz_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM resultados";
$result = $conn->query($sql);

$data = [];

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

echo json_encode($data);

$conn->close();
?>