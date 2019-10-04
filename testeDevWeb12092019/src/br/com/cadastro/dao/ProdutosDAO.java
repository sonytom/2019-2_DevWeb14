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

import br.com.cadastro.model.Produtos;
import br.com.cadastro.model.Usuario;

@Repository
public class ProdutosDAO {
	Connection connection;
	
	@Autowired
	public ProdutosDAO(DataSource dataSource) throws ClassNotFoundException{
		try {
            this.connection = dataSource.getConnection();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
	}
	
	public void adiciona(Produtos produtos){
		String sql = "insert into usuarios (idProduto,idFabricante,idDistribuidora ,nome, dtInclusao,dtFabricacao,dtValidade,lote,precolot,qtdLote,precoqtd) " +
					"values (?,?, ?, ? , ?, ?, ? , ?, ? , ? , ?)";
		

	
		
		try{
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setLong(1, produtos.getIdProduto());
			stmt.setLong(2, produtos.getIdFabricante());
			stmt.setLong(3, produtos.getIdDistribuidora());
			stmt.setString(4, produtos.getNome());
			if(produtos.getDtInclusao() != null)
			{
				stmt.setDate(5, new java.sql.Date(produtos.getDtInclusao().getTimeInMillis()));
			}
			else
			{
				stmt.setDate(5, null);
			}
			if(produtos.getDtFabricacao() != null)
			{
				stmt.setDate(6, new java.sql.Date(produtos.getDtFabricacao().getTimeInMillis()));
			}
			else
			{
				stmt.setDate(6, null);
			}
			if(produtos.getDtValidade() != null)
			{
				stmt.setDate(7, new java.sql.Date(produtos.getDtValidade().getTimeInMillis()));
			}
			else
			{
				stmt.setDate(7, null);
			}
			
			stmt.setString(8, produtos.getLote());
			stmt.setFloat(9, produtos.getPrecolot());
			stmt.setFloat(10, produtos.getQtdLote());
			stmt.setFloat(11, produtos.getPrecoqtd());
			stmt.execute();
			stmt.close();
		}catch (SQLException e){
			throw new RuntimeException (e);
		}
	}
	
	
	
	
	
	public List<Produtos> lista(){
		try{
			List<Produtos> produtos = new ArrayList<Produtos>();
			PreparedStatement stmt = this.connection.prepareStatement
			("SELECT * FROM produtos");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next())
			{
				Produtos produto = new Produtos();
				
				produto.setIdProduto(rs.getLong("idProduto"));
				produto.setIdFabricante(rs.getLong("IdFabricante"));
				produto.setIdDistribuidora(rs.getLong("IdDistribuidora"));
				produto.setNome(rs.getString("nome"));
				produto.setDosagem(rs.getFloat("dosagem"));
				
				if(rs.getDate("dtInclusao") != null){
					Calendar dtInclusao = Calendar.getInstance();
					dtInclusao.setTime(rs.getDate("dtInclusao"));
			produto.setDtInclusao(dtInclusao);
				}
				
				if(rs.getDate("dtFabricacao") != null){
					Calendar dtFabricacao = Calendar.getInstance();
					dtFabricacao.setTime(rs.getDate("dtFabricacao"));
			produto.setDtFabricacao(dtFabricacao);
				}
				
				if(rs.getDate("dtdtValidade") != null){
					Calendar dtValidade = Calendar.getInstance();
					dtValidade.setTime(rs.getDate("dtValidade"));
			produto.setDtValidade(dtValidade);
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
	
	

	/*	
	public void remove(Produtos produto){
		try{
			PreparedStatement stmt = this.connection.prepareStatement
			("delete from usuarios where id = ?");
			
			stmt.setLong(1, produto.getIdProduto());
			stmt.execute();
			stmt.close();

			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	
	
	public Produtos buscaPorId(Long id){
		
		try{
			PreparedStatement stmt = this.connection.prepareStatement("select * from usuarios");
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next())
			{

				if(id == rs.getLong("id"))
				{
					Produtos produto = new Produtos();

					produto.setId(rs.getLong("id"));
					produto.setNome(rs.getString("nome"));
					produto.setLogin(rs.getString("login"));
					if(rs.getDate("dataNascimento") != null){
						Calendar dataNascimento = Calendar.getInstance();
						dataNascimento.setTime(rs.getDate("dataNascimento"));
						produto.setDataNascimento(dataNascimento);
					}
					usuario.setAltura(rs.getFloat("altura"));
					
					return produto;
				}
			}
				return null;
			}catch(SQLException e){
				throw new RuntimeException(e);
			}	
	}
	
	
	public void altera(Produtos produto){
		String sql = "update usuarios set nome=? , login=?, senha=MD5(?), dataNascimento=?, altura=? where id=?";
		
		try{
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			
			stmt.setString(1, produto.getNome());
			stmt.setString(2, produto.getLogin());
			stmt.setString(3, produto.getSenha());
			if(usuario.getDataNascimento() != null)
			{
				stmt.setDate(4, new java.sql.Date(produto.getDataNascimento().getTimeInMillis()));
			}
			else
			{
				stmt.setDate(4, null);
			}
			stmt.setFloat(5, produto.getAltura());
			stmt.setLong(6, produto.getId());
				
			stmt.execute();
			stmt.close();
			
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}
	*/
}
