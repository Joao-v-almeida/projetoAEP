package DAO;

import MODEL.Usuario;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
            //SCRIPT INSERT SQL
            String insertUsuarioSQL = "INSERT INTO usu_usuario (USU_NOME, USU_EMAIL, USU_TELEFONE, USU_DATA_NASCIMENTO, USU_SENHA) VALUES (?,?,?,?,?)";
            preparedStatement = conexao.prepareStatement(insertUsuarioSQL);
            
            preparedStatement.setString(1, usuario.getNomeUsuario());
            preparedStatement.setString(2, usuario.getEmailUsuario());
            preparedStatement.setString(3, usuario.getTelefoneUsuario());
            preparedStatement.setString(4, usuario.getDataNascimentoUsuario());
            preparedStatement.setString(5, usuario.getSenhaUsuario());
            
            
            preparedStatement.execute();
            preparedStatement.close();
        } catch (SQLException erro) {
            throw new RuntimeException("Erro DAO cadastrar usuário. " + erro.getMessage());
        }
    }

}
