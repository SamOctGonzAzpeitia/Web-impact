function verifyUserPassword(){
    let usuariodata=$("#user").val();
    let passworddata=$("#password").val();
    $.post( "signinController.php", { correo:usuariodata, password:passworddata} )
    .done(function( data ) {
        if(data=="false\n"){
            $("#alert").removeClass("invisible");
            $("#alert").addClass("visible");
        }else{
            location.href = data;
        }
      });
}

$("#entrar").on("click",verifyUserPassword);