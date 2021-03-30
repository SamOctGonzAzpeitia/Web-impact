<?php
    

    include("registraDonadoresUtil.php");


    $_POST["RazonSocial"] = htmlspecialchars($_POST["RazonSocial"]);
    $_POST["RFC"] = htmlspecialchars($_POST["RFC"]); 
    $_POST["Correo"] = htmlspecialchars($_POST["Correo"]);
    $_POST["Telefono"] = htmlspecialchars($_POST["Telefono"]); 
    $_POST["Nacimiento"] = htmlspecialchars($_POST["Nacimiento"]);


    $RazonSocial = $_POST['RazonSocial'];
    $RFC = $_POST['RFC'];
    $Correo = $_POST['Correo'];
    $Telefono = $_POST['Telefono'];
    $Nacimiento = $_POST['Nacimiento'];



    if(isset($RazonSocial)&& !empty($RazonSocial)&& isset($RFC)&& !empty($RFC)&& isset($Correo)&& !empty($Correo)&& isset($Telefono)&& !empty($Telefono)&&isset($Nacimiento)&& !empty($Nacimiento) ){
        
        $RazonSocial=$_POST["RazonSocial"];
        $RFC=$_POST["RFC"];
        $Correo=$_POST["Correo"];
        $Telefono=$_POST["Telefono"];
        $Nacimiento=$_POST["Nacimiento"];
        
        echo "Entro";
        registraDonadores($RazonSocial,$RFC,$Correo,$Telefono,$Nacimiento);
        //registraDonadores(,$_SESSION["RazonSocial"],$RFC,$Correo,$Telefono,$Fecha);
    }


 
?>



