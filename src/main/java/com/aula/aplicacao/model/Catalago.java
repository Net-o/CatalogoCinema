package com.aula.aplicacao.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name = "tb_catalagoFilmes")
public class Catalago {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
    
    @NotBlank(message = "A URL é obrigatório.")
    private String urlImagem;
    
    @NotBlank(message = "O Titulo é obrigatório.")
    @Column(length = 80)
    private String titulo; 
    
    @NotBlank(message = "O Genero é obrigatório.")
    @Column(length = 80)
    private String genero;
    
    @NotNull(message = "Informe um valor válido.")
    @Min(value = 1, message = "Informe uma faixa etária válida.")
    private Integer faixaEtaria;
    
    @NotNull(message = "Informe um valor válido.")
    @Min(value = 1, message = "Informe um valor válido.")
    private Integer duracao;
    
    @NotNull(message = "Informe um valor válido.")
    @Min(value = 1, message = "Informe um valor entre 1 e 5.")
    @Max(value = 5, message = "Informe um valor entre 1 e 5.")
    private Float pontuacao;

	@Column(length = 254)
	private String descricao;
    @NotNull(message = "Informe um valor válido.")
    @Min(value = 1, message = "Informe um valor válido.")
    private Integer ano;

	public Long getId(){
		return id;
	}
	public void setId(Long id){
		this.id = id;
	}
	public String getUrlImagem() {
		return urlImagem;
	}

	public void setUrlImagem(String urlImagem) {
		this.urlImagem = urlImagem;
	}

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}

	public Integer getFaixaEtaria() {
		return faixaEtaria;
	}

	public void setFaixaEtaria(Integer faixaEtaria) {
		this.faixaEtaria = faixaEtaria;
	}

	public Integer getDuracao() {
		return duracao;
	}

	public void setDuracao(Integer duracao) {
		this.duracao = duracao;
	}

	public Float getPontuacao() {
		return pontuacao;
	}

	public void setPontuacao(Float pontuacao) {
		this.pontuacao = pontuacao;
	}
	public String getDescricao(){
		return descricao;
	}
	public void setDescricao(String descricao){
		this.descricao = descricao;
	}

	public Integer getAno() {
		return ano;
	}

	public void setAno(Integer ano) {
		this.ano = ano;
	}


    
}