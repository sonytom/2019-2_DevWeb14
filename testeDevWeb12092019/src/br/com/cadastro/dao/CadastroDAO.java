package br.com.cadastro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.cadastro.model.Usuario;

@Repository
public class CadastroDAO {
	Connection connection;
	
	@Autowired
	public CadastroDAO(DataSource dataSource) throws ClassNotFoundException{
		try {
            this.connection = dataSource.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}
	
	public void adiciona(Usuario usuario){
		String sql = "insert into usuarios (nome ,login, senha, dataNascimento, RG, CPF,TelContato,Endereco) " +
					"values (?, ?, MD5(?), ?, ?, ?, ?, ?)";
		
		try{
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getLogin());
			stmt.setString(3, usuario.getSenha());
			if(usuario.getDataNascimento() != null)
			{
				stmt.setDate(4, new java.sql.Date(usuario.getDataNascimento().getTimeInMillis()));
			}
			else
			{
				stmt.setDate(4, null);
			}
			stmt.setString(5, usuario.getRG());
			stmt.setString(6, usuario.getCPF());
			stmt.setString(7, usuario.getTelContato());
			stmt.setString(8, usuario.getEndereco());
			stmt.execute();
			stmt.close();
		}catch (SQLException e){
			throw new RuntimeException (e);
		}
	}
	
	public List<Usuario> lista(){
		try{
			List<Usuario> usuarios = new ArrayList<Usuario>();
			PreparedStatement stmt = this.connection.prepareStatement
			("SELECT * FROM usuarios");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next())
			{
				Usuario usuario = new Usuario();
				
				usuario.setId(rs.getLong("id"));
				usuario.setNome(rs.getString("nome"));
				usuario.setLogin(rs.getString("login"));
				if(rs.getDate("dataNascimento") != null){
					Calendar dataNascimento = Calendar.getInstance();
					dataNascimento.setTime(rs.getDate("dataNascimento"));
					usuario.setDataNascimento(dataNascimento);
				}
				//usuario.setAltura(rs.getFloat("altura"));
				usuarios.add(usuario);
				usuario.setLogin(rs.getString("RG"));
				usuario.setLogin(rs.getString("CPF"));
				usuario.setLogin(rs.getString("TelContato"));
				usuario.setLogin(rs.getString("Endereco"));
			}
			rs.close();
			stmt.close();
			return usuarios;
	
			}catch(SQLException e){
				throw new RuntimeException(e);
		}
	}
	
	public void remove(Usuario usuario){
		try{
			PreparedStatement stmt = this.connection.prepareStatement
			("delete from usuarios where id = ?");
			
			stmt.setLong(1, usuario.getId());
			stmt.execute();
			stmt.close();

			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public Usuario buscaPorId(Long id){
		
		try{
			PreparedStatement stmt = this.connection.prepareStatement("select * from usuarios");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next())
			{

				if(id == rs.getLong("id"))
				{
					Usuario usuario = new Usuario();

					usuario.setId(rs.getLong("id"));
					usuario.setNome(rs.getString("nome"));
					usuario.setLogin(rs.getString("login"));
					if(rs.getDate("dataNascimento") != null){
						Calendar dataNascimento = Calendar.getInstance();
						dataNascimento.setTime(rs.getDate("dataNascimento"));
						usuario.setDataNascimento(dataNascimento);
					}
					usuario.setLogin(rs.getString("RG"));
					usuario.setLogin(rs.getString("CPF"));
					usuario.setLogin(rs.getString("TelContato"));
					usuario.setLogin(rs.getString("Endereco"));
					return usuario;
				}
			}
				return null;
			}catch(SQLException e){
				throw new RuntimeException(e);
			}	
	}
	
	
	public void altera(Usuario usuario){
		String sql = "update usuarios set nome=? , login=?, senha=MD5(?), dataNascimento=?, RG = ?, CPF= ?,TelContato=?,Endereco=? where id=?";
		
		try{
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getLogin());
			stmt.setString(3, usuario.getSenha());
			if(usuario.getDataNascimento() != null)
			{
				stmt.setDate(4, new java.sql.Date(usuario.getDataNascimento().getTimeInMillis()));
			}
			else
			{
				stmt.setDate(4, null);
			}			
			stmt.setString(5, usuario.getRG());
			stmt.setString(6, usuario.getCPF());
			stmt.setString(7, usuario.getTelContato());
			stmt.setString(8, usuario.getEndereco());
			stmt.setLong(9, usuario.getId());
				
			stmt.execute();
			stmt.close();
			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
}
