<?php

    require_once ("conexion.php");


    function buscar($consulta){

        $conexion=conexion();

        //echo $consulta;
        $q = $conexion->real_escape_string($consulta);
        $sql = "SELECT P.NumeroPaciente, P.NombrePaciente, P.ApellidoPaterno, P.ApellidoMaterno, SUM(PC.Asistencia) as 'Faltas', COUNT(PC.Asistencia) as 'Total' FROM Paciente_Consulta PC, Paciente P WHERE P.NumeroPaciente = PC.NumeroPaciente AND P.Visibilidad = 1 AND P.NombrePaciente LIKE '%".$q."%' GROUP BY P.NumeroPaciente ";


        $result=mysqli_query($conexion, $sql);

        return $result;


}
?>