<?php
    include ("../dbUtil.php");
    
    function bulkInsert($path){
        $conn=connectDB();
        $sql="LOAD  DATA LOCAL INFILE '/var/www/royerdac99.codes/masivo/MOCK_DATA_2.csv'
        INTO TABLE Paciente
        FIELDS TERMINATED BY ','
        LINES TERMINATED BY '\n'
        IGNORE 1 ROWS
        (NombrePaciente,ApellidoPaterno,ApellidoMaterno,Domicilio,Estado,Municipio,Telefono,Correo,@FechaNacimiento,Genero,Diagnostico,Lesion,Ingreso,Reingreso,Egreso,Fotografia,Curp,ActaNacimiento,ComprobanteDomicilio,ExpedienteMedico,RecomendacionMedica,Visibilidad)
        SET FechaNacimiento = STR_TO_DATE(@FechaNacimiento, '%Y/%m/%d');";
        echo $sql;
        if(mysqli_query($conn,$sql)){
            echo("add new user");
        }
        disconnectDB($conn);
    }
    
?>