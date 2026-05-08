$('.seguros').click(function(){
    $('.submenuSeguros').toggleClass('mostra');
    $('.submenuSobre').removeClass('mostra');
});

$('.sobre').click(function(){
    $('.submenuSobre').toggleClass('mostra');
    $('.submenuSeguros').removeClass('mostra');
});

$('.btnAbre').click(function(){
    $('#menuprincipal').toggleClass('mostra');
});

$(window).on('scroll', function(){
    $('#menuprincipal').removeClass('mostra')  
    $('.submenuSeguros').removeClass('mostra');
    $('.submenuSobre').removeClass('mostra');
});

