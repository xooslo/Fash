package biz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;

@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UpdateServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String id, pwd, pwdCk, email, tel;
		MemberDAO dao = new MemberDAO();
		int n = 0;
		
		id = request.getParameter("id");
		pwd = request.getParameter("pwd");
		pwdCk = request.getParameter("pwdCk");
		email = request.getParameter("email");
		tel = request.getParameter("tel");
		
		n = dao.updateMember(id, pwd, pwdCk, email, tel);
		
		if(n>0)
			response.sendRedirect("/index.jsp");
		else
			out.print("<script> history.back() </script>");
	}

}
