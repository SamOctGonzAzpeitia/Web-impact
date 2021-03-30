<?php
	
	require_once('Modifica_donaciones.php');


	if(isset($_GET['id'])){
        
		$id=$_GET['id'];
        
		echo querydonaciones($id);

	}


?>