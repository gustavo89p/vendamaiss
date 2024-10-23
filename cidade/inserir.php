<?php
include '../conexao.php';

//recebendo os dados do front-end
$NOME = $_REQUEST['nome'];
$cpf = $_REQUEST['cpf'];
$senha = $_REQUEST['senha'];

echo " testando: $NOME $cpf $senha";

$sql ="INSERT INTO usuario(nome , cpf, senha) VALUES ('$NOME','$cpf','$senha')";

//executar código sql
$resultado = mysqli_query($conexao,$sql);

header("location: ../principal.php");



?>