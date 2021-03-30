<?php
    include("modificaEmpleadoUtil.php");
    if(isset($_GET["id"])){
        //echo "posteado";
        $id=$_GET["id"];
        getEmpleado($id);
    }
?>
