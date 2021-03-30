<?php
    include ("./util.php");
    //echo("inicion controller");
    if(isset($_POST["path"])){
        //echo("entro en el path set");
        $path=$_POST["path"];
        bulkInsert($path);
    }
?> 