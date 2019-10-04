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

import br.com.cadastro.model.Produto;


@Repository
public class ProdutoDAO {
	Connection connection;
	
	@Autowired
	public ProdutoDAO(DataSource dataSource) throws ClassNotFoundException{
		try {
            this.connection = dataSource.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}
	
	public void adiciona(Produto produto){
		String sql = "insert into produtos (idproduto,idfabricante,iddistribuidora ,nome,dosagem, dtinclusao,dtfabricacao,dtvalidade,lote,precolot,qtdLote,precoqtd) " +
					"values (?,?, ?, ? , ?, ?, ? , ?, ? , ? , ?,?)";
		

	
		
		try{
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setLong(1, produto.getIdproduto());
			stmt.setLong(2, produto.getIdfabricante());
			stmt.setLong(3, produto.getIddistribuidora());
			stmt.setString(4, produto.getNome());
			stmt.setFloat(5, produto.getDosagem());
			
			if(produto.getDtinclusao() != null)
			{
				stmt.setDate(6, new java.sql.Date(produto.getDtinclusao().getTimeInMillis()));
			}
			else
			{
				stmt.setDate(6, null);
			}
			
			if(produto.getDtfabricacao() != null)
			{
				stmt.setDate(7, new java.sql.Date(produto.getDtfabricacao().getTimeInMillis()));
			}
			else
			{
				stmt.setDate(7, null);
			}
			
			if(produto.getDtvalidade() != null)
			{
				stmt.setDate(8, new java.sql.Date(produto.getDtvalidade().getTimeInMillis()));
			}
			else
			{
				stmt.setDate(8, null);
			}
			
			stmt.setString(9, produto.getLote());
			stmt.setFloat(10, produto.getPrecolot());
			stmt.setFloat(11, produto.getQtdLote());
			stmt.setFloat(12, produto.getPrecoqtd());
			stmt.execute();
			stmt.close();
		}catch (SQLException e){
			throw new RuntimeException (e);
		}
	}
	

	public List<Produto> lista(){
		try{
			List<Produto> produtos = new ArrayList<Produto>();
			PreparedStatement stmt = this.connection.prepareStatement
			("SELECT * FROM produtos");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next())
			{
				Produto produto = new Produto();
				
				produto.setIdproduto(rs.getLong("idproduto"));
				produto.setIdfabricante(rs.getLong("idfabricante"));
				produto.setIddistribuidora(rs.getLong("iddistribuidora"));
				produto.setNome(rs.getString("nome"));
				produto.setDosagem(rs.getFloat("dosagem"));
				
				if(rs.getDate("dtinclusao") != null){
					Calendar dtinclusao = Calendar.getInstance();
					dtinclusao.setTime(rs.getDate("dtinclusao"));
			produto.setDtinclusao(dtinclusao);
				}
				
				if(rs.getDate("dtfabricacao") != null){
					Calendar dtfabricacao = Calendar.getInstance();
					dtfabricacao.setTime(rs.getDate("dtfabricacao"));
			produto.setDtfabricacao(dtfabricacao);
				}
				
				if(rs.getDate("dtvalidade") != null){
					Calendar dtvalidade = Calendar.getInstance();
					dtvalidade.setTime(rs.getDate("dtvalidade"));
			produto.setDtvalidade(dtvalidade);
				}
				
				
				
				produto.setLote(rs.getString("lote"));
				produto.setPrecolot(rs.getFloat("precolot"));
				produto.setQtdLote(rs.getFloat("qtdLote"));
				produto.setPrecoqtd(rs.getFloat("precoqtd"));
				produtos.add(produto);
				
				
				
			}
			rs.close();
			stmt.close();
			return produtos;
	
			}catch(SQLException e){
				throw new RuntimeException(e);
		}
	}
	
	

		
	public void remove(Produto produto){
		try{
			PreparedStatement stmt = this.connection.prepareStatement
			("delete from produtos where idproduto = ?");
			
			stmt.setLong(1, produto.getIdproduto());
			stmt.execute();
			stmt.close();

			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	
	public Produto buscaPorId(Long idproduto){
		
		try{
			PreparedStatement stmt = this.connection.prepareStatement("select * from produtos");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next())
			{

				if(idproduto == rs.getLong("idproduto"))
				{
					
					
					
					Produto produto = new Produto();

					produto.setIdproduto(rs.getLong("idproduto"));
					produto.setIdfabricante(rs.getLong("idfabricante"));
					produto.setIddistribuidora(rs.getLong("iddistribuidora"));
					produto.setNome(rs.getString("nome"));
					produto.setDosagem(rs.getFloat("dosagem"));
					
					if(rs.getDate("dtinclusao") != null){
						Calendar dtinclusao = Calendar.getInstance();
						dtinclusao.setTime(rs.getDate("dtinclusao"));
				produto.setDtinclusao(dtinclusao);
					}
					
					if(rs.getDate("dtfabricacao") != null){
						Calendar dtfabricacao = Calendar.getInstance();
						dtfabricacao.setTime(rs.getDate("dtfabricacao"));
				produto.setDtfabricacao(dtfabricacao);
					}
					
					if(rs.getDate("dtvalidade") != null){
						Calendar dtvalidade = Calendar.getInstance();
						dtvalidade.setTime(rs.getDate("dtvalidade"));
				produto.setDtvalidade(dtvalidade);
					}
					
					
					
					produto.setLote(rs.getString("lote"));
					produto.setPrecolot(rs.getFloat("precolot"));
					produto.setQtdLote(rs.getFloat("qtdLote"));
					produto.setPrecoqtd(rs.getFloat("precoqtd"));
		
			
					
					return produto;
				}
			}
				return null;
			}catch(SQLException e){
				throw new RuntimeException(e);
			}	
	}
	
	
	public void altera(Produto produto){
		String sql = "update produto set idproduto=? , idfabricante=?, iddistribuidora=?,nome=?, dosagem=?, dtinclusao=?,dtfabricacao=?,dtvalidade=?,lote=?,precolot=?,qtdLote=?,precoqtd=? where id=?";
		
		try{
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			
			stmt.setLong(1, produto.getIdproduto());
			stmt.setLong(2, produto.getIdfabricante());
			stmt.setLong(3, produto.getIddistribuidora());
			stmt.setString(4, produto.getNome());
			stmt.setFloat(5, produto.getDosagem());
			
			if(produto.getDtinclusao() != null)
			{
				stmt.setDate(6, new java.sql.Date(produto.getDtinclusao().getTimeInMillis()));
			}
			else
			{
				stmt.setDate(6, null);
			}
			
			if(produto.getDtfabricacao() != null)
			{
				stmt.setDate(7, new java.sql.Date(produto.getDtfabricacao().getTimeInMillis()));
			}
			else
			{
				stmt.setDate(7, null);
			}
			
			if(produto.getDtvalidade() != null)
			{
				stmt.setDate(8, new java.sql.Date(produto.getDtvalidade().getTimeInMillis()));
			}
			else
			{
				stmt.setDate(8, null);
			}
			
			stmt.setString(9, produto.getLote());
			stmt.setFloat(10, produto.getPrecolot());
			stmt.setFloat(11, produto.getQtdLote());
			stmt.setFloat(12, produto.getPrecoqtd());
			stmt.execute();
			stmt.close();
			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
}
