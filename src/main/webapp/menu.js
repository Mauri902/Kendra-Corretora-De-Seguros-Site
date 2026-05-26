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

const tatiana = document.querySelectorAll(
    '#tatiana .textosection, #tatiana #textofoto'
);

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

tatiana.forEach((el) => {
    observer.observe(el);
});

let ano = document.getElementById("copyrightYear")

let anoAtual = new Date().getFullYear()

ano.textContent = anoAtual

