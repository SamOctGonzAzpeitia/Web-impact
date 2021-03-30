<?php

	require_once('Modifica_reporte.php');

	if(isset($_GET['id'])){
		$id=$_GET['id'];
		echo queryreporte($id);
	}

?>