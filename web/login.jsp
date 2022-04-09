<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style_login_cadastro.css"/>
        <title>Login</title>
    </head>
    <body>

        <div class="principal">      
            <!--FORMULÁRIO DE LOGIN-->
            <div id="login">
                <form action="login_sistema.jsp" method="post"> 
                    <h1>Login</h1> 
                    <p> 
                        <label for="emailUsuario">E-mail</label>
                        <input id="emailUsuario" name="emailUsuario" required="required" type="email" placeholder="ex. contato@gmail.com"/>
                    </p>

                    <p> 
                        <label for="senhaUsuario">Senha</label>
                        <input id="senhaUsuario" name="senhaUsuario" required="required" type="password"/> 
                    </p>

                    <p> 
                        <input type="submit" value="Entrar" /> 
                    </p>

                    <p class="link">
                        Ainda não tem conta?
                        <a href="usuario.jsp">Cadastre-se</a>
                    </p>
                </form>
            </div>
        </div>

    </body>
</html>
