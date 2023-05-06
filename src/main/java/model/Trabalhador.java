package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

import controller.Validacao;
import dao.Conexao;

public class Trabalhador extends Conexao {
	private Integer id;
	private String nome;
	private String sobrenome;
	private String localidade;
	private String telefone;
	private String idade;
	private String cep;
	private String uf;
	private String logradouro;
	private String bairro;
	
	
	public Trabalhador() {
		
	}
	
	 public Trabalhador(String nome, String sobrenome ,String localidade, String telefone,
			 String idade, String cep, String uf, String logradouro, String bairro){
		setNome(Validacao.validaString(nome));
		setSobrenome(Validacao.validaString(sobrenome));
		setLocalidade(localidade);
		setTelefone(Validacao.validaNumerico(telefone));
		setIdade(Validacao.validaNumerico(idade));
		setCep(Validacao.validaNumerico(cep));
		setUf(Validacao.validaString(uf));
		setLogradouro(logradouro);
		setBairro(bairro);
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getLocalidade() {
		return localidade;
	}

	public void setLocalidade(String localidade) {
		this.localidade = localidade;
	}

	public String getIdade() {
		return idade;
	}

	public void setIdade(String idade) {
		this.idade = idade;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	
	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}
	
	public String getLogradouro() {
		return logradouro;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}
	
	public void setId(Integer id){
		this.id = id;
	}
	
	public Integer getId(){
		return id;
	}
	
	
	public Trabalhador buscarProdutoPorId(int id) {
		return new Conexao().BuscarTrabalhadorPorID(id);
	}
	
	public void excluir(int id){
		new Conexao().ExcluirTrabalhador(id);
	}
	
	public void alterar() {
		new Conexao().AlterarTrabalhador(this);
	}
	
	public ArrayList<Trabalhador> buscaTabela(String nome){
		return new Conexao().buscaTabela(nome);
	}
}
