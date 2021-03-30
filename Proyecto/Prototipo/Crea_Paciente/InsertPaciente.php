<?php

    require_once ('util.php'); 
    

   
    $_POST["nombre"] = htmlspecialchars($_POST["nombre"]);
    $_POST["apellidoP"] = htmlspecialchars($_POST["apellidoP"]);
    $_POST["apellidoM"] = htmlspecialchars($_POST["apellidoM"]);
    $_POST["domicilio"] = htmlspecialchars($_POST["domicilio"]);
    $_POST["estado"] = htmlspecialchars($_POST["estado"]); 
    $_POST["tel"] = htmlspecialchars($_POST["tel"]);
    $_POST["correo"] = htmlspecialchars($_POST["correo"]);
    $_POST["nacimiento"] = htmlspecialchars($_POST["nacimiento"]);
    $_POST["genero"] = htmlspecialchars($_POST["genero"]);
    $_POST["diagnostico"] = htmlspecialchars($_POST["diagnostico"]);
    $_POST["lesion"] = htmlspecialchars($_POST["lesion"]);
    $_POST["ingreso"] = htmlspecialchars($_POST["ingreso"]);
    $_POST["dependencia"] = htmlspecialchars($_POST["dependencia"]);

    
    

  
    $nombre = $_POST["nombre"]; 
    $apellidoP = $_POST["apellidoP"]; 
    $apellidoM = $_POST["apellidoM"]; 
    $domicilio = $_POST["domicilio"]; 
    $telefono = $_POST["tel"];
    $fechaNacimiento = $_POST["nacimiento"];
    $genero = $_POST["genero"];  
    $diagnostico = $_POST["diagnostico"]; 
    $lesion = $_POST["lesion"];
    $ingreso = $_POST["ingreso"]; 
    $dependencia = $_POST["dependencia"]; 
    $correo = $_POST["correo"];
    $estado = $_POST["estado"];
    $municipio =$_POST["municipio"];
    $estudioSE = $_POST["estudioSE"];
    $curp = $_POST["curp"];
    $acta = $_POST["acta"];
    $comprobanteDomicilio = $_POST["comprobante"];
    $expedienteMedico = $_POST["expediente"];
    $recomendacionMedica = $_POST["recomendacion"];
   
    
    
    if(isset($_POST["nombre"]) && !empty($_POST["nombre"]) && isset($_POST["apellidoP"]) && !empty($_POST["apellidoP"]) && isset($_POST["apellidoM"]) 
    && !empty($_POST["apellidoM"]) && isset($_POST["domicilio"]) && !empty($_POST["domicilio"]) && isset($_POST["estado"]) && !empty($_POST["estado"]) && !empty($_POST["tel"]) && isset($_POST["tel"]) && !empty($_POST["correo"]) && isset($_POST["correo"]) && isset($_POST["nacimiento"]) && !empty($_POST["nacimiento"]) && isset($_POST["genero"]) && !empty($_POST["genero"]) 
    && isset($_POST["diagnostico"]) && !empty($_POST["diagnostico"]) && isset($_POST["lesion"]) && !empty($_POST["lesion"]) && isset($_POST["ingreso"]) && !empty($_POST["ingreso"]) && isset($_POST["dependencia"]) && !empty($_POST["dependencia"]))
    {
        insertPatient($nombre,$apellidoP,$apellidoM, $domicilio, $estado, $municipio, $telefono, $correo, $fechaNacimiento,$genero, $diagnostico, $lesion, $ingreso, $dependencia, $estudioSE, $curp, $acta, $comprobanteDomicilio, $expedienteMedico, $recomendacionMedica); 
    }
    
  

?>