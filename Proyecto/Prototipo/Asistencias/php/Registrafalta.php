<?php
	session_start();
	require_once "conexion.php";
	$conexion=conexion();

	if (isset($_POST["idpaciente"])) {
		$idpaciente=$_POST["idpaciente"];
		
		$id_empleado=$_SESSION["id"];
		
		$sql="CALL RegistraFalta($id_empleado, $idpaciente)";
		$result=mysqli_query($conexion, $sql);
		echo $result;

		echo $idpaciente;
		echo $id_empleado;
	}
?>