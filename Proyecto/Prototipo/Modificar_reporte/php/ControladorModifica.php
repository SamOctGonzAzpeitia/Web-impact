<?php
    
    require_once("Modifica_reporte.php");

    
    if(isset($_POST["NumReporte"])&& isset($_POST["NumEmpleado"]) && isset($_POST["NumPaciente"]) && isset($_POST["Valoracion"])&& isset($_POST["Terapia"])&& isset($_POST["Tratamiento"])&& isset($_POST["Avances"])&& isset($_POST["Fecha"])){
        
        
        
        $NumReporte=$_POST["NumReporte"];
        $NumEmpleado=$_POST["NumEmpleado"];
        $NumPaciente=$_POST["NumPaciente"];
        $Valoracion=$_POST["Valoracion"];
        $Terapia=$_POST["Terapia"];
        $Tratamiento=$_POST["Tratamiento"];
        $Avances=$_POST["Avances"];
        $Fecha=$_POST["Fecha"];


       
        modificaReporte($NumReporte, $NumEmpleado, $NumPaciente, $Valoracion, $Terapia, $Tratamiento, $Avances, $Fecha);
    }
?>