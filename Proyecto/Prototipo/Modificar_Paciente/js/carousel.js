$(document).ready(function() {
    $('.carousel').carousel({
        interval: false,
    });

});

$("#siguiente").on("click", function() {
    $('.carousel').carousel('next');
    $('.carousel').carousel({
        interval: false,
    });
});


$("#anterior").on("click", function() {
    $('.carousel').carousel('prev');
    $('.carousel').carousel({
        interval: false,
    });
});