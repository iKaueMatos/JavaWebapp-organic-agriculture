package controller;

import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Trabalhador;

@WebServlet("/AlteraTrabalhadorController")
public class AlteraTrabalhadorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public AlteraTrabalhadorController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        System.out.println("RECEBI A REQUISIÇÃO | POST");
       
        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String decodedNome = URLDecoder.decode(nome, "UTF-8");
        String sobrenome = request.getParameter("sobrenome");
        String decodedSobrenome = URLDecoder.decode(sobrenome, "UTF-8");
        String localidade = request.getParameter("localidade");
        String decodedLocalidade = URLDecoder.decode(localidade, "UTF-8");
        String telefone = request.getParameter("telefone");
        String idade = request.getParameter("idade");
        String cep = request.getParameter("cep");
        String uf = request.getParameter("uf");
        String logradouro = request.getParameter("logradouro");
        String decodedLogradouro = URLDecoder.decode(logradouro, "UTF-8");
        String bairro = request.getParameter("bairro");
        String decodedBairro = URLDecoder.decode(bairro, "UTF-8");
        System.out.println("post ok");
        
        //Validacao
       
        

        Trabalhador trab = new Trabalhador(decodedNome, decodedSobrenome, decodedLocalidade, telefone,
        		idade, cep, uf, decodedLogradouro, decodedBairro);
        trab.setId(id);
        trab.conectar();
        trab.alterar();
        RequestDispatcher dispacher = request.getRequestDispatcher("table.jsp");
        dispacher.forward(request, response);
	}

}
