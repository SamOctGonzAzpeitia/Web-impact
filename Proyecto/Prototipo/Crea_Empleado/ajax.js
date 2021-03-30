$( document ).ready(function() {
    queryEspecialidades();
    queryRoles();
    $('.carousel').carousel({
        interval: false,
      });
});

function queryEspecialidades(){
    $.get("./controladorEspecialidades.php",{}).
    done(function( data ) {
        $("#especialidad").append(data);
        //console.log("query");
        });
}

function queryRoles(){
    $.get("./controladorroles.php",{}).
    done(function( data ) {
        $("#rol").append(data);
        //console.log(data);
        });
}

function registrarEmpleado(){
    if($("#nombre").val()==''&&$("#correo").val()==''&&$("#especialidad").val()=='0'&&$("#contrasena").val()==''&&$("#rol").val()=='0'){
        alertify.success('Favor de ingresar todos los datos');
    }else{
        $.post("./controladorRegistraEmpleado.php",{nombre:$("#nombre").val(),
                                                    correo:$("#correo").val(),
                                                    especialidad:$("#especialidad").val(),
                                                    contrasena:$("#contrasena").val(),
                                                    rol:$("#rol").val()}).
        done(function( data ) {
            alertify.success('Colaborador creado con exito');
            setTimeout(()=>location.href="../dashboard/dashboard.php",2000);
        });
    }
    
}


$("#registrar").on("click",registrarEmpleado);

$("#contrasena").change(function(){
    console.log("entro");
    var regex=  /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9])(?!.*\s).{8,15}$/;
    if($("#contrasena").val().match(regex)){

    }else{
        alert("no es fuerte");
    }
})

$("#siguiente").on("click",function(){
    $('.carousel').carousel('next');
    $('.carousel').carousel({
        interval: false,
      });
}    
)
//queryEspecialidades();

function cancelar(){
    //alertify
    
    location.href="../dashboard/dashboard.php"
}

function cancelarTodo(){
    alertify.confirm('Si cancela se perderan todos los campos rellenados', '¿Desea cancelar?',
    function() { alertify.error('Se cancelo');
    setTimeout(()=>location.href="../dashboard/dashboard.php",2000);  },
    function() {   
    });
}

$('#cancelar').on("click",cancelarTodo);
$('#cancelar1').on("click",cancelarTodo);