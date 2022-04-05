<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="stylesheet" href="style_login_cadastro.css"/>
        <title>Cadastro Usuário</title>
    </head>
    <body>

        <div class="principal">
            <div id="cadastro">
                <form method="post" action=""> 
                    <h1>Cadastro</h1> 

                    <p> 
                        <label for="nomeUsuario">Nome</label>
                        <input id="nomeUsuario" name="nomeUsuario" required="required" type="text" placeholder="nome" />
                    </p>

                    <p> 
                        <label for="emailUsuario">E-mail</label>
                        <input id="emailUsuario" name="emailUsuario" required="required" type="email" placeholder="contato@gmail.com"/> 
                    </p>

                    <p>
                        <label for="dataNascimentoUsuario">Data Nascimento</label><br>
                        <input id="dataNascimentoUsuario" required="required" type="date" name="dataNascimentoUsuario"/><br> <br>
                    </p>

                    <p>
                        <label for="telefoneUsuario" >Telefone</label><br>
                        <input type="tel" name="telefoneUsuario" data-mask="(00) 0000-0000" data-mask-selectonfocus="true" placeholder="Digite seu telefone..."/><br> <br>
                    </p>

                    <p> 
                        <label for="senhaUsuario">Senha</label>
                        <input id="senhaUsuario" name="senhaUsuario" required="required" type="password" placeholder="ex. 1234"/>
                    </p>

                    <p> 
                        <input type="submit" value="Cadastrar"/> 
                    </p>

                    <p class="link">  
                        Já tem conta?
                        <a href="login.jsp"> Ir para Login </a>
                    </p>
                </form>
            </div>
        </div>
    </body>
</html>
