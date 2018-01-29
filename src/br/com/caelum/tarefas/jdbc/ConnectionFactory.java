package br.com.caelum.tarefas.jdbc;
import java.sql.*;
public class ConnectionFactory {
	public Connection getConnection(){
		System.out.println("Conectando ao Banco de Dados...");

		String stringDeConexao="jdbc:mysql://localhost/banco";
		String user="root";
		String pass="root";
		
		try{
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			Connection conn = DriverManager.getConnection(stringDeConexao,user,pass);
			//
			System.out.println("Conectado com o banco...");
			return conn;		
		}catch(SQLException e){
			e.printStackTrace();
			throw new RuntimeException(e+"\nNAO FOI POSSÍVEL CONECTAR NO BANCO DE DADOS");
		}
	}
}