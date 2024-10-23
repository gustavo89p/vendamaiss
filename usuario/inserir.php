<?php
include '../conexao.php';

//recebendo os dados do front-end
$NOME = $_REQUEST['nome'];
$cidade = $_REQUEST['estado'];
$cep = $_REQUEST['cep'];



$sql ="INSERT INTO cidade(nome , estado, cep) VALUES ('$NOME','$estado','$cep')";

//executar código sql
$resultado = mysqli_query($conexao,$sql);

header("location: ../cidade.php");



?>