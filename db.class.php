<?php

	class db{

		//host
		private $host = "ec2-50-16-201-73.compute-1.amazonaws.com";

		//usuario
		private $usuario = "vzhtrkthahvtmj";
		
		//senha
		private $senha = "1b69e85286e565ab56aa03559f9330f380c8f2197ddd6dc3229dc55596278d64";

		//banco de dados
		private $database = "dbhq5pa7kqare9";


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