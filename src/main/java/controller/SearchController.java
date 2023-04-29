package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.camping.Response;
import util.CampingAPI;

@WebServlet("/search")
public class SearchController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//사용자가 검색한 것을 받아오고
		String doNm = req.getParameter("doNm"); //도
		String sigunguNm = req.getParameter("sigunguNm"); //시,군,구
		String lctCl = req.getParameter("lctCl"); //입자구분
		String page = req.getParameter("pageNo");
		
		System.out.println("do = " + doNm);
		System.out.println("si = " + sigunguNm);
		System.out.println("lct = " + lctCl);
		System.out.println("page = " + page);
		
		Response response = CampingAPI.getCamping();
		
		if(response != null) {
			req.setAttribute("datas", response.getBody().getItems().getItem()); // 검색에 필요한 데이터 끌어다 쓰게
			req.setAttribute("total", response.getBody().getTotalCount());  // 검색 전체 개수
		}
		
		//========================================================
		
		//페이징 처리
		int p;
		
		if(page == null) {
			 p = 1;
		} else {
		    p = Integer.parseInt(page);
		}
		
		String pageNo = p + "";
		
		
		int total = response.getBody().getTotalCount(); // 데이터 전체 개수 100
		int totalPage = total / 10 + (10 % total > 0 ? 1 : 0); //전체 페이지 수 
		int viewSize = 10; //한 화면에 보여지는 페이지 수
		
		int start = (p / viewSize) * viewSize + 1 ;
		int last = start + ( viewSize - 1) ;
		
		last = last > totalPage ? totalPage : last;
		
		req.setAttribute("start", start);
		req.setAttribute("last", last);
		
		
		boolean existPrev = start == 1 ? false : true;
		boolean existNext = last < totalPage-1 ? true : false;
		
		req.setAttribute("existPrev",  existPrev);
		req.setAttribute("existNext",  existNext);
		
		
		req.getRequestDispatcher("/WEB-INF/views/search.jsp").forward(req, resp);
		
	}
}
