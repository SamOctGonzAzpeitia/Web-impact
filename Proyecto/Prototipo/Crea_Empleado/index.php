<?php
  session_start();
  if($_SESSION['rol'] == 'Administracion')
  {
    include ("./_head.html");
    include ('../sidebar/index.php');
    include ("./_form.html");
    include ("./_footer.html");
    }
    else {
        echo "ocurrio un error, contacte al administrador";
    }
?>