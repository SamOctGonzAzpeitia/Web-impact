$(buscar_datos());

function buscar_datos(consulta) {
    $.ajax({
            url: 'php/controladorTabla.php',
            type: 'POST',
            dataType: 'html',
            data: { consulta: consulta },
        })
        .done(function(respuesta) {
            $("#tabla").html(respuesta);
        })
        .fail(function() {
            console.log("error");
        });
}
$(document).on('keyup', '#busqueda', function() {
    var valor = $(this).val();
    if (valor != "") {
        buscar_datos(valor);
    } else {
        buscar_datos();
    }
});



function preguntarSiNo(id) {

    alertify.confirm('Falta', '¿Confirma ausencia del paciente?',
        function() { falta(id) },
        function() { alertify.error('Se cancelo') });

}

function preguntarJustificacion(id) {

    alertify.confirm('Justificacion', '¿Confirma justificacion?',
        function() { justificacion(id) },
        function() { alertify.error('Se cancelo') });

}

function confirmaAsistencia(id) {

    alertify.confirm('Asistencia', '¿Confirma asistencia del paciente?',
        function() { asistencia(id) },
        function() { alertify.error('Se cancelo') });

}

function falta(datos) {

    

    idpaciente = datos;
    



    $.post("php/Registrafalta.php", {idpaciente: idpaciente }).
    done(function(data) {
        console.log(data);
        alertify.error("Falta registrada");
        $('#tabla').load('php/controladorTabla.php');
    });


}

function asistencia(datos) {

    

    idpaciente = datos



    $.post("php/RegistraAsistencia.php", { idpaciente: idpaciente }).
    done(function(data) {
        console.log(data);
        alertify.success("Asistencia registrada");
        $('#tabla').load('php/controladorTabla.php');
    });


}

function justificacion(datos) {

   

    idpaciente = datos


    $.post("php/RegistraJustificacion.php", { idpaciente: idpaciente }).
    done(function(data) {
        console.log(data);
        alertify.success("Registro justificado");
        $('#tabla').load('php/controladorTabla.php');
    });
}

function justifica(id) {

    alert(id);
}