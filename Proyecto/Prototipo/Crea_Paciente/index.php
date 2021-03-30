<?php
  session_start();
  if($_SESSION['rol'] == 'Administracion')
  {
    include ('_header.html'); 
    include ('../sidebar/index.php');
    include ('_RegistrarPaciente.html'); 
    include ('_footer.html');
    }
    else {
        echo "ocurrio un error, contacte al administrador";
    }
?>



    

    
