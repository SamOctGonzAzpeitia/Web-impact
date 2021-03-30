<?php
    include("./registraEmpleado.php");
    if(isset($_POST["nombre"])&&isset($_POST["correo"])&&isset($_POST["especialidad"])&&isset($_POST["contrasena"])&&isset($_POST["rol"])){
        $nombre=$_POST["nombre"];
        $correo=$_POST["correo"];
        $especialidad=$_POST["especialidad"];
        $contraseña=crypt($_POST["contrasena"],'AsuncionIAP$2020');
        $rol=$_POST["rol"];

        echo($nombre.$correo.$especialidad.$contraseña.$rol);
        registraEmpleado($nombre,$correo,$especialidad,$contraseña,$rol);
    }
?>