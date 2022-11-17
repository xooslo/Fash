package biz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LogoutServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8"); 
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("loginOK");
		
		if(id != null) {
			out.println("<script> alert('로그아웃 되었습니다.'); </script>");
			session.removeAttribute("loginOK");
		} else {
			out.println("<script> alert('로그인 된 상태가 아니기 때문에 로그아웃 할 수 없습니다.'); history.back(); </script>");
		}
	}
}
