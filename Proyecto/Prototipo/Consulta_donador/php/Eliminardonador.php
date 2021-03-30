<?php
	require_once "conexion.php";
	$conexion=conexion();

	


	if (isset($_POST["id"])) {
		$id=$_POST["id"];
		$sql="CALL EliminarDonador($id)";
		echo $result=mysqli_query($conexion, $sql);
	}

	
	


?>