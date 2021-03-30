<?php
    
    require_once("Modifica_donador.php");

    
    if(isset($_POST["id_donador"])&& isset($_POST["RazonSocial"])&& isset($_POST["RFC"])&& isset($_POST["Correo"])&& isset($_POST["Telefono"])&& isset($_POST["Fecha"])){
        
        

        $id_donador=$_POST["id_donador"];
        $RazonSocial=$_POST["RazonSocial"];
        $RFC=$_POST["RFC"];
        $Correo=$_POST["Correo"];
        $Telefono=$_POST["Telefono"];
        $Fecha=$_POST["Fecha"];

       
        modificaDonador($id_donador, $RazonSocial, $RFC, $Correo, $Telefono, $Fecha);
    }
?>