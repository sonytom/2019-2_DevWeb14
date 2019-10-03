package br.com.cadastro.model;

import java.util.Calendar;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

public class CadastroUsuario {
	private Long id;
	private long idCadastroUsuario;	
	private String login;	
	private String nome;
	private String sexo;
	private String RG;
	private String CPF;		
	private String TelContato;
	private String Endereco;
	private String descricao;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public long getIdCadastroUsuario() {
		return idCadastroUsuario;
	}
	public void setIdCadastroUsuario(long idCadastroUsuario) {
		this.idCadastroUsuario = idCadastroUsuario;
	}
	
	public String getRG() {
		return RG;
	}
	public void setRG(String rG) {
		RG = rG;
	}
	public String getCPF() {
		return CPF;
	}
	public void setCPF(String cPF) {
		CPF = cPF;
	}
	public String getTelContato() {
		return TelContato;
	}
	public void setTelContato(String telContato) {
		TelContato = telContato;
	}
	public String getEndereco() {
		return Endereco;
	}
	public void setEndereco(String endereco) {
		Endereco = endereco;
	}	
	

}
