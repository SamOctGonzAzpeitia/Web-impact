<?php
    include("../dbUtil.php");
    function getEmpleado($id){
        $conn=connectDB();
        $sql="CALL getEmpleadoById(";
        $sql=$sql.$id;
        $sql=$sql.")";
        $queryResult=mysqli_query($conn,$sql);
        if(mysqli_num_rows($queryResult)>0){
            while($row=mysqli_fetch_assoc($queryResult)){
                echo $row["NombreEmpleado"].",".$row["Correo"].",".$row["id_Especialidad"].",".$row["Password"].",".$row["id"];
            }
        }
    }

    function modficarEmpleado($NombreEmpleado,$Correo,$Especialidad,$Password,$rol,$id1){
        $conn=connectDB();
        $sql="CALL UpdateEmpleadoById('";
        $sql=$sql.$NombreEmpleado."','".$Correo."',".$Especialidad.",'".$Password."','".$rol."',".$id1;
        $sql=$sql.")";
        echo($sql);
        $queryResult=mysqli_query($conn,$sql);
    }
?>