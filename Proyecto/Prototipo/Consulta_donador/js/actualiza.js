var id;
$( document ).ready(function() {
    
    const queryString = window.location.search;
    console.log(queryString);
    const urlParams = new URLSearchParams(queryString);
    id = urlParams.get('id');
    Getdonador(id);
});

function Getdonador(id){

	$.get("php/ControladorgetDonador.php",{id:id}).
    done(function( data ) {
    	
    console.log (data);
    let data1=data.split(",");

    $("#id_donador").val(data1[0]);
    $("#RazonSocial").val(data1[1]);
    $("#RFC").val(data1[2]);
    $("#Correo").val(data1[3]);
    $("#Telefono").val(data1[4]);
    $("#Fecha").val(data1[5]);
    


    });

}                       

function modificarDonador(){

    id_donador=$('#id_donador').val();
    RazonSocial=$('#RazonSocial').val();
    RFC=$('#RFC').val();
    Correo=$('#Correo').val();
    Telefono=$('#Telefono').val();
    Fecha=$('#Fecha').val();

    $.post("php/Controladormodifica.php",{id_donador:id_donador, 
                                        RazonSocial:RazonSocial, 
                                        RFC:RFC, 
                                        Correo:Correo, 
                                        Telefono:Telefono, 
                                        Fecha:Fecha
                                        }).
    done(function(data ) {
        console.log(data);
        alertify.success("Modificado con exito");
        setTimeout(()=>location.href="index.php",2000);
    });

    
}

function cancelaModificar(){

    alertify.error("Se cancelo proceso");
    setTimeout(()=>location.href="index.php",2000);

    
}


$("#modificar").on("click",modificarDonador);
$("#cancelar").on("click",cancelaModificar);