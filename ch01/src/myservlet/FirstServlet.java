package myservlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/first")
public class FirstServlet extends HttpServlet{
	@Override
	public void init() throws ServletException {
		System.out.println("서블릿 요청시 처음 한번만 호출된다.");
		System.out.println("서블릿 생성시 초기화 작업 및 초기설정에 주로 사용된다.");
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서블릿을 get방식으로 요청할때마다 service()를 통해 호출");
		System.out.println("실제 클라이언트가 요청한 작업을 수행한다");
		
		int total = 0;
		for(int cnt=1; cnt<=100; cnt++) {
			total += cnt;
		}
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>1~100까지 더하기</title></head>");
		out.println("<body>");
		out.printf("1+2+3+4+~~~~+100=%d",total);
		out.println("</body>");
		out.println("</html>");
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("서블릿을 post방식으로 요청할때마다 service()를 통해 호출");
		System.out.println("실제 클라이언트가 요청한 작업을 수행한다");
	}
	@Override
	public void destroy() {
		System.out.println("서블릿이 기능을 수행하고 메모리에서 소멸될때 호출된다.");
		System.out.println("서블릿의 마무리작업을 주로 수행한다.");
	}	
}
