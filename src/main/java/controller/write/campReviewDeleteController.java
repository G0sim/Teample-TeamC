package controller.write;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import repository.PostDAO;

@WebServlet("/camp/delete")
public class campReviewDeleteController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int reviewNum = Integer.parseInt(req.getParameter("reviewNum"));
		String contentId = req.getParameter("contentId");

		PostDAO.deleteCampReview(reviewNum);

		resp.sendRedirect("/detail?contentId=" + contentId);

	}

}
