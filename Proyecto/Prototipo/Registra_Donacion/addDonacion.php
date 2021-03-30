<?php

require_once 'util.php'; 

$_POST["donador"] = htmlspecialchars($_POST["donador"]);
$_POST["descripcionDonacion"] = htmlspecialchars($_POST["descripcionDonacion"]); 

$donador = $_POST['donador'];
$descripcionDonacion = $_POST['descripcionDonacion'];
$fechaDonacion = $_POST['fechaDonacion'];



if(isset($donador) && !empty($donador) && isset($descripcionDonacion) && !empty($descripcionDonacion) && isset($fechaDonacion) && !empty($fechaDonacion))
{
    echo "Entro";
    addDonacion($donador,$descripcionDonacion,$fechaDonacion);
    
}
?>  