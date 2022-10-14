<?php

$usuario = "root";
$senha = "";
if (isset($_POST['nome'])) {
    $conectar = new PDO('mysql:host=localhost;dbname=bdocorrencias', $usuario, $senha);
    $nome = $_POST['nome'];
    $cpf = $_POST['cpf'];
    $sexo = $_POST['sexo'];
    $descricao = $_POST['descricao'];
    $inserir = "insert into bo(nome,cpf,sexo,descricao) values ('$nome','$cpf','$sexo','$descricao')";
    $gravar = $conectar->prepare($inserir);
    $gravar->execute(array());
}