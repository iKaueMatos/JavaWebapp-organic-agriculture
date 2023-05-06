package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;
import model.Trabalhador;

public class Conexao {
	
	String url = "jdbc:mysql://server12mysql.mysql.database.azure.com:3306/apsjava";
	public boolean conectar() {

	       try {
	    	   Class.forName("com.mysql.cj.jdbc.Driver");
	           Connection conn = DriverManager.getConnection(url, "Kaue", "Bontlindo12/");
	           System.out.println("Conectado ao banco de dados com sucesso");
	           boolean conectado = true;
	           return conectado;
	     
	       }catch (Exception e) {
	           System.out.println("Erro - Banco de dados Offline");
	           boolean conectado = false;
	           return conectado;
	       }
	      }

		
	public void insert(Trabalhador trabalhador) {
		String nome = trabalhador.getNome();
		String sobrenome = trabalhador.getSobrenome();
		String localidade = trabalhador.getLocalidade();
		String telefone = trabalhador.getTelefone();
		String idade = trabalhador.getIdade();
		String cep = trabalhador.getCep();
		String uf = trabalhador.getUf();
		String bairro = trabalhador.getBairro();
		String logradouro = trabalhador.getLogradouro();
		String url = "jdbc:mysql://server12mysql.mysql.database.azure.com:3306/apsjava";
		String comando = "INSERT INTO Trabalhadores (nome, sobrenome, localidade, telefone, idade, cep, uf, bairro, logradouro) VALUES ('"+ nome +"','"+sobrenome+"','"+localidade+"','"+telefone+"','"+idade+"','"+cep+"','"+uf+"','"+bairro+"','"+logradouro+"');";
		try {
			Connection conn = DriverManager.getConnection(url, "Kaue", "Bontlindo12/");
			//AQUI VAI O CÓDIGO
			PreparedStatement adicionar = conn.prepareStatement(comando);
			adicionar.executeUpdate();
			System.out.println("insert executado com sucesso");
			conn.close();
		} catch(Exception e) {
			System.out.println("Erro ao executar o insert");
		}
	}
	
	public void select() {
		String url = "jdbc:mysql://server12mysql.mysql.database.azure.com:3306/apsjava";
		String comando = "SELECT * FROM Trabalhadores;";
		int numero = 0;
		try {
			Connection conn = DriverManager.getConnection(url, "Kaue", "Bontlindo12/");
			PreparedStatement pesquisa = conn.prepareStatement(comando);
			ResultSet resultado = pesquisa.executeQuery();
			while (resultado.next()) {
				numero++;
				int id = resultado.getInt("id");
				String nome = resultado.getString("nome");
				String sobrenome = resultado.getString("sobrenome");
				String localidade = resultado.getString("localidade");
				String telefone = resultado.getString("telefone");
				String idade = resultado.getString("idade");
				String cep = resultado.getString("cep");
				String uf = resultado.getString("uf");
				String bairro = resultado.getString("bairro");
				String logradouro = resultado.getString("logradouro");
				System.out.println("\nID: "+id+"\nNome: "+nome+"\nSobrenome: "+sobrenome+"\nLocalidade: "+localidade+"\nTelefone: "+telefone+"\nIdade: "+idade+"\nCEP: "+cep+"\nUF: "+uf+"\nBairro: "+bairro+"\nLogradouro: "+logradouro);
			}
			System.out.println(numero + " resultados encontrados.");
			conn.close();
		} catch (Exception e) {
			System.out.println("Erro no select");
		}
	}
	
	public ArrayList<Trabalhador> buscaTabela(String nome){
		String url = "jdbc:mysql://server12mysql.mysql.database.azure.com:3306/apsjava";
		ArrayList<Trabalhador> trabalhador = null;
		Connection conn = null;
		Trabalhador pessoa = null;
		
		String comando = "SELECT * FROM Trabalhadores WHERE nome LIKE '%"+nome+"%';";
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url, "Kaue", "Bontlindo12/");
			PreparedStatement pesquisa = conn.prepareStatement(comando);

			ResultSet resultado = pesquisa.executeQuery();
			if(resultado != null){
				trabalhador = new ArrayList<Trabalhador>();
				while(resultado.next()) {
					pessoa = new Trabalhador();
					pessoa.setId(resultado.getInt("id"));
					pessoa.setNome(resultado.getString("nome"));
					pessoa.setSobrenome(resultado.getString("sobrenome"));
					pessoa.setLocalidade(resultado.getString("localidade"));
					pessoa.setTelefone(resultado.getString("telefone"));
					pessoa.setIdade(resultado.getString("idade"));
					pessoa.setCep(resultado.getString("cep"));
					pessoa.setUf(resultado.getString("uf"));
					pessoa.setBairro(resultado.getString("bairro"));
					pessoa.setLogradouro(resultado.getString("logradouro"));
					trabalhador.add(pessoa);
				}
			conn.close();
			}
			
		} catch (Exception e) {
			System.out.println("Erro no arraylist"+ e.getMessage());
		}
		
		
