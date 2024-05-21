package myservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SecondServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//로직처리
		int total = 0;
		for(int cnt=1;cnt<=100; cnt++) {
			total += cnt;
		}
		//출력
		PrintWriter out = resp.getWriter();
		out.println("<html><head><title>두번째서블릿</title></head>");
		out.println("<body background-color='orange'>");
		out.printf("1+2+3+4+,,,,,,,+100=%d",total);
		out.println("</body>");
		out.println("</html>");
	}
}