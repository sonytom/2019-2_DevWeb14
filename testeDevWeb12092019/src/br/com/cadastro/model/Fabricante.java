package br.com.cadastro.model;

public class Fabricante {
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCnpj() {
		return cnpj;
	}
	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}
	public Long gettelContato() {
		return telContato;
	}
	public void setTelContato(Long telContato) {
		this.telContato = telContato;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	private int id;	
	private String nome;
	private String cnpj;
	private Long telContato;
	private String email;
	
	
	
	

}
