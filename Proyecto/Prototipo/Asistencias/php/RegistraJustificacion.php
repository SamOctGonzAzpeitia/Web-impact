<?php
	
	session_start();
	require_once "conexion.php";
	$conexion=conexion();

	if (isset($_POST["idpaciente"])) {
		$idpaciente=$_POST["idpaciente"];
		
		$sql="CALL JustificarFalta($idpaciente)";
		$result=mysqli_query($conexion, $sql);
		echo $result;

		echo $idpaciente;
	}
?>
