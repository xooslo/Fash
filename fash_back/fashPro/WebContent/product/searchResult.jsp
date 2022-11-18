<%@page import="vo.ItemVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FASH</title>
<link rel="stylesheet" href="../css/product.css">
<script src="../js/jquery-3.1.1.min.js"></script>
<script src="https://kit.fontawesome.com/ce67765f5e.js"
	crossorigin="anonymous"></script>
</head>
<body>
	<header>
		<div class="background">
			<div class="logo_div">
				<a href="../index.jsp"><img src="../images/logo_black.png"
					width="150px" height="45px" id="logo"></a>
			</div>
			<nav>
				<ul>
					<li class="mainMenu">
                        <a href="../index.jsp">HOME</a>
                        <ul class="subMenu">
                            <li><a href="../login/login.jsp">로그인</a></li>
                            <li><a href="../join/join.jsp">회원 가입</a></li>
                            <li><a href="../update/update.jsp">회원 정보<br>수정</a></li>
                            <li><a href="#">회원 탈퇴</a></li>
                        </ul>
                    </li>
					<li class="mainMenu"><a href="./product.jsp">PRODUCTS</a>
						<ul class="subMenu">
							<li><a href="./product_blue.jsp">첫번째 코디<br>제품 보러가기
							</a></li>
							<li><a href="./product_green.jsp">두번째 코디<br>제품 보러가기
							</a></li>
							<li><a href="./product_pink.jsp">세번째 코디<br>제품 보러가기
							</a></li>
							<li><a href="./product.jsp">전체 제품 보기</a></li>
						</ul></li>
					<li class="mainMenu"><a href="#">ABOUT</a>
						<ul class="subMenu">
							<li id="modal_btn"><a href="#">개발자 보기</a></li>
							<li><a href="https://github.com/xooslo/Fash">개발 과정<br>둘러보기
							</a></li>
						</ul></li>
					<li class="mainMenu"><a href="#"><i
							class="fa-solid fa-cart-shopping"></i></a></li>
				</ul>
			</nav>
		</div>
	</header>
	
<%
	ArrayList<ItemVO> list = (ArrayList<ItemVO>)request.getAttribute("item_list");
%>

	<div class="none"></div>
	
	<table width="800px" class="result">
		<tr>
			<th>상품 번호</th>
			<th>상품명</th>
			<th>가격</th>
		</tr>
		
<%
	if(list != null){
		for(ItemVO data : list){
%>
		<tr>
			<td><%=data.getItem_no() %></td>
			<td><%=data.getName() %></td>
			<td><%=data.getPrice() %> 원</td>
		</tr>
<%
		}
	}
%>
	</table>
	
	<script src="../js/script.js"></script>
</body>
</html>