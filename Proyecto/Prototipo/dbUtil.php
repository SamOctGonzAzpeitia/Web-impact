<?php
    function connectDB(){
        $servername="localhost";
        $username="u364097993_Administrador";
        $password="Matu$2020";
        $dbname="u364097993_Asuncion";

        $connection=mysqli_connect($servername,$username,$password,$dbname);
        if(!$connection){
            die("Connection failed: ".mysqli_connect_error());
        }
        return $connection;
    }
    function  disconnectDB($connection){
        mysqli_close($connection);
    }
?>
