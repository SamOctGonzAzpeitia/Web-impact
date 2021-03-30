
$(buscar_datos());

function buscar_datos(consulta){
    $.ajax({
        url: 'php/controladorTabla.php' ,
        type: 'POST' ,
        dataType: 'html',
        data: {consulta: consulta},
    })
    .done(function(respuesta){
        $("#tabla").html(respuesta);
    })
    .fail(function(){
        console.log("error");
    });
}
$(document).on('keyup','#busqueda', function(){
    var valor = $(this).val();
    if (valor != "") {
        buscar_datos(valor);
    }else{
        buscar_datos();
    }
});


function preguntarSiNo(id){



	alertify.confirm('Eliminar Datos', '¿Esta seguro de eliminar este registro?', 
					function(){ eliminarDatos(id) }
                , function(){ alertify.error('Se cancelo')});
	
}

function eliminarDatos(id){

	
 $.post("php/EliminarEmpleados.php",{id:id}).
    done(function( data ) {
    	
        alertify.success("Eliminado con exito!");
        $('#tabla').load('php/controladorTabla.php');
    });
}

function modifyById(id){
	let auxUrl="../Modificar_Empleado/ModificaEmpleado.php";

	location.href = auxUrl+"?id="+id;
}