package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {

    public Connection getConexao() throws SQLException {
        try {
            //Buscar driver MYSQL
            Class.forName("com.mysql.jdbc.Driver");

            //Caminho do banco (XAMMP)
            return DriverManager.getConnection("jdbc:mysql://localhost/projetoAEP", "root", "");
        } catch (ClassNotFoundException | SQLException erro) {
            throw new RuntimeException("Erro conexão: " + erro.getMessage());
        }
    }
}
