<?php
$usuario="root";
$senha = "";

$conectar = new PDO('mysql:host=localhost;dbname=bdocorrencias', $usuario, $senha);
$consulta = $conectar->query('select * from bo');
$dados = array();
while($registro = $consulta->fetchAll(PDO::FETCH_ASSOC)){
   $dados = $registro;
}
echo (json_encode($dados));
?>