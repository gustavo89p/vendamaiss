<?php
include "../conexao.php";
//recebendo do name dos imputs na tela as informações
$id = $_REQUEST['id'];
$nome = $_REQUEST['nome'];
$cep = $_REQUEST['cep'];
$estado= $_REQUEST['estado'];

$sql = "UPDATE cidade SET nome='$nome',cep='$cep', estado='$estado' WHERE id='$id' ";

$resultado = mysqli_query($conexao, $sql);

header('location:../cidade.php');

?>