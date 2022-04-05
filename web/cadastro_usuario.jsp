<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.DAOUsuario"%>
<%@page import="MODEL.Usuario"%>

<%
    Usuario usuario = new Usuario();
    DAOUsuario daoUsuario = new DAOUsuario();
    
    
    try{
        String nomeUsuario = request.getParameter("nomeUsuario");
        String emailUsuario = request.getParameter("emailUsuario");
        String dataNascimentoUsuario = request.getParameter("dataNascimentoUsuario");
        String telefoneUsuario = request.getParameter("telefoneUsuario");
        String senhaUsuario = request.getParameter("senhaUsuario");
        
        usuario.setNomeUsuario(nomeUsuario);
        usuario.setEmailUsuario(emailUsuario);
        usuario.setDataNascimentoUsuario(dataNascimentoUsuario);
        usuario.setTelefoneUsuario(telefoneUsuario);
        usuario.setSenhaUsuario(senhaUsuario);
        
        daoUsuario.cadastrarUsuario(usuario);
        
        out.print("<script>");
            out.print("alert('Usuário cadastrado com sucesso. Por favor realize o login')");
        out.print("</script>");
        out.print("<meta http-equiv='refresh' content='0, url=login.jsp'>");
        
    }catch(Exception erro){
        throw new RuntimeException("Erro ao executar cadastro usuario: " + erro.getMessage());
    }

%>