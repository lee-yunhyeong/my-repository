package myservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/MenuServlet")
public class Menu extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글처리 
		request.setCharacterEncoding("utf-8");
		// 파라미터값 받기
		String menu = request.getParameter("menu");
		// 출력
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h3>당신이 선택한 메뉴는<span style='color:red'> "+menu+" </span>입니다<h3>");
		out.println("</body></html>");
		out.close();
		
	}
}
