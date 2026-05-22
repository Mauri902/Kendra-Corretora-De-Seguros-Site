<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String usuario = (String) session.getAttribute("usuario");

    if (usuario == null) {
        response.sendRedirect("login.html");
    }
%>

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
                <a href="index.html"><img src="./img/logo.png" alt="Logo da Kendra Seguros"></a>
            </div>
            <nav>
                <button class="btnAbre">&#9776;</button>
                <ul id="menuprincipal">
                    <li><a href="login.html" id="cadastromobile">Acesso da Corretora</a></li>

                    <li id="home"><a href="index.html">Home</a></li>
                    <li><a href="#" class="seguros menu-toggle">Seguros<span class="seta">&#11167;</span></a>
                        <ul class="submenu submenuSeguros">
                            <li><a href="saude.html">Saúde</a></li>
                            <li><a href="vida.html">Vida</a></li>
                            <li><a href="veicular.html">Auto</a></li>
                            <li><a href="odontologico.html">Odontológico</a></li>
                            <li><a href="residencial.html">Residencial</a></li>
                            <li><a href="empresarial.html">Empresarial</a></li>
                            <li><a href="consorcio.html">Consórcio</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="sobre menu-toggle">Sobre<span class="seta">&#11167;</span></a>
                        <ul class="submenu submenuSobre">
                            <li><a href="sobre.html" target="_blank">Sobre a Kendra</a></li>
                            <li><a href="privacidade.html" target="_blank">Política de Privacidade</a></li>
                            <li><a href="cookies.html" target="_blank">Política de Cookies</a></li>
                            <li><a href="uso.html" target="_blank">Termos de Uso</a></li>
                            <li><a href="aviso.html" target="_blank">Aviso Legal</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div id="cadastro">
                <a href="central.jsp" class="btn">Voltar</a>
            </div>
        </div>
    </header>
    <section id="cadastrocliente">
        <div class="container">
            <h2>Cadastro do cliente</h2>
            <form action="insert" name="frmContato" method="post" enctype="multipart/form-data"
               onsubmit="return validarcliente()" >
                <input type="text" name="nome" placeholder="Seu nome">
                <input type="text" name="cpf" placeholder="CPF">
                <input type="text" name="empresa" placeholder="Empresa(Opcional)">
                <input type="text" name="cnpj" placeholder="CNPJ(opcional)">
                <input type="tel" name="telefone" placeholder="(11) 00000-0000">
                <input type="email" name="email" placeholder="Seu email">
                <input type="date" id="nascimento" name="nascimento">
                <select name="sexo">
                    <option disabled selected>Selecione um sexo</option>
                    <option value="Masculino">Masculino</option>
                    <option value="Feminino">Feminino</option>
                    <option value="Outro">Outro</option>
                </select>
                <select name="estado" id="opcoes">
                    <option disabled selected>Selecione um estado civil</option>
                    <option value="Solteiro">Solteiro(a)</option>
                    <option value="Casado/União">Casado/União</option>
                    <option value="Viúvo(a)">Viúvo(a)</option>
                    <option value="Separado(a)">Separado(a)</option>
                </select>
                <select name="seguros">
                    <option disabled selected>Selecione um serviço</option>
                    <option value="Saúde">Saúde</option>
                    <option value="Auto">Auto</option>
                    <option value="Vida">Vida</option>
                    <option value="Odontológico">Odontológico</option>
                    <option value="Residencial">Residencial</option>
                    <option value="Empresarial">Empresarial</option>
                    <option value="Consórcio">Consórcio</option>
                </select>
                <input type="text" name="indicou" placeholder="Quem indicou(Opcional)">
                <input type="file" name="documento" id="file" accept=".pdf,.jpg,.png" placeholder="Anexar documento">
                <textarea name="observacao" placeholder="Observações(Opcional)"></textarea>
                <button class="btn">Enviar</button>
                <button class="btn" type="reset" id="redefinir" onclick="limparForm()">Redefinir</button>
            </form>
        </div>
    </section>
    <footer>
        <div class="container">
            <div class="kendra">
                <h2>Sobre a Kendra</h2>
                <p>A Kendra Seguros nasceu do sonho de uma ex-funcionária do setor, que acredita que seguro vai além de
                    uma simples venda: é uma consultoria personalizada, focada em entender e atender as reais
                    necessidades de cada cliente.</p>
            </div>
            <div class="contatos">
                <h2>Contatos</h2>
                <a href="https://wa.me/5511947171460" target="_blank"><img src="./img/whatsapp.png" alt="">WhatsApp</a>
                <a href="mailto:tatiana@kendraseguros.com.br" target="_blank"><img src="./img/e-mail.png"
                        alt="">Email</a>
            </div>
            <div class="informacoes">
                <h2>Informações</h2>
                <a href="privacidade.html" target="_blank">Política de Privacidade</a>
                <a href="cookies.html" target="_blank">Política de Cookies</a>
                <a href="uso.html" target="_blank">Termos de Uso</a>
                <a href="aviso.html" target="_blank">Aviso Legal</a>
            </div>
            <div class="redessociais">
                <h2>Redes Sociais</h2>
                <a href="https://www.instagram.com/kendraseguros/" target="_blank"><img src="./img/instagram.png"
                        alt="">Instagram</a>
                <a href="https://www.facebook.com/kendraseguros/" target="_blank"><img src="./img/facebook.png"
                        alt="">Facebook</a>
                <a href="https://br.linkedin.com/company/kendra-corretora-de-seguros" target="_blank"><img
                        src="./img/linkedin.png" alt="">Linkedin</a>
            </div>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="menu.js"></script>
    <script src="validadorcliente.js"></script>

</body>

</html>