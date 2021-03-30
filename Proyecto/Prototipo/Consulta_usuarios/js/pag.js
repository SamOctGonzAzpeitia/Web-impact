var pag;
$(document).ready(function() {
    const queryString = window.location.search;
    console.log(queryString);
    const urlParams = new URLSearchParams(queryString);
    pag = urlParams.get('page');
    if (pag == null) {
        pag = 1;
    }
    pagin(pag);
});

function pagin(pag) {
    $.get("./php/controladorTabla.php", { page: pag }).
    done(function(data) {
        console.log(data);
        $('#tabla').html(data);
    });
}