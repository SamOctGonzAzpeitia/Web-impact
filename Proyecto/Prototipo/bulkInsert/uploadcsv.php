<?php
    if(isset($_FILES['file']['name'])){


        /* Getting file name */
        $filename = $_FILES['file']['name'];
        
     
        /* Location */
        $location = "../../../../masivo/".$filename;
        $imageFileType = pathinfo($location,PATHINFO_EXTENSION);
        $imageFileType = strtolower($imageFileType);
     
        /* Valid extensions */
        $valid_extensions = array("csv");
     
        $response = 0;
        /* Check file extension */
        if(in_array(strtolower($imageFileType), $valid_extensions)) {
            
           /* Upload file */
           if(move_uploaded_file($_FILES['file']['tmp_name'],$location)){
              $response = $location;
           }
        }
        rename($location,"../../../../masivo/"."_masivo".".".$imageFileType);
        $response = "../../../../masivo/"."_masivo".".".$imageFileType;
        echo $response;
        exit;
     }
?>