<?php

include_once 'util.php';

if(isset($_GET["estado"])){
    $conn = connectDb(); 
    echo "Si SIRVE";

    $idEstado =  $_GET["estado"]; 
    $consulta = "CALL OpcionesMunicipio('$idEstado');"; 

    $resultados_consulta = $conn->query($consulta); 

        while($row = mysqli_fetch_array($resultados_consulta, MYSQLI_BOTH))
        {
            $resultado .= '<option value="'.$row["idMunicipio"].'">'.$row["Municipio"].'</option>'; 
            
        }
        echo $resultado;

        mysqli_free_result($resultados_consulta);  // liberar memoria

        closeDb($conn); 
        


}

?>