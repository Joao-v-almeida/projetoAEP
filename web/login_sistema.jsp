<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOUsuario"%>
<%@page import="MODEL.Usuario"%>

<script>
    function ok(){
        alert('Sucesso');
    }
</script>
<%
    Usuario usuario = new Usuario();
    DAOUsuario daoUsuario = new DAOUsuario();
    
    try{
        String emailUsuario = request.getParameter("emailUsuario");
        String senhaUsuario = request.getParameter("senhaUsuario");
        
        boolean returnLogin = daoUsuario.loginUsuario(emailUsuario, senhaUsuario);
        
        if (returnLogin) {
            out.print("<meta http-equiv='refresh' content='0, url=index.jsp'>");
        }else{
           out.print("<script>");
               out.print("alert('Login incorreto!')");
           out.print("</script>");
           out.print("<meta http-equiv='refresh' content='0, url=login.jsp'>");
        }
        
    }catch(Exception erro){
        throw new RuntimeException("Erro ao executar login usuario: " + erro.getMessage());
    }

%>
