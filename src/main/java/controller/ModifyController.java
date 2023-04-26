package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import repository.UserDAO;

@WebServlet("/mypage/modify")
public class ModifyController extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");
		String name = req.getParameter("name");
		String area = req.getParameter("area");
		

		Map map = new HashMap();
		map.put("id", id);
		map.put("pass", pass);
		map.put("name", name);
		map.put("area", area)

		int r = UserDAO.updateUser(map);
		
		req.getRequestDispatcher("/WEB-INF/mypage.jsp").forward(req, resp);
		
	}
	
}