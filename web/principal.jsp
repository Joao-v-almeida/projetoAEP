<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Realizar Formulário</title>
        <link rel="stylesheet" type="text/css" href="style_principal.css"/>
    </head>
    <body>
        <header class="cabecalho">
            <div class="cabecalho-div">
                <a class="cabecalho-opcao1" href="#ansiedade">Ansiedade</a>
                <a class="cabecalho-opcao1" href="#depressao">Depressão</a>
                <a class="cabecalho-opcao1" href="#burnout">Burnout</a>
            </div>
        </header>


        <main class="conteudo">
            <section class="conteudo-principal">
                <div class="conteudo-principal-escrito">
                    <h1 class="conteudo-principal-escrito-titulo">Ajude você - Saúde mental!</h1>
                    <h2 class="conteudo-principal-escrito-subtitulo">Escolha e preencha o formulário personalizado e receba o feedback de um <strong>profissional!</strong></h2>
                </div>
                
                <img src="img/espacoSaude.svg" class="conteudo-principal-escrito-imagem" alt="Imagem Espaço Saúde">
            </section>
            
            <section class="conteudo-secundario">
                <h3 id="ansiedade" class="conteudo-secundario-titulo">Ansiedade</h3><br>
                <p class="conteudo-secundario-paragrafo">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/JNjbzZu_Zu4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </p><br>
                <a href="formulario_ansiedade.jsp" target="self" rel="next"><button class="conteudo-principal-escrito-botao">Preencher formulário</button></a><br><br>
                
            </section><br>
            
            <section class="conteudo-secundario">
                <h3 id="depressao" class="conteudo-secundario-titulo">Depressão</h3><br>
                <p class="conteudo-secundario-paragrafo">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/AOAP11o7jNM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </p><br>
                <a href="formulario_depressao.jsp" target="self" rel="next"><button class="conteudo-principal-escrito-botao">Preencher formulário</button></a><br><br>
            </section><br>
                
            <section class="conteudo-secundario">
                <h3 id="burnout" class="conteudo-secundario-titulo">Burnout</h3><br>
                <p class="conteudo-secundario-paragrafo">
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/jSmhjqdqvcM" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </p><br>
                <a href="formulario_burnout.jsp" target="self" rel="next"><button class="conteudo-principal-escrito-botao">Preencher formulário</button></a><br><br>
            </section><br>
            
        </main>

        <footer class="rodape">
            <p class="rodape-paragrafo">Site desenvolvido para fins acadêmicos!</p>
        </footer>
    </body>
</html>
