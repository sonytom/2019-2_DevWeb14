package br.com.cadastro.model;

import java.util.Calendar;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

public class Usuario {
	private Long id;
	@Size(min=1 , message="Preencher Campo")
	private String login;
	@Size(min=1 , message="Preencher Campo")
	private String senha;
	@Size(min=1 , message="Preencher Campo")
	private String nome;
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Calendar dataNascimento;
	@NotNull(message="Campo em Branco")
	private String CPF;
	@Size(min=1 , message="Preencher Campo")
	private String TelContato;
	@Size(min=1 , message="Preencher Campo")
	private String Endereco;	
	@Size(min=1 , message="Preencher Campo")
	private String RG;
	@Size(min=1 , message="Preencher Campo")
	
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
	
	
	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Calendar getDataNascimento() {
		return dataNascimento;
	}
	public void setDataNascimento(Calendar dataNascimento) {
		this.dataNascimento = dataNascimento;
	}
	

}
