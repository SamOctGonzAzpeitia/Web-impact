<?php

include_once 'conexion.php';

$idMunicipio = $_GET["municipio"];

if(isset($_GET["estado"])){
    $conn = conexion(); 

    $idEstado =  $_GET["estado"]; 
   

    $resultado ="";
   
    echo "municipio: " . $idMunicipio;
    $consulta = "CALL OpcionesMunicipio('$idEstado');"; 
    
    
    $resultados_consulta = $conn->query($consulta); 


        while($row = mysqli_fetch_array($resultados_consulta, MYSQLI_BOTH))
        {
            $resultado .= '<option value="'.$row["idMunicipio"].'"'; 
            $resultado .= $idMunicipio == $row["idMunicipio"] ? ' selected':'';
            $resultado .= '>'.$row["Municipio"].'</option>';
            
        }
        echo $resultado;

        mysqli_free_result($resultados_consulta);  // liberar memoria

        closeDb($conn); 
        


}

?>