<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <script>
            function formatar(mascara, documento) {
                var i = documento.value.length;
                var saida = mascara.substring(0, 1);
                var texto = mascara.substring(i);
                if (texto.substring(0, 1) !== saida) {
                    documento.value += texto.substring(0, 1);
                }
            }

        </script>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <link rel="stylesheet" href="style_login_cadastro.css"/>
        <title>Cadastro Usuário</title>
    </head>
    <body>

        <div class="principal">
            <div id="cadastro">
                <form method="post" action="cadastro_usuario.jsp"> 
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
                        <input type="tel" name="telefoneUsuario" maxlength="13" onkeypress="formatar('## #####-####', this)"  placeholder="Ex.: 00 00000-0000" required="required"/><br> <br>
                    </p>

                    <p> 
                        <label for="senhaUsuario">Senha</label>
                        <input id="senhaUsuario" name="senhaUsuario" required="required" type="password" placeholder="ex. 1234"/>
                    </p>

                    <p> 
                        <input id="consentimento" name="consentimento" type="checkbox" value="false" required required="" oninvalid="setCustomValidity('O Consentimento dos dados é obrigátorio para realizar o cadastro.')" oninput="setCustomValidity('')"/>
                        <label for="consentimento">Autorizo a recolha e o armazenamento dos dados acima.</label>

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
