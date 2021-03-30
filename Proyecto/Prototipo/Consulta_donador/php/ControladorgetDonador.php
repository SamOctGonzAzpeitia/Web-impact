<?php
	
	require_once('Modifica_donador.php');


	if(isset($_GET['id'])){
		$id=$_GET['id'];
		echo querydonador($id);

	}


?>