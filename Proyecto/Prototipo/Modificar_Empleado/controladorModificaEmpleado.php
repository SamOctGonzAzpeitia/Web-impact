<?php
    include("./modificaEmpleadoUtil.php");
    if(isset($_POST["NombreEmpleado"])&& isset($_POST["Correo"])&& isset($_POST["Especialidad"])&& isset($_POST["Password"])&& isset($_POST["rol"])&& isset($_POST["id1"])){
        $NombreEmpleado=$_POST["NombreEmpleado"];
        $Correo=$_POST["Correo"];
        $Especialidad=$_POST["Especialidad"];
        echo $_POST["flagPass"];
        if($_POST["flagPass"]==true){
            $Password=crypt($_POST["Password"],'AsuncionIAP$2020');
        }else{
            $Password=$_POST["Password"];

        }
        echo $Password;
        $rol=$_POST["rol"];
        $id1=$_POST["id1"];
        modficarEmpleado($NombreEmpleado,$Correo,$Especialidad,$Password,$rol,$id1);
    }
?>