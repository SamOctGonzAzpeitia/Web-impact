<?php
	
	require_once('conexion.php');
	
	function querydonaciones($id){
        
		$conexion = conexion();
		
        
		$sql="CALL GetdonativosById(";
		$sql=$sql.$id;
		$sql=$sql.")";
        
        
		$result = mysqli_query($conexion, $sql);

       // echo $sql;

        if(mysqli_num_rows($result)>0){
        
		while($row=mysqli_fetch_assoc($result)){
            
            echo $row["Descripcion"].",".$row["NumeroDonativo"];
            
		 }
        }else{
            
            echo'no hay registro';
        }
	}


	function modificarDonaciones($Descripcion,$id_donador){

		$conexion = conexion();
        
        $sql="CALL UpdateDonativos('".$Descripcion."',".$id_donador.")";
        
        var_dump($sql);

		echo $result = mysqli_query($conexion, $sql);

		
	}



?>