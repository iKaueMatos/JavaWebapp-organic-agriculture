package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Conexao;
import model.Trabalhador;


@WebServlet("/BuscarTrabalhadorController")
public class BuscarTrabalhadorController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BuscarTrabalhadorController() {
        super();
    }

	//Consulta via POST enviada para o banco de dados
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("UTF-8");
	     response.setContentType("text/html; charset=UTF-8");
	     String nome = request.getParameter("nome");
	     System.out.println(nome);
	     ArrayList<Trabalhador> trabalhador;
		 trabalhador = new Trabalhador().buscaTabela(nome);
		 request.setAttribute("trabalhador", trabalhador);
		 RequestDispatcher dispatcher = request.getRequestDispatcher("table.jsp");
		dispatcher.forward(request, response);

		//Quantidade de estados que foram encontrados dentro do banco de dados | print no terminal
		Map<String, Integer> map = dao.Conexao.buscaUF();

		for (String key :map.keySet()) {
			Integer value = map.get(key);
			System.out.println(key + " = " + value);
		}

	}
}
