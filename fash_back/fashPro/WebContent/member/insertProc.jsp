<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name, id, pwd, pwdCk, email, gender, tel, address;
	MemberDAO dao = new MemberDAO();
	int n = 0;
	
	name = request.getParameter("name");
	id = request.getParameter("id");
	pwd = request.getParameter("pwd");
	pwdCk = request.getParameter("pwdCk");
	email = request.getParameter("email");
	gender = request.getParameter("gender");
	tel = request.getParameter("tel");
	address = request.getParameter("address");
	
	
	
	n = dao.insertMember(name, id, pwd, pwdCk, email, gender, tel, address);
	
	if(n>0)
		response.sendRedirect("../login/login.jsp");
	else
		out.print("<script> history.back() </script>");
%>
</body>
</html>