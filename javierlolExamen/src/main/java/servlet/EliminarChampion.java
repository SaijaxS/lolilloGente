package servlet;

import java.io.IOException;
import java.util.Optional;



import model.Champions;
import repository.ChampionRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/eliminarChampion")
public class EliminarChampion extends BaseServlet{

	ChampionRepository repository = new ChampionRepository();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("id"));
	
		repository.delete(id);
		redirect(req, resp, "/index.jsp");
	}
	
	

}
