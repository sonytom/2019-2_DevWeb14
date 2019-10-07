package br.com.cadastro.model;

import java.util.Calendar;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

public class Produto {

	
	
	private Long idproduto;
	private Long idfabricante;
	private Long iddistribuidora;
	@Size(min=1 , message="Preencher Campo")
	private String nome;
	private float  dosagem;
	private String dtinclusao;
	private String dtfabricacao;
	private String dtvalidade;
	private String  lote;
	private float  precolot;
	private float  qtdLote;
	private float  precoqtd;
	
	public Long getIdproduto() {
		return idproduto;
	}
	public void setIdproduto(Long idproduto) {
		this.idproduto = idproduto;
	}
	public Long getIdfabricante() {
		return idfabricante;
	}
	public void setIdfabricante(Long idfabricante) {
		this.idfabricante = idfabricante;
	}
	public Long getIddistribuidora() {
		return iddistribuidora;
	}
	public void setIddistribuidora(Long iddistribuidora) {
		this.iddistribuidora = iddistribuidora;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public float getDosagem() {
		return dosagem;
	}
	public void setDosagem(float dosagem) {
		this.dosagem = dosagem;
	}
	public String getDtinclusao() {
		return dtinclusao;
	}
	public void setDtinclusao(String dtinclusao) {
		this.dtinclusao = dtinclusao;
	}
	public String getDtfabricacao() {
		return dtfabricacao;
	}
	public void setDtfabricacao(String dtfabricacao) {
		this.dtfabricacao = dtfabricacao;
	}
	public String getDtvalidade() {
		return dtvalidade;
	}
	public void setDtvalidade(String dtvalidade) {
		this.dtvalidade = dtvalidade;
	}
	public String getLote() {
		return lote;
	}
	public void setLote(String lote) {
		this.lote = lote;
	}
	public float getPrecolot() {
		return precolot;
	}
	public void setPrecolot(float precolot) {
		this.precolot = precolot;
	}
	public float getQtdLote() {
		return qtdLote;
	}
	public void setQtdLote(float qtdLote) {
		this.qtdLote = qtdLote;
	}
	public float getPrecoqtd() {
		return precoqtd;
	}
	public void setPrecoqtd(float precoqtd) {
		this.precoqtd = precoqtd;
	}
	
	
	
	
	

}
