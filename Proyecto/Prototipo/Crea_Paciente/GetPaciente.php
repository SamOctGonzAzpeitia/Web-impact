<?php
    require_once ('util.php');

    $result = getPatient();

    /*if(mysqli_num_rows($result) > 0)
    {
        
        echo "<div class='alert-success'>"; 
        echo "<table class='table'>"; 
        echo "<thead class='thead-dark'";
        echo "<tr>"; 
        echo "<th scope='col'>NumeroPaciente</th>";
        echo "<th scope='col'>NombrePaciente</th>"; 
        echo "<th scope='col'>ApellidoPaterno</th>"; 
        echo "<th scope='col'>ApellidoMaterno</th>"; 
        echo "<th scope='col'>Domicilio</th>"; 
        echo "<th scope='col'>Telefono</th>"; 
        echo "<th scope='col'>FechaNacimiento</th>"; 
        echo "<th scope='col'>Genero</th>"; 
        echo "<th scope='col'>Diagnostico</th>"; 
        echo "<th scope='col'>Lesion</th>"; 
        echo "<th scope='col'>Ingreso</th>"; 
        echo "<th scope='col'>Dependencia</th>"; 
        echo "<th scope='col'>Correo</th>"; 
        echo "<th scope='col'>Municipio</th>"; 
        echo "<th scope='col'>Estado</th>"; 
        echo "</tr>"; 
        echo "</thead>"; 
        echo "<tbody>"; 

        while($row = mysqli_fetch_assoc($result))
        {
            echo "<tr>"; 
            echo "<td>" . $row["NumeroPaciente"] . "</td>"; 
            echo "<td>" . $row["NombrePaciente"] . "</td>"; 
            echo "<td>" . $row["ApellidoPaterno"] . "</td>"; 
            echo "<td>" . $row["ApellidoMaterno"] . "</td>"; 
            echo "<td>" . $row["Domicilio"] . "</td>";
            echo "<td>" . $row["Telefono"] . "</td>"; 
            echo "<td>" . $row["FechaNacimiento"] . "</td>"; 
            echo "<td>" . $row["Genero"] . "</td>"; 
            echo "<td>" . $row["Diagnostico"] . "</td>"; 
            echo "<td>" . $row["Lesion"] . "</td>";  
            echo "<td>" . $row["Ingreso"] . "</td>";
            echo "<td>" . $row["Dependencia"] . "</td>";  
            echo "<td>" . $row["Correo"] . "</td>";  
            echo "<td>" . $row["Municipio"] . "</td>";  
            echo "<td>" . $row["Estado"] . "</td>";      
            echo "</tr>"; 
        }
        
        echo  "</tbody>"; 
        echo "</table>"; 
        echo "</div>"; 
        echo "</div>"; 
    }*/


?>