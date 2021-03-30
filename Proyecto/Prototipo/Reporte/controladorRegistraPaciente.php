<?php
    session_start();
    include("registraPacientesUtil.php");

    if(isset($_POST["NumeroPaciente"])&&isset($_POST["Valoracion"])&&isset($_POST["Terapia"])&&isset($_POST["Tratamiento"])&&isset($_POST["Avances"])){
        
        $NumeroPaciente=$_POST["NumeroPaciente"];
        $Valoracion=$_POST["Valoracion"];
        $Terapia=$_POST["Terapia"];
        $Tratamiento=$_POST["Tratamiento"];
        $Avances=$_POST["Avances"];
        
        registraReporte($NumeroPaciente,$Valoracion,$Terapia,$Tratamiento,$Avances,$_SESSION["id"]);
        //registraReporte($NumeroPaciente,2,$Valoracion,$Terapia,$Tratamiento,$Avances);
    }

?>