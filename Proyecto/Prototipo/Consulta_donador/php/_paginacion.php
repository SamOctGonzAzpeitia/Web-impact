<?php
    include "conexion.php";
    $conexion = conexion();
    $page = isset($_GET['page']) ? $_GET['page'] : 1;	
    $result1 = $conexion->query("SELECT count(id_Donador) as id FROM Donador WHERE Visibilidad = 1");
	$custCount = $result1->fetch_all(MYSQLI_ASSOC);
	$total = $custCount[0]['id'];
	$pages = ceil( $total / 10 );
    $Previous = (($page - 1) <= 1)? $page : $page-1;
    $Next = (($page + 1) > $pages)? $page : $page+1;

    
    $paginacion = "";
    $paginacion.="<nav aria-label='Page navigation'>";
    $paginacion.="<ul class='pagination'>";
    $paginacion.="<li class='page-item'>";
    $paginacion.="<a class='page-link' href='index.php?page=" . $Previous . "' aria-label='Previous'>";
    $paginacion.="<span aria-hidden='true'>&laquo; Previous</span>";
    $paginacion.="</a>";
    $paginacion.="</li>";
    for($i = 1; $i<= $pages; $i++) : 
    $paginacion.="<li class='page-item' ><a class='page-link' class='page-link' href='index.php?page=" . $i . "'>" . $i . "</a></li>";
    endfor;
    $paginacion.="<li class='page-item'>";
    $paginacion.="<a class='page-link' href='index.php?page=" . $Next . "' aria-label='Next'>";
    $paginacion.="<span aria-hidden='true'>Next &raquo;</span>";
    $paginacion.="</a>";
    $paginacion.="</li>";
    $paginacion.="</ul>";
    $paginacion.="</nav>";
    echo $paginacion;
?>