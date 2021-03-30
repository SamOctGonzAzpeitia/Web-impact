<?php
    session_start();
    
    echo($_SESSION["rol"]);

    if($_SESSION["rol"]=="Administracion"){
        include ('_head.html');
        include ('../sidebar/_sidebarA.html');
        include ('_videos.html');
        include ('_footer.html');
    }else if ($_SESSION["rol"]=="Terapeuta") {
        //cerrar sesion?
        include ('_head.html');
        include_once("../sidebar/_sidebarT.html");
        include ('_videos.html');
        include ('_footer.html');
    } else{
                include_once("./_head.html");
                include_once("./_error_rol");
    }
    
?>