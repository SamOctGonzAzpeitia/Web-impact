var id;
var flagPass=false;
var oldpass;
$( document ).ready(function() {
    queryEspecialidades();
    queryRoles();
    const queryString = window.location.search;
    console.log(queryString);
    const urlParams = new URLSearchParams(queryString);
    id = urlParams.get('id');
    //console.log(id);
    queryEmpleado(id)
    //setTimeout(,2000);
});


function queryEmpleado(idEmpleado){
    $.get("./controladorEmpleado.php",{id:idEmpleado}).
    done(function( data ) {
        console.log(data);
        let data1= data.split(",");
        $("#nombre").val(data1[0]);
        $("#correo").val(data1[1]);
        $("#especialidad").val(data1[2]);
        $("#contrasena").val(data1[3]);
        oldpass=data1[3];
        $("#rol").val(data1[4]);
        //console.log($("#rol option:selected").text());
        });
}

function queryEspecialidades(){
    $.get("./controladorEspecialidades.php",{}).
    done(function( data ) {
        $("#especialidad").html(data);
        //console.log("query");
        });
}

function queryRoles(){
    $.get("./controladorroles.php",{}).
    done(function( data ) {
        $("#rol").html(data);
        //console.log(data);
        });
}

function modificarEmpleado(){
    console.log(flagPass);
    if(flagPass){
        pass=$("#contrasena").val();
    }else{
        pass=oldpass;
    }
    console.log(pass);
    $.post("./controladorModificaEmpleado.php",{NombreEmpleado:$("#nombre").val(),
                                                Correo:$("#correo").val(),
                                                Especialidad:$("#especialidad").val(),
                                                Password:pass,
                                                rol:$("#rol option:selected").text(),
                                                id1:id,
                                                flagPass:flagPass
                                                }).
    done(function( data ) {
        console.log(data);
        alertify.success('Se modifico exitosamente');
        setTimeout(()=>location.href="../dashboard/dashboard.php",2000);   
    });
}

function cancelarTodo(){
    alertify.confirm('Si cancela se perderan todos los campos rellenados', '¿Desea cancelar?',
    function() {alertify.error('Se cancelo');
    setTimeout(()=>location.href="../dashboard/dashboard.php",2000); },
    function() {    
    });
}

$("#cancelar").on("click",cancelarTodo);
$("#modificar").on("click",modificarEmpleado);
$("#contrasena").change(function() {
    console.log("cambio");
    flagPass=true;
});