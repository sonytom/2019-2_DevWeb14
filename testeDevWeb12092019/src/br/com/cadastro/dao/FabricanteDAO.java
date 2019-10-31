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
import br.com.cadastro.model.Fabricante;


@Repository
public class FabricanteDAO {
	Connection connection;
	
	@Autowired
	public FabricanteDAO(DataSource dataSource) throws ClassNotFoundException{
		try {
            this.connection = dataSource.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}
	
	public void adiciona(Fabricante fabricante){
		String sql = "insert into fabricantes (id, nome , cnpj, TelContato, email) " +
					"values (?, ?, ?, ?, ?)";
		
		try{
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setInt(1, fabricante.getId());
			stmt.setString(2, fabricante.getNome());
			stmt.setString(3, fabricante.getCnpj());
			stmt.setLong(3, fabricante.getTelContato());
			stmt.setString(3, fabricante.getEmail());
			
			
			stmt.execute();
			stmt.close();
		}catch (SQLException e){
			throw new RuntimeException (e);
		}
	}
	
	public List<Fabricante> lista(){
		try{
			List<Fabricante> fabricantes = new ArrayList<Fabricante>();
			PreparedStatement stmt = this.connection.prepareStatement
			("SELECT * FROM fabricantes");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next())
			{
				Fabricante fabricante = new Fabricante();
				
				fabricante.setId(rs.getInt("id"));
				fabricante.setNome(rs.getString("nome"));
				fabricante.setCnpj(rs.getString("CNPJ"));
				fabricante.setTelContato(rs.getLong("TelContato"));
				fabricante.setEmail(rs.getString("Email"));
				}
				
			
			rs.close();
			stmt.close();
			return fabricantes;
	
			}catch(SQLException e){
				throw new RuntimeException(e);
		}
	}
	
	public void remove(Fabricante fabricante){
		try{
			PreparedStatement stmt = this.connection.prepareStatement
			("delete from fabricantes where id = ?");
			
			stmt.setLong(1, fabricante.getId());
			stmt.execute();
			stmt.close();

			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	public Fabricante buscaPorId(int id){
		
		try{
			PreparedStatement stmt = this.connection.prepareStatement("select * from fornecedor");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next())
			{

				if(id == rs.getInt("id"))
				{
					Fabricante fabricante = new Fabricante();

					fabricante.setId(rs.getInt("id"));
					fabricante.setNome(rs.getString("nome"));
					fabricante.setCnpj(rs.getString("CNPJ"));
					fabricante.setTelContato(rs.getLong("TelContato"));
					fabricante.setEmail(rs.getString("Email"));
					
					}
			}
				return null;
			}catch(SQLException e){
				throw new RuntimeException(e);
			}	
	}
	
	
	public void altera(Fabricante fabricante){
		String sql = "update fabricantesd set Nome=?, CNPJ=?, TelContato=?, Email=? where id=?";
		
		try{
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			
			stmt.setInt(1, fabricante.getId());
			stmt.setString(2, fabricante.getNome());
			stmt.setString(3, fabricante.getCnpj());
			stmt.setLong(3, fabricante.getTelContato());
			stmt.setString(3, fabricante.getEmail());
			
				
			stmt.execute();
			stmt.close();
			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
}
