package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Trabalhador;

/**
 * Servlet implementation class ModificarTrabalhadoresController
 */
@WebServlet("/ModificarTrabalhadoresController")
public class ModificarTrabalhadoresController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarTrabalhadoresController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	     response.setContentType("text/html; charset=UTF-8");
	     
	     String apagar = request.getParameter("apagar");
	     String editar = request.getParameter("editar");
	     String id = request.getParameter("id");
	     System.out.println(id);
	     
	     if(apagar != null && id != null){
			 new Trabalhador().excluir(Integer.valueOf(id));
			 RequestDispatcher rd = request.getRequestDispatcher("table.jsp");
			 request.setAttribute("mensagem", "Trabalhador apagado com sucesso!");
			 rd.forward(request, response);
		 } else if (editar != null && id != null) {
			 Trabalhador pessoa = new Trabalhador().buscarProdutoPorId(Integer.valueOf(id));        
			 RequestDispatcher dispacher = request.getRequestDispatcher("formUpdate.jsp");
			 request.setAttribute("pessoa", pessoa);
			 dispacher.forward(request, response);
		 }
	     
	}

}
