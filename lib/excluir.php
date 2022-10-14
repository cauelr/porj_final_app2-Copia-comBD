<?php

$usuario = "root";
$senha = "";
if (isset($_POST['nome'])) {
    $conectar = new PDO('mysql:host=localhost;dbname=bdocorrencias', $usuario, $senha);
    $id = $_POST['id'];
    $inserir = "DELETE FROM `bo` WHERE id='$id'";
    $gravar = $conectar->prepare($inserir);
    $gravar->execute(array());
}