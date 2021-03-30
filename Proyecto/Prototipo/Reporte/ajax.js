$( document ).ready(function() {
    queryPacientes();
});

function queryPacientes(){
    $.get( "controladorGetPacientes.php", { } )
    .done(function( data ) {
        console.log(data);
    $("#NombrePaciente").append(data);
  });
}

function resgistraReporte(){
    
    
    if ( $("#valoracion").val() == '' || $("#terapia").val() == '' || $("#tratamiento").val() == '' || $("#avances").val() == '' ){
        
        alertify.success('Porfavor llena todos los campos!!');
        
    }else{
        
            alertify.success('Reporte registrado exitosamente!');
            setTimeout(()=>location.href="../dashboard/dashboard.php",2000);



                $.post( "controladorRegistraPaciente.php", {NumeroPaciente:$("#NombrePaciente").val(),Valoracion:$("#valoracion").val(),Terapia:$("#terapia").val(),Tratamiento:$("#tratamiento").val(),Avances:$("#avances").val()})
            .done(function( data ) {
            console.log(data);
      });
    }
    
    
    
}

$("#Registrar").on("click",resgistraReporte)