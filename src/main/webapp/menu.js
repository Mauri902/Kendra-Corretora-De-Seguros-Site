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

const cards = document.querySelectorAll('.card');

const observer = new IntersectionObserver((entries) => {
    entries.forEach((entry) => {

        if (entry.isIntersecting) {
            entry.target.classList.add('aparecer');
        }

    });
}, {
    threshold: 0.8
});

cards.forEach((card) => {
    observer.observe(card);
});