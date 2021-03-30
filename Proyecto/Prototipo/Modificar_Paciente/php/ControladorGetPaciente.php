<?php

	require_once('ModificaPaciente.php');

	if(isset($_GET['id'])){
		$id=$_GET['id'];
		echo querypaciente($id);
	}

?>