package controller;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLDecoder;
import model.Trabalhador;

//import DAO.Conexao;


/**Servlet implementation class cadastrarDados*/
	@WebServlet("/RegistroUsuarios")
	public class RegistroUsuarios extends HttpServlet {
	    //Private -> Final long -> Numero de serie
	    private static final long serialVersionUID = 1L;
	    public RegistroUsuarios() {
	        super();
	    }
	    //GET
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.getWriter().append("Served at: ").append(request.getContextPath());
			System.out.println("RECEBI A REQUISIÇÃO | GET");

		}
	    //POST
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      
	        request.setCharacterEncoding("UTF-8");
	        response.setContentType("text/html; charset=UTF-8");
	        System.out.println("RECEBI A REQUISIÇÃO | POST");
	       
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
	        
	        //Validacao
	        Trabalhador trab = new Trabalhador(decodedNome, decodedSobrenome, decodedLocalidade, telefone,
	        		idade, cep, uf, decodedLogradouro, decodedBairro);
	        trab.conectar();
	        trab.insert(trab);
	        trab.select();

	     String mensagem;
	       RequestDispatcher dispatcher = request.getRequestDispatcher("form.jsp");
	       
	     if(trab.conectar() == true) {
			  mensagem = "Dados enviados com sucesso";
	    	  request.setAttribute("mensagem", mensagem);
		      dispatcher.forward(request, response);
		       
	     } else {
	         mensagem = "Erro de conexão com o banco de dados, tente novamente";
	    	 request.setAttribute("mensagem", mensagem);
		     dispatcher.forward(request, response);
	     }
	    }
	}
	        

 	       

