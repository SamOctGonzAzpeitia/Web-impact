<?php
    
    require_once("ModificaPaciente.php");
    
    if(isset($_POST["id_paciente"])&& isset($_POST["nombre"]) && isset($_POST["apellidoP"]) && isset($_POST["apellidoM"])&& isset($_POST["domicilio"])&& isset($_POST["estado"])&& isset($_POST["municipio"])&& isset($_POST["tel"])&& isset($_POST["correo"])&& isset($_POST["nacimiento"])&& isset($_POST["genero"])&& isset($_POST["diagnostico"])&& isset($_POST["lesion"])&& isset($_POST["ingreso"])&& isset($_POST["dependencia"])){
        
        
        $id_paciente=$_POST["id_paciente"];
        $nombre=$_POST["nombre"];
        $apellidoP=$_POST["apellidoP"];
        $apellidoM=$_POST["apellidoM"];
        $domicilio=$_POST["domicilio"];
        $estado=$_POST["estado"];
        $municipio=$_POST["municipio"];
        $tel=$_POST["tel"];
        $correo=$_POST["correo"];
        $nacimiento=$_POST["nacimiento"];
        $genero=$_POST["genero"];
        $diagnostico = $_POST["diagnostico"];
        $lesion=$_POST["lesion"];
        $ingreso=$_POST["ingreso"];
        $reingreso=$_POST["reingreso"];
        $egreso=$_POST["egreso"];
        $dependencia=$_POST["dependencia"];
     

        
       
        modificaPaciente($id_paciente, $nombre, $apellidoP, $apellidoM, $domicilio, $estado, $municipio, $tel, $correo, $nacimiento, $genero, $diagnostico, $lesion, $ingreso, $reingreso, $egreso, $dependencia);
    }
  
?>
