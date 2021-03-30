<?php
  session_start();
  if($_SESSION['rol'] == 'Administracion')
  {
    include("_head.html");
    include("_navbar.html");
    include("_empleado.html");
    include("_footer.html");
  }
  else {
    echo "ocurrio un error, contacte al administrador";
  }

?>