<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Usuário</title>
    </head>
    <body>
        <form action="cadastro_usuario.jsp" method="post">
            <label for="nomeUsuario">NOME</label><br>
            <input type="text" name="nomeUsuario" placeholder="Digite seu nome..."/><br> <br>
            <label for="emailUsuario">EMAIL</label><br>
            <input type="email" name="emailUsuario" placeholder="Digite seu email..."/><br> <br>
            <label for="dataNascimentoUsuario">DATA NASCIMENTO</label><br>
            <input type="date" name="dataNascimentoUsuario"/><br> <br>
            <label for="telefoneUsuario" >TELEFONE</label><br>
            <input type="tel" name="telefoneUsuario" placeholder="Digite seu telefone..."/><br> <br>
            <label for="senhaUsuario">SENHA</label><br>
            <input type="password" name="senhaUsuario" placeholder="Digite sua senha..."/><br> <br>
            <input type="submit" value="CADASTRAR"/>
            
        </form>
    </body>
</html>
