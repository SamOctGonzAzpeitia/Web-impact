<?php
    include("../dbUtil.php");
    function registraEmpleado($nombre,$correo,$especialidad,$contraseña,$rol){
        $conn=connectDB();
        $sql="CALL CrearEmpleado_ROL(";
        $sql=$sql."'".$nombre."'".","."'".$correo."'".",".$especialidad.","."'".$contraseña."'".",".$rol;
        $sql=$sql.")";
        echo($sql);
        if(mysqli_query($conn,$sql)){
            echo("add new user");
        }
        disconnectDB($conn);
    }

    function queryEspecialidades(){
        $conn=connectDB();
        $sql="CALL OpcionesEspecialidades()";
        $queryResult=mysqli_query($conn,$sql);
        if(mysqli_num_rows($queryResult)>0){
            while($row=mysqli_fetch_assoc($queryResult)){
                echo "<option value=".$row["id_Especialidad"].">".$row["Descripcion"]."</option>";
            }
        }
    }

    function queryRoles(){
        $conn=connectDB();
        $sql="CALL OpcionesRoles()";
        $queryResult=mysqli_query($conn,$sql);
        if(mysqli_num_rows($queryResult)>0){
            while($row=mysqli_fetch_assoc($queryResult)){
                echo "<option value=".$row["id"].">".$row["Id_Rol"]."</option>";
            }
        }
    }
?>