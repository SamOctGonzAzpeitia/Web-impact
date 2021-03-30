var id;
$( document ).ready(function() {
    
    const queryString = window.location.search;
    console.log(queryString);
    const urlParams = new URLSearchParams(queryString);
    id = urlParams.get('id');
    Getreporte(id);
});

function Getreporte(id){

	$.get("php/ControladorGetReporte.php",{id:id}).
    done(function( data ) {
    	
    console.log (data);
    let data1=data.split(";");

    $("#NumReporte").val(data1[0]);
    $("#NumEmpleado").val(data1[1]);
    $("#NumPaciente").val(data1[2]);
    $("#Valoracion").val(data1[3]);
    $("#Terapia").val(data1[4]);
    $("#Tratamiento").val(data1[5]);
    $("#Avances").val(data1[6]);
    $("#Fecha").val(data1[7]);
    


    });

}                       

function modificarReporte(){

    NumReporte=$("#NumReporte").val();
    NumEmpleado=$("#NumEmpleado").val();
    NumPaciente=$("#NumPaciente").val();
    Valoracion=$("#Valoracion").val();
    Terapia=$("#Terapia").val();
    Tratamiento=$("#Tratamiento").val();
    Avances=$("#Avances").val();
    Fecha=$("#Fecha").val();

    
    
    $.post("php/ControladorModifica.php",{NumReporte:NumReporte, 
                                        NumEmpleado:NumEmpleado, 
                                        NumPaciente:NumPaciente, 
                                        Valoracion:Valoracion, 
                                        Terapia:Terapia,
                                        Tratamiento:Tratamiento,
                                        Avances:Avances,
                                        Fecha:Fecha
                                        }).
    done(function(data ) {
        console.log(data);
        alertify.success("Modificado con exito");
        setTimeout(()=>location.href="../Consulta_historial/index.php",2000);
    });

    
}

function cancelaModificar(){

    alertify.error("Se cancelo proceso");
    setTimeout(()=>location.href="../Consulta_historial/index.php",2000);

    
}

$("#modificar").on("click",modificarReporte);
$("#cancelar").on("click",cancelaModificar);