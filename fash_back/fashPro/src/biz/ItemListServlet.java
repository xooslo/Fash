package biz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import vo.ItemVO;

@WebServlet("/listItem")
public class ItemListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ItemListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8"); 
		PrintWriter out = response.getWriter();
		String key = request.getParameter("item_name");
		
		MemberDAO dao = new MemberDAO();
		ArrayList<ItemVO> list = dao.getItemList(key);
		
		if(list != null) {
			request.setAttribute("item_list", list);
		}
		
		request.getRequestDispatcher("/product/searchResult.jsp").forward(request, response);
	}

}
