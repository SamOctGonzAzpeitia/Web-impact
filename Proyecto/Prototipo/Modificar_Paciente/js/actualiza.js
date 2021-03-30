var id;
$(document).ready(function() {

    const queryString = window.location.search;
    console.log(queryString);
    const urlParams = new URLSearchParams(queryString);
    id = urlParams.get('id');
    Getpaciente(id);
});

function Getpaciente(id) {

    $.get("php/ControladorGetPaciente.php", { id: id }).
    done(function(data) {

        let data1 = data.split(",");

        $("#id_paciente").val(data1[0]);
        $("#nombre").val(data1[1]);
        $("#apellidoP").val(data1[2]);
        $("#apellidoM").val(data1[3]);
        $("#domicilio").val(data1[4]);
        $("#estado").val(data1[5]);
        $("#municipio").val(data1[6]);
        $("#tel").val(data1[7]);
        $("#correo").val(data1[8]);
        $("#nacimiento").val(data1[9]);
        $("#genero").val(data1[10]);
        $("#diagnostico").val(data1[11]);
        $("#lesion").val(data1[12]);
        $("#ingreso").val(data1[13]);
        $("#reingreso").val(data1[14]);
        $("#egreso").val(data1[15]);
        $("#dependencia").val(data1[16]);





        //$("#estado").change(function() {
        //console.log("CAMBIO");
        $.get("php/controladorMunicipio.php", {
            estado: $("#estado").val(),
            municipio: data1[6]
        }).
        done(function(data) {
            $("#municipio").html(data);
        });
        //})

        $("#estado").change(function() {
            //console.log("CAMBIO");
            $.get("php/controladorMunicipio.php", {
                estado: $("#estado").val(),
                municipio: $("#municipio").val(),
            }).
            done(function(data) {
                $("#municipio").html(data);
            });
        })


    });
}

function modificarPaciente() {

    id_paciente = $("#id_paciente").val();
    nombre = $("#nombre").val();
    apellidoP = $("#apellidoP").val();
    apellidoM = $("#apellidoM").val();
    domicilio = $("#domicilio").val();
    estado = $("#estado").val();
    municipio = $("#municipio").val();
    tel = $("#tel").val();
    correo = $("#correo").val();
    nacimiento = $("#nacimiento").val();
    genero = $("#genero").val()
    diagnostico = $("#diagnostico").val();
    lesion = $("#lesion").val();
    ingreso = $("#ingreso").val();
    reingreso = $("#reingreso").val();
    egreso = $("#egreso").val();
    dependencia = $("#dependencia").val();

    if ($("#reingreso").val() == '') {

        reingreso = "2021-01-01";

    }
    if ($("#egreso").val() == '') {
        egreso = "2021-01-01";
    }





    $.post("php/ControladorModifica.php", {
        id_paciente: id_paciente,
        nombre: nombre,
        apellidoP: apellidoP,
        apellidoM: apellidoM,
        domicilio: domicilio,
        estado: estado,
        municipio: municipio,
        tel: tel,
        correo: correo,
        nacimiento: nacimiento,
        genero: genero,
        diagnostico: diagnostico,
        lesion: lesion,
        ingreso: ingreso,
        reingreso: reingreso,
        egreso: egreso,
        dependencia: dependencia

    }).
    done(function(data) {

        console.log(data);
        alertify.success("Modificado con exito");
        setTimeout(() => location.href = "../ConsultaPaciente/index.php", 2000);
    });


}

function cancelaModificar() {

    alertify.error("Se cancelo proceso");
    setTimeout(() => location.href = "../ConsultaPaciente/index.php", 2000);


}


$("#modificar").on("click", modificarPaciente);
$("#cancelar").on("click", cancelaModificar);
$("#cancelar2").on("click", cancelaModificar);