<?php
    include("dbUtil.php");

    function getPacientes(){
        
        $conn=connectDB();
        $sql="CALL OpcionesPaciente()";
        $result=mysqli_query($conn,$sql);
        disconnectDB($conn);
        if(mysqli_num_rows($result)>0){
            while($row=mysqli_fetch_assoc($result)){
                echo "<option value=".$row["id"].">".$row["nombre"]." ".$row["Paterno"]." ".$row["Materno"]."</option>";
            }
        }
    }

    function registraReporte($NumeroPaciente,$Valoracion,$Terapia,$Tratamiento,$Avances,$id){
        
        $conn=connectDB();
        $sql="CALL CrearReporte(";
        $sql=$sql.$NumeroPaciente.",'".$Valoracion."','".$Terapia."','".$Tratamiento."','".$Avances."',".$id;
        $sql=$sql.")";
        echo ($sql);
        $result=mysqli_query($conn,$sql);
        disconnectDB($conn);
        echo $result;
    }
?>