<?php
	
	session_start();
	
	require_once("db.class.php");

	$id_usuario = $_POST['id_usuario'];
	$usuario = $_POST['usuario'];
	$senha = md5($_POST['senha']);

	$sql = " SELECT id, usuario, email FROM usuarios WHERE usuario = '$usuario' AND senha = '$senha' ";

	$objDB = new db();
	$link = $objDB->conecta_mysql();

	$resultado_id = mysqli_query($link, $sql);

	if($resultado_id){

		$dados_usuario = mysqli_fetch_array($resultado_id);
		
		if (isset($dados_usuario['usuario'])){

			$_SESSION['id_usuario'] = $dados_usuario['id'];
			$_SESSION['usuario'] = $dados_usuario['usuario'];
			$_SESSION['email'] = $dados_usuario['email'];

			header('Location: home.php');

		}else{

			header('Location: index.php?erro=1');
		}

	}else{

		echo "Eroo na execução da consulta, por favor entrar em contato com o admin";

	}

	

	

?>