<?php

	require_once ("conexion.php");
	

	function buscar($consulta){
		
		$conexion=conexion();
		

		$q = $conexion->real_escape_string($consulta);
		$sql = "SELECT D.id_Donador, D.RazonSocial, D.RFC, D.Correo, D.Telefono, D.Nacimiento FROM Donador D WHERE D.Visibilidad=1 and D.RazonSocial LIKE '%".$q."%'";

		$result=mysqli_query($conexion, $sql);

		return $result;
	

	}


?>