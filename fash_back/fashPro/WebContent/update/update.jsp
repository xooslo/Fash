<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FASH</title>
<link rel="stylesheet" href="../css/user.css">
<script src="../js/jquery-3.1.1.min.js"></script>
<script src="https://kit.fontawesome.com/ce67765f5e.js"
	crossorigin="anonymous"></script>
</head>

<body>

<%
	String id = (String)session.getAttribute("loginOK");

	if(id == null){
		response.sendRedirect("../login/login.jsp");
	}
	else{
%>

	<form action="/update" method="post">
		<div id="update_container">
			<div class="update_title">
				<h2>회원 정보 수정</h2>
			</div>
			<div class="id_password_update">
				<input type="text" name="id" id="id" placeholder="id" value="<%= id %>" readonly><br>
				<input type="password" name="pwd" id="pwd"
					placeholder="기존 비밀번호를 입력해주세요"><br> 
				<input
					type="password" name="pwdCk" id="pwdCk"
					placeholder="새로운 비밀번호를 입력해주세요">
			</div>
			<div class="phone_email_update">
				<input type="email"name="email" id="email" placeholder="새로운 이메일을 입력해주세요"> <br>
				<input type="tel" name="tel" id="tel" placeholder="전화번호 입력">
			</div>
			<div class="update_submit">
				<a href="#"><button class="btn_update">수정하기</button></a><br> <a
					href="../index.jsp"><button class="btn_reset">취소</button></a>
			</div>
		</div>
	</form>
	
<%
	}
%>

	<script src="../js/script.js"></script>
</body>

</html>