<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kendra Corretora de Seguros | Entre em contato</title>
    <meta name="description" content="Corretora de Seguros com os melhores preços e planos personalizados">
    <link rel="shortcut icon" href="./img/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Inter:ital,opsz,wght@0,14..32,100..900;1,14..32,100..900&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap"
        rel="stylesheet">
</head>

<body>
    <header>
        <div class="container">
            <div id="logo">
                <img src="./img/logo.png" alt="Logo da Kendra Seguros">
            </div>
            <nav>
                <button class="btnAbre">&#9776;</button>
                <ul id="menuprincipal">
                    <li><a href="" id="cadastromobile">Cadastro</a></li>

                    <li id="home">Home</li>
                    <li><a href="#" class="seguros menu-toggle">Seguros<span class="seta">&#11167;</span></a>
                        <ul class="submenu submenuSeguros">
                            <li><a href="#">Saúde</a></li>
                            <li><a href="#">Vida</a></li>
                            <li><a href="#">Auto</a></li>
                            <li><a href="#">Odontológico</a></li>
                            <li><a href="#">Residencial</a></li>
                            <li><a href="#">Empresarial</a></li>
                            <li><a href="#">Consórcio</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="sobre menu-toggle">Sobre<span class="seta">&#11167;</span></a>
                        <ul class="submenu submenuSobre">
                            <li><a href="#">Sobre a Kendra</a></li>
                            <li><a href="#">Política de Privacidade</a></li>
                            <li><a href="#">Política de Cookies</a></li>
                            <li><a href="#">Termos de Uso</a></li>
                            <li><a href="#">Aviso Legal</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div id="cadastro">
                <a href="" class="btn">Entre em Contato</a>
            </div>
        </div>
    </header>
    <section id="cadastrosection">
        <div class="container">
            <div id="coluna2">
                <h2>Mande seu contato agora mesmo!</h2>
                <form action="form">
                    <input type="text" placeholder="Seu nome">
                    <input type="text" placeholder="Empresa(Opcional)">
                    <input type="tel" placeholder="(11) 00000-0000">
                    <input type="emaill" placeholder="Seu email">
                    <select name="opcoes" id="opcoes">
                        <option disabled selected>Selecione um serviço</option>
                        <option value="1">Saúde</option>
                        <option value="2">Auto</option>
                        <option value="3">Vida</option>
                        <option value="4">Odontológico</option>
                        <option value="5">Residencial</option>
                        <option value="6">Empresarial</option>
                        <option value="7">Consórcio</option>
                    </select>
                </form>
                <button class="btn" >Enviar</button>
            </div>
        </div>
    </section>
        <footer>
        <div class="container">
            <div class="kendra">
                <h2>Sobre a Kendra</h2>
                <p>A Kendra Seguros nasceu do sonho de uma ex-funcionária do setor, que acredita que seguro vai além de uma simples venda: é uma consultoria personalizada, focada em entender e atender as reais necessidades de cada cliente.</p>
            </div>
            <div class="contatos">
                <h2>Contatos</h2>
                <a href="https://wa.me/5511947171460" target="_blank"><img src="./img/whatsapp.png" alt="">WhatsApp</a>
                <a href="mailto:tatiana@kendraseguros.com.br" target="_blank"><img src="./img/e-mail.png" alt="">Email</a>
            </div>
            <div class="informacoes">
                <h2>Informações</h2>
                <a href="">Política de Privacidade</a>
                <a href="">Política de Cookies</a>
                <a href="">Termos de Uso</a>
                <a href="">Aviso Legal</a>
            </div>
            <div class="redessociais">
                <h2>Redes Sociais</h2>
                <a href="https://www.instagram.com/kendraseguros/" target="_blank"><img src="./img/instagram.png" alt="">Instagram</a>
                <a href="https://www.facebook.com/kendraseguros/" target="_blank"><img src="./img/facebook.png" alt="">Facebook</a>
                <a href="https://br.linkedin.com/company/kendra-corretora-de-seguros" target="_blank"><img src="./img/linkedin.png" alt="">Linkedin</a>
            </div>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="menu.js"></script>

</body>

</html>