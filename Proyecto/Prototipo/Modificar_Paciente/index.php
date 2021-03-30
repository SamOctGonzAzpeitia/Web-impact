<?php
  session_start();
  if($_SESSION['rol'] == 'Administracion')
  {
	include('_header.html');
	include('_main.html');
	include('../sidebar/_sidebarA.html');
	include('_footer.html');
  }
  else {
    echo "ocurrio un error, contacte al administrador";
  }

?>