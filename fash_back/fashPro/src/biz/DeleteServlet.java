package biz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;

@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		MemberDAO dao = new MemberDAO();
		int n = 0;
		String id = (String)session.getAttribute("loginOK");
		
		n = dao.deleteMember(id);
		
		if(n>0)
			out.print("<script> alert('회원 탈퇴 완료'); </script>");
		else
			out.print("<script> alert('회원 정보 삭제를 실패했습니다.'); </script>");
	}
}
