<?php

    include("util.php");


  function registraDonadores($RazonSocial,$RFC,$Correo,$Telefono,$Nacimiento){
      
        $conn=connectDB();
        $sql="CALL CrearDonador('";
        $sql=$sql.$RazonSocial."','".$RFC."','".$Correo."','".$Telefono."','".$Nacimiento."'";
        $sql=$sql.")";
        echo ($sql);
        $result=mysqli_query($conn,$sql);
        disconnectDB($conn);
        echo $result;
      
    }



    










?>