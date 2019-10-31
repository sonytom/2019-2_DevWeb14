package br.com.cadastro.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.cadastro.model.Fornecedor;

@Repository
public class FornecedorDAO {
	Connection connection;
	
	@Autowired
	public FornecedorDAO(DataSource dataSource) throws ClassNotFoundException{
		try {
            this.connection = dataSource.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}
	
	public void adiciona(Fornecedor fornecedor){
		String sql = "insert into fornecedores (id, nome , cnpj, telefone, e-mail) " +
					"values (?, ?, MD5(?), ?, ?)";
		
		try{
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setInt(1, fornecedor.getId());
			stmt.setString(2, fornecedor.getNome());
			stmt.setString(3, fornecedor.getCnpj());
			stmt.setLong(3, fornecedor.gettelContato());
			stmt.setString(3, fornecedor.getEmail());
			
			
			stmt.execute();
			stmt.close();
		}catch (SQLException e){
			throw new RuntimeException (e);
		}
	}
	
	public List<Fornecedor> lista(){
		try{
			List<Fornecedor> fornecedores = new ArrayList<Fornecedor>();
			PreparedStatement stmt = this.connection.prepareStatement
			("SELECT * FROM fornecedores");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next())
			{
				Fornecedor fornecedor = new Fornecedor();
				
				fornecedor.setId(rs.getInt("id"));
				fornecedor.setNome(rs.getString("nome"));
				fornecedor.setCnpj(rs.getString("CNPJ"));
				fornecedor.settelContato(rs.getLong("Telefone"));
				fornecedor.setEmail(rs.getString("E-mail"));
				}
				
			
			rs.close();
			stmt.close();
			return fornecedores;
	
			}catch(SQLException e){
				throw new RuntimeException(e);
		}
	}
	
	public void remove(Fornecedor fornecedor){
		try{
			PreparedStatement stmt = this.connection.prepareStatement
			("delete from fornecedores where id = ?");
			
			stmt.setLong(1, fornecedor.getId());
			stmt.execute();
			stmt.close();

			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public Fornecedor buscaPorId(int id){
		
		try{
			PreparedStatement stmt = this.connection.prepareStatement("select * from usuarios");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next())
			{

				if(id == rs.getInt("id"))
				{
					Fornecedor fornecedor = new Fornecedor();

					fornecedor.setId(rs.getInt("id"));
					fornecedor.setNome(rs.getString("nome"));
					fornecedor.setCnpj(rs.getString("CNPJ"));
					fornecedor.settelContato(rs.getLong("Telefone"));
					fornecedor.setEmail(rs.getString("E-mail"));
					
					}
			}
				return null;
			}catch(SQLException e){
				throw new RuntimeException(e);
			}	
	}
	
	
	public void altera(Fornecedor fornecedor){
		String sql = "update fornecedores set Nome=?, CNPJ=?, Telefoneo=?, E-mail=? where id=?";
		
		try{
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			
			stmt.setInt(1, fornecedor.getId());
			stmt.setString(2, fornecedor.getNome());
			stmt.setString(3, fornecedor.getCnpj());
			stmt.setLong(3, fornecedor.gettelContato());
			stmt.setString(3, fornecedor.getEmail());
			
				
			stmt.execute();
			stmt.close();
			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
}
