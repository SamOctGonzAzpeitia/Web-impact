<?php
    
    require_once("Modifica_donaciones.php");

    
    if(isset($_POST["Descripcion"])&& isset($_POST["id_donador"])){
        
        $Descripcion=$_POST["Descripcion"];
        $id_donador=$_POST["id_donador"];

        modificarDonaciones($Descripcion,$id_donador);
    }
?>