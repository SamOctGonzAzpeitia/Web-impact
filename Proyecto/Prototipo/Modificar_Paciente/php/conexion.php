<?php

	function conexion(){
		
        $servername="localhost";
        $username="u364097993_Administrador";
        $password="Matu$2020";
        $dbname="u364097993_Asuncion";

		$conexion=mysqli_connect($servername,$username,$password,$dbname);

			return $conexion;
	

		if(!$conexion)
        {
            die("Connection failed: " . mysqli_connect_error()); 
        }

		return $conexion;
		

	}


    function closeDb($mysql)
    {
        mysqli_close($mysql); 
    }
?>