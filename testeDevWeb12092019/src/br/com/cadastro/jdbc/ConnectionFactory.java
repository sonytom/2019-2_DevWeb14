package br.com.cadastro.jdbc;
import java.sql.*;
public class ConnectionFactory {
	
	public Connection getConnection() throws ClassNotFoundException{
		
		Class.forName("com.mysql.jdbc.Driver");
        try {
        	return DriverManager.getConnection("jdbc:mysql://www.anln.co.mbr/anlncom_cadastro", "anlncom_cadastro", "anlncom_cadastro123456");
        }catch(SQLException e){
        	System.out.println("Erro de conexao");
			throw new RuntimeException(e+"\nNAO FOI POSSIVEL CONECTAR NO BANCO DE DADOS");
		}
	}
}

