<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="login_sistema.jsp" method="post">         
            <label for="emailUsuario">EMAIL</label><br>
            <input type="email" name="emailUsuario" placeholder="Digite seu email..."/><br> <br>
            <label for="senhaUsuario">SENHA</label><br>
            <input type="password" name="senhaUsuario" placeholder="Digite sua senha..."/><br> <br>
            <input type="submit" value="ENTRAR"/>
        </form>
    </body>
</html>
