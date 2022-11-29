package servlet;

import java.io.IOException;
import java.util.Optional;



import model.Champions;
import repository.ChampionRepository;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/insertChampion")
public class InsertChampionServlet extends BaseServlet{

	ChampionRepository repository = new ChampionRepository();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Champions champion = getChampionFromRequest2(req);
	
		repository.insert(champion);
		redirect(req, resp, "/index.jsp");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

}
