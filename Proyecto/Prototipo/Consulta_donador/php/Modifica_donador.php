<?php
	
	require_once('conexion.php');
	
	function querydonador($id){
		$conexion = conexion();
		
		$sql="CALL GetdonadorById(";
		$sql=$sql.$id;
		$sql=$sql.")";

		$result = mysqli_query($conexion, $sql);


		while($row=mysqli_fetch_assoc($result)){
			echo $row["id_Donador"].",".$row["RazonSocial"].",".$row["RFC"].",".$row["Correo"].",".$row["Telefono"].",".$row["Nacimiento"];
		}
	}

	function modificaDonador($id_donador, $RazonSocial, $RFC, $Correo, $Telefono, $Fecha){

		

		$conexion = conexion();
		$sql="CALL UpdateDonador(".$id_donador.", '".$RazonSocial."', '".$RFC."', '".$Correo."', '".$Telefono."', '".$Fecha."')";

		var_dump($sql);

		echo$result = mysqli_query($conexion, $sql);

		
	}



?>