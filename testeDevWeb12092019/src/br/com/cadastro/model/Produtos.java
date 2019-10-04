package br.com.cadastro.model;

import java.util.Calendar;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

public class Produtos {

	

	public Long getIdProduto() {
		return idProduto;
	}
	public void setIdProduto(Long idProduto) {
		this.idProduto = idProduto;
	}
	public Long getIdFabricante() {
		return idFabricante;
	}
	public void setIdFabricante(Long idFabricante) {
		this.idFabricante = idFabricante;
	}
	public Long getIdDistribuidora() {
		return idDistribuidora;
	}
	public void setIdDistribuidora(Long idDistribuidora) {
		this.idDistribuidora = idDistribuidora;
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
	public Calendar getDtInclusao() {
		return dtInclusao;
	}
	public void setDtInclusao(Calendar dtInclusao) {
		this.dtInclusao = dtInclusao;
	}
	public Calendar getDtFabricacao() {
		return dtFabricacao;
	}
	public void setDtFabricacao(Calendar dtFabricacao) {
		this.dtFabricacao = dtFabricacao;
	}
	public Calendar getDtValidade() {
		return dtValidade;
	}
	public void setDtValidade(Calendar dtValidade) {
		this.dtValidade = dtValidade;
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
	private Long idProduto;
	private Long idFabricante;
	private Long idDistribuidora;
	private String nome;
	private float  dosagem;
	private Calendar dtInclusao;
	private Calendar dtFabricacao;
	private Calendar dtValidade;
	private String  lote;
	private float  precolot;
	private float  qtdLote;
	private float  precoqtd;
	
	
	
	
	

}
