package br.com.cadastro.model;

import java.util.Calendar;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

public class Produto {

	
	private Long idproduto;
	/**
	 * @return the idproduto
	 */
	public Long getIdproduto() {
		return idproduto;
	}
	/**
	 * @param idproduto the idproduto to set
	 */
	public void setIdproduto(Long idproduto) {
		this.idproduto = idproduto;
	}
	/**
	 * @return the idfabricante
	 */
	public Long getIdfabricante() {
		return idfabricante;
	}
	/**
	 * @param idfabricante the idfabricante to set
	 */
	public void setIdfabricante(Long idfabricante) {
		this.idfabricante = idfabricante;
	}
	/**
	 * @return the iddistribuidora
	 */
	public Long getIddistribuidora() {
		return iddistribuidora;
	}
	/**
	 * @param iddistribuidora the iddistribuidora to set
	 */
	public void setIddistribuidora(Long iddistribuidora) {
		this.iddistribuidora = iddistribuidora;
	}
	/**
	 * @return the nome
	 */
	public String getNome() {
		return nome;
	}
	/**
	 * @param nome the nome to set
	 */
	public void setNome(String nome) {
		this.nome = nome;
	}
	/**
	 * @return the dosagem
	 */
	public float getDosagem() {
		return dosagem;
	}
	/**
	 * @param dosagem the dosagem to set
	 */
	public void setDosagem(float dosagem) {
		this.dosagem = dosagem;
	}
	/**
	 * @return the dtinclusao
	 */
	public Calendar getDtinclusao() {
		return dtinclusao;
	}
	/**
	 * @param dtinclusao the dtinclusao to set
	 */
	public void setDtinclusao(Calendar dtinclusao) {
		this.dtinclusao = dtinclusao;
	}
	/**
	 * @return the dtfabricacao
	 */
	public Calendar getDtfabricacao() {
		return dtfabricacao;
	}
	/**
	 * @param dtfabricacao the dtfabricacao to set
	 */
	public void setDtfabricacao(Calendar dtfabricacao) {
		this.dtfabricacao = dtfabricacao;
	}
	/**
	 * @return the dtvalidade
	 */
	public Calendar getDtvalidade() {
		return dtvalidade;
	}
	/**
	 * @param dtvalidade the dtvalidade to set
	 */
	public void setDtvalidade(Calendar dtvalidade) {
		this.dtvalidade = dtvalidade;
	}
	/**
	 * @return the lote
	 */
	public String getLote() {
		return lote;
	}
	/**
	 * @param lote the lote to set
	 */
	public void setLote(String lote) {
		this.lote = lote;
	}
	/**
	 * @return the precolot
	 */
	public float getPrecolot() {
		return precolot;
	}
	/**
	 * @param precolot the precolot to set
	 */
	public void setPrecolot(float precolot) {
		this.precolot = precolot;
	}
	/**
	 * @return the qtdLote
	 */
	public float getQtdLote() {
		return qtdLote;
	}
	/**
	 * @param qtdLote the qtdLote to set
	 */
	public void setQtdLote(float qtdLote) {
		this.qtdLote = qtdLote;
	}
	/**
	 * @return the precoqtd
	 */
	public float getPrecoqtd() {
		return precoqtd;
	}
	/**
	 * @param precoqtd the precoqtd to set
	 */
	public void setPrecoqtd(float precoqtd) {
		this.precoqtd = precoqtd;
	}
	private Long idfabricante;
	private Long iddistribuidora;
	private String nome;
	private float  dosagem;
	private Calendar dtinclusao;
	private Calendar dtfabricacao;
	private Calendar dtvalidade;
	private String  lote;
	private float  precolot;
	private float  qtdLote;
	private float  precoqtd;
	
	
	
	
	

}