//		finally{
//			try{
//				if(pesquisa != null)
//					pesquisa.close();
//				} catch(Exception e2){
//					e2.printStackTrace();
//				}
//				
//				try{
//					if(conn2 != null)
//					conn2.close();
//				} catch (Exception e2){
//					e2.printStackTrace();
//				}
//			}
		 
		return trabalhador;
	}
	
	public void ExcluirTrabalhador(int id){
		String sql = "DELETE FROM Trabalhadores WHERE id = ?";
		PreparedStatement pesquisa2 = null;
		Connection conn = null;
		
		try {
			conn = DriverManager.getConnection(url, "Kaue", "Bontlindo12/");
			System.out.println("Conectado excluir");
			pesquisa2 = conn.prepareStatement(sql);
			pesquisa2.setInt(1, id);
			pesquisa2.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Trabalhador BuscarTrabalhadorPorID(int id){
		String url = "jdbc:mysql://server12mysql.mysql.database.azure.com:3306/apsjava";
		PreparedStatement pesquisa = null;
		String comando = "SELECT * FROM Trabalhadores WHERE id =" + id ;
		ResultSet rs = null;
		Connection conn = null;
		Trabalhador pessoa = null;
		
		try {
			conn = DriverManager.getConnection(url, "Kaue", "Bontlindo12/");
			pesquisa = conn.prepareStatement(comando);
			rs = pesquisa.executeQuery();
			if (rs != null && rs.next()) {
				pessoa = new Trabalhador();
					pessoa.setId(rs.getInt("id"));
					pessoa.setNome(rs.getString("nome"));
					pessoa.setSobrenome(rs.getString("sobrenome"));
					pessoa.setLocalidade(rs.getString("localidade"));
					pessoa.setTelefone(rs.getString("telefone"));
					pessoa.setIdade(rs.getString("idade"));
					pessoa.setCep(rs.getString("cep"));
					pessoa.setUf(rs.getString("uf"));
					pessoa.setBairro(rs.getString("bairro"));
					pessoa.setLogradouro(rs.getString("logradouro"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();	
  		} finally {
			  try {
				if (pesquisa != null){
					pesquisa.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if (conn != null){
					conn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			  
		  }
		
		return pessoa;
	}

	
	
	
	public void AlterarTrabalhador(Trabalhador tr) {
        System.out.println("entrou no metodo ok");

		String comando = "UPDATE Trabalhadores SET nome = '"+tr.getNome()+"', sobrenome = '"+tr.getSobrenome()+"', localidade = '"+tr.getLocalidade()+"', telefone = '"+tr.getTelefone()+"', idade = '"+tr.getIdade()+"', cep = '"+tr.getCep()+"', logradouro = '"+tr.getLogradouro()+"', bairro = '"+tr.getBairro()+"', uf = '"+tr.getUf()+"' WHERE id = "+tr.getId()+";";
		try {
			Connection conn = DriverManager.getConnection(url, "Kaue", "Bontlindo12/");
	        System.out.println("conectou ok");

			PreparedStatement pesquisa = conn.prepareStatement(comando);
			pesquisa.executeUpdate();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();		
		} 
		//finally{
//			try{
//				if(pesquisa != null)
//					pesquisa.close();
//				} catch(Exception e2){
//					e2.printStackTrace();
//				}
		
	}
	
	
	
	
	
	
	
	
//	JA FOI EXECUTADO!!!!!!!!!!
	
//	public static void createTable() {	
//		String url = "jdbc:mysql://server12mysql.mysql.database.azure.com:3306/apsjava";
//		String comando = "create table Trabalhadores (id INT(3) NOT NULL AUTO_INCREMENT, nome VARCHAR(20) NOT NULL, sobrenome VARCHAR(50) NOT NULL, localidade VARCHAR(200) NOT NULL, telefone VARCHAR(200) NOT NULL, idade VARCHAR(2) NOT NULL, cep VARCHAR(200) NOT NULL, uf VARCHAR(3) NOT NULL, bairro VARCHAR(200), primary key(id));";
//		try {
//			Connection conn = DriverManager.getConnection(url, "Kaue", "Bontlindo12/");
//			PreparedStatement adicionar = conn.prepareStatement(comando);
//			adicionar.execute();
//			System.out.println("tabela criada");
//			conn.close();
//		} catch (Exception e) {
//			System.out.println("Erro ao criar dados");
//		}	
//	}
	
  }
