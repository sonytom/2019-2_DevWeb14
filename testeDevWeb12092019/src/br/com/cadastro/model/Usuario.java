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
	private String cpf;
	@Size(min=1 , message="Preencher Campo")
	private String telContato;
	@Size(min=1 , message="Preencher Campo")
	private String endereco;	
	@Size(min=1 , message="Preencher Campo")
	private String rg;
	
	
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
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
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
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getTelContato() {
		return telContato;
	}
	public void setTelContato(String telContato) {
		this.telContato = telContato;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	
	
	public String getRg() {
		return rg;
	}
	public void setRg(String rg) {
		this.rg = rg;
	}

	
	
	

}
