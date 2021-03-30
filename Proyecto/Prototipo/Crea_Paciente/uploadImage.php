<?php

require_once("util.php"); 


$lastPaciente = queryLastPaciente();
$lastPaciente += 1;


if(isset($_FILES['file']['name'])){


    /* Getting file name */
    $filename = $_FILES['file']['name'];
    
 
    /* Location */
    $location = "./imagenes/".$filename;
    $imageFileType = pathinfo($location,PATHINFO_EXTENSION);
    $imageFileType = strtolower($imageFileType);
 
    /* Valid extensions */
    $valid_extensions = array("jpg","jpeg","png");
 
    $response = 0;
    /* Check file extension */
    if(in_array(strtolower($imageFileType), $valid_extensions)) {
        
       /* Upload file */
       if(move_uploaded_file($_FILES['file']['tmp_name'],$location)){
          $response = $location;
       }
    }
    rename($location,"./imagenes/".$lastPaciente."_estudioSocioEconomico".".".$imageFileType);
    $response = "./imagenes/".$lastPaciente."_estudioSocioEconomico".".".$imageFileType;
    echo $response;
    exit;
 }

 if(isset($_FILES['curp']['name'])){


   /* Getting file name */
   $curp = $_FILES['curp']['name'];
   

   /* Location */
   $location = "./imagenes/".$curp;
   $imageFileType = pathinfo($location,PATHINFO_EXTENSION);
   $imageFileType = strtolower($imageFileType);

   /* Valid extensions */
   $valid_extensions = array("jpg","jpeg","png");

   $response = 0;
   /* Check file extension */
   if(in_array(strtolower($imageFileType), $valid_extensions)) {
       
      /* Upload file */
      if(move_uploaded_file($_FILES['curp']['tmp_name'],$location)){
         $response = $location;
      }
   }
   rename($location,"./imagenes/".$lastPaciente."_curp".".".$imageFileType);
   $response = "./imagenes/".$lastPaciente."_curp".".".$imageFileType;
   echo $response;
   exit;
}

if(isset($_FILES['acta']['name'])){


   /* Getting file name */
   $acta = $_FILES['acta']['name'];
   

   /* Location */
   $location = "./imagenes/".$acta;
   $imageFileType = pathinfo($location,PATHINFO_EXTENSION);
   $imageFileType = strtolower($imageFileType);

   /* Valid extensions */
   $valid_extensions = array("jpg","jpeg","png");

   $response = 0;
   /* Check file extension */
   if(in_array(strtolower($imageFileType), $valid_extensions)) {
       
      /* Upload file */
      if(move_uploaded_file($_FILES['acta']['tmp_name'],$location)){
         $response = $location;
      }
   }
   rename($location,"./imagenes/".$lastPaciente."_ActaDeNacimiento".".".$imageFileType);
   $response = "./imagenes/".$lastPaciente."_ActaDeNacimiento".".".$imageFileType;
   echo $response;
   exit;
}

if(isset($_FILES['comprobante']['name'])){


   /* Getting file name */
   $comprobante = $_FILES['comprobante']['name'];
   

   /* Location */
   $location = "./imagenes/".$comprobante;
   $imageFileType = pathinfo($location,PATHINFO_EXTENSION);
   $imageFileType = strtolower($imageFileType);

   /* Valid extensions */
   $valid_extensions = array("jpg","jpeg","png");

   $response = 0;
   /* Check file extension */
   if(in_array(strtolower($imageFileType), $valid_extensions)) {
       
      /* Upload file */
      if(move_uploaded_file($_FILES['comprobante']['tmp_name'],$location)){
         $response = $location;
      }
   }
   rename($location,"./imagenes/".$lastPaciente."_ComprobanteDomicilio".".".$imageFileType);
   $response = "./imagenes/".$lastPaciente."_ComprobanteDomicilio".".".$imageFileType;
   echo $response;
   exit;
}


if(isset($_FILES['expediente']['name'])){


   /* Getting file name */
   $expediente = $_FILES['expediente']['name'];
   

   /* Location */
   $location = "./imagenes/".$expediente;
   $imageFileType = pathinfo($location,PATHINFO_EXTENSION);
   $imageFileType = strtolower($imageFileType);

   /* Valid extensions */
   $valid_extensions = array("jpg","jpeg","png");

   $response = 0;
   /* Check file extension */
   if(in_array(strtolower($imageFileType), $valid_extensions)) {
       
      /* Upload file */
      if(move_uploaded_file($_FILES['expediente']['tmp_name'],$location)){
         $response = $location;
      }
   }
   rename($location,"./imagenes/".$lastPaciente."_ExpedienteClinico".".".$imageFileType);
   $response = "./imagenes/".$lastPaciente."_ExpedienteClinico".".".$imageFileType;
   echo $response;
   exit;
}

if(isset($_FILES['recomendacion']['name'])){


   /* Getting file name */
   $recomendacion = $_FILES['recomendacion']['name'];
   

   /* Location */
   $location = "./imagenes/".$recomendacion;
   $imageFileType = pathinfo($location,PATHINFO_EXTENSION);
   $imageFileType = strtolower($imageFileType);

   /* Valid extensions */
   $valid_extensions = array("jpg","jpeg","png");

   $response = 0;
   /* Check file extension */
   if(in_array(strtolower($imageFileType), $valid_extensions)) {
       
      /* Upload file */
      if(move_uploaded_file($_FILES['recomendacion']['tmp_name'],$location)){
         $response = $location;
      }
   }
   rename($location,"./imagenes/".$lastPaciente."_RecomendacionMedica".".".$imageFileType);
   $response = "./imagenes/".$lastPaciente."_RecomendacionMedica".".".$imageFileType;
   echo $response;
   exit;
}



?>


