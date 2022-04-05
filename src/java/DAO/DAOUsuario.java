package DAO;

import MODEL.Usuario;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class DAOUsuario {
    
    private final Connection conexao;
    private PreparedStatement preparedStatement;
    private Statement statement;
    private ResultSet resultSet;
    
    public DAOUsuario() throws SQLException {
        conexao = new Conexao().getConexao();
    }
    
    public void cadastrarUsuario(Usuario usuario){
        
        try {
            Date dataCadastroUsuario = new Date();
            //SCRIPT INSERT SQL
            String insertUsuarioSQL = "INSERT INTO usu_usuario (USU_NOME, USU_EMAIL, USU_TELEFONE, USU_DATA_NASCIMENTO, USU_SENHA, USU_DATA_CADASTRO) VALUES (?,?,?,?,?,?)";
            preparedStatement = conexao.prepareStatement(insertUsuarioSQL);
            
            preparedStatement.setString(1, usuario.getNomeUsuario());
            preparedStatement.setString(2, usuario.getEmailUsuario());
            preparedStatement.setString(3, usuario.getTelefoneUsuario());
            preparedStatement.setString(4, usuario.getDataNascimentoUsuario());
            preparedStatement.setString(5, usuario.getSenhaUsuario());
            preparedStatement.setDate(6, new java.sql.Date(dataCadastroUsuario.getTime()));
            
            
            preparedStatement.execute();
            preparedStatement.close();
        } catch (SQLException erro) {
            throw new RuntimeException("Erro DAO cadastrar usuário. " + erro.getMessage());
        }
    }
    
    public boolean loginUsuario(String emailUsuario, String senhaUsuario){
        try {
            String selectUsuarioSQL = "SELECT * FROM usu_usuario WHERE USU_EMAIL = '" + emailUsuario + "' AND USU_SENHA = '" + senhaUsuario + "'";
            statement = conexao.prepareStatement(selectUsuarioSQL);
            resultSet = statement.executeQuery(selectUsuarioSQL);
            
            return resultSet.next();
            
        } catch (SQLException erro) {
            throw new RuntimeException("Erro DAO login usuário. " + erro.getMessage());
        }
    }

}
