<?php

	
	require_once("db.class.php");


	$sql = " SELECT * FROM usuarios ";

	$objDB = new db();
	$link = $objDB->conecta_mysql();

	$resultado_id = mysqli_query($link, $sql);

	if($resultado_id){

		$dados_usuario = array();
		while($linha = mysqli_fetch_array($resultado_id, MYSQLI_ASSOC)){

			$dados_usuario[] = $linha;
		}

		foreach ($dados_usuario as $usuario) {
			var_dump($usuario);
			echo "<br/><br/>";
		}

	}else{

		echo "Eroo na execução da consulta, por favor entrar em contato com o admin";

	}

?>