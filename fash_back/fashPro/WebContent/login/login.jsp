<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FASH</title>
    <link rel="stylesheet" href="../css/user.css">
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script src="https://kit.fontawesome.com/ce67765f5e.js" crossorigin="anonymous"></script>
</head>
<body>

<%
		String id = (String)session.getAttribute("loginOK");

		if(id != null){
			response.sendRedirect("/index.jsp");
		}
		else{
%>
    <form action="/login" method="get">
    	<div id="login_container">
        	<div class="login_title">
            	<h2>로그인</h2>
        	</div>
        	<div class="id_password">
            	<input type="text" name="loginId" id="loginId" placeholder="아이디를 입력해주세요"><br>
            	<input type="password" name="loginPwd" id="loginPwd" placeholder="비밀번호를 입력해주세요">
        	</div>
        	<div class="pass_find">
            	<p><a href="#">아이디 찾기</a> <span class="bar">|</span><a href="#"> 비밀번호 찾기</a></p>
        	</div>
        	<div class="login_join">
            	<a href="#"><button class="btn_login">로그인</button><br></a>
            	<a href="#"><button class="btn_join">회원가입</button></a> 
        	</div>
    	</div>
    </form>
<%
		}
%>

    <script src="../js/script.js"></script>
</body>
</html>