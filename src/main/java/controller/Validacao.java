package controller;

import java.io.IOException;

public class Validacao {

	//Validação da entrada de dados que recebida pelo POST,Onde ficara resposavel por fazer todo o tratamento dos dados
	public static String validaString(String entrada) {
		
		entrada = entrada.replaceAll("\\s+", ""); // Retira os espaços da entrada
		entrada = entrada.replaceAll("-", "");
		entrada = entrada.replaceAll("[0123456789]", "");
		boolean resultado = entrada.matches("[A-Z][a-z]{2,}");
		System.out.println(entrada); 
		
		return entrada; 
	}
	
	//Metodo de validação dos numeros que serão inseridos dentro do banco de dados
	public static String validaNumerico(String numerico){
		
		String n1 = numerico;
		n1 = numerico.replaceAll("\\s+", "");
		n1 = n1.replace("(","");
		n1 = n1.replace(")","");
		n1 = n1.replaceAll("-", "");
		
		if (n1.matches("[0-9]{11,13}") == true || n1.matches("[0-9]{2,2}") == true) {
			String result = n1;
			System.out.println(result);
			return result;
		} else if (n1.matches("[0-9]{8,8}") == true){
			String result = n1;
			System.out.println(result);
			return result;
		}
		String valor = "0";
		return valor;
		
	}
}
