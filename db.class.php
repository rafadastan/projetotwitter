<?php

	class db{

		//host
		private $host = "localhost";

		//usuario
		private $usuario = "id5527624_raphael";
		
		//senha
		private $senha = "B0s0n@3865Higgs";

		//banco de dados
		private $database = "id5527624_twisteer";


		public function conecta_mysql(){
			//criar a conexao
			$con = mysqli_connect($this->host, $this->usuario, $this->senha, $this->database);

			//ajustar o charset de cominicação entre a aplicação e o banco de dados
			mysqli_set_charset($con, 'utf8');

			//verificar se houve erro de conexão
			if(mysqli_connect_errno()){

				echo "Erro ao tentar se conectar com o BD Mysql: ".mysqli_connect_error();
			}

			return $con; 

		}

	}

?>