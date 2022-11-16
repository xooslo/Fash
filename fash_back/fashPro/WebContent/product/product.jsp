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
				<a href="../index.html"><img src="../images/logo_black.png"
					width="150px" height="45px" id="logo"></a>
			</div>
			<nav>
				<ul>
					<li class="mainMenu"><a href="#">HOME</a>
						<ul class="subMenu">
							<li><a href="./login/login.html">로그인</a></li>
							<li><a href="./join/join.html">회원 가입</a></li>
							<li><a href="./update/MemberUpdate.html">회원 정보<br>수정
							</a></li>
							<li><a href="#">회원 탈퇴</a></li>
						</ul></li>
					<li class="mainMenu"><a href="./product/product.html">PRODUCTS</a>
						<ul class="subMenu">
							<li><a href="#">첫번째 코디<br>보러가기
							</a></li>
							<li><a href="#">두번째 코디<br>보러가기
							</a></li>
							<li><a href="#">세번째 코디<br>보러가기
							</a></li>
							<li><a href="#">전체 제품 보기</a></li>
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

	<div class="products">
		<h3>Our Products</h3>

		<div class="product-list">
			<a href="#" class="product"> <img src="../images/blue_jumper.jpg"
				width="225" height="225px">
				<div class="product-name">
					벨벳틴 오버 바시티 자켓<br>[스틸블루]
				</div>
				<div class="product-price">239,000원</div>
			</a> <a href="#" class="product"> <img
				src="../images/green_jumper.jpg" width="225" height="225px">
				<div class="product-name">
					레트로 콤비 윈드 브레이커<br>[페일민트]
				</div>
				<div class="product-price">168,000원</div>
			</a> <a href="#" class="product"> <img
				src="../images/pink_jumper.jpg" width="225" height="225px">
				<div class="product-name">
					퀼트 숏 패딩<br>[아이보리]
				</div>
				<div class="product-price">159,000원</div>
			</a> <a href="#" class="product"> <img src="../images/blue_neat.jpg"
				width="225" height="225px">
				<div class="product-name">
					MZ 매거진 니트<br>[차콜]
				</div>
				<div class="product-price">79,000원</div>
			</a> <a href="#" class="product"> <img
				src="../images/green_cardigan.jpg" width="225" height="225px">
				<div class="product-name">
					플랜트 아가일 니트 집업<br>[네이비]
				</div>
				<div class="product-price">139,000원</div>
			</a> <a href="#" class="product"> <img
				src="../images/pink_cardigan.jpg" width="225" height="225px">
				<div class="product-name">
					램스울 크롭 가디건<br>[체리핑크]
				</div>
				<div class="product-price">66,000원</div>
			</a> <a href="#" class="product"> <img src="../images/blue_shirt.jpg"
				width="225" height="225px">
				<div class="product-name">
					스탠다드 롱 슬리브<br>[화이트]
				</div>
				<div class="product-price">45,000원</div>
			</a> <a href="#" class="product"> <img
				src="../images/green_shirt.jpg" width="225" height="225px">
				<div class="product-name">
					오버핏 포켓 셔츠<br>[화이트]
				</div>
				<div class="product-price">49,000</div>
			</a> <a href="#" class="product"> <img src="../images/pink_shirt.jpg"
				width="225" height="225px">
				<div class="product-name">
					하이 넥 셔링 목폴라<br>[화이트]
				</div>
				<div class="product-price">59,000원</div>
			</a> <a href="#" class="product"> <img
				src="../images/blue_pants_2.jpg" width="225" height="225px">
				<div class="product-name">
					MZ 리벳 팬츠<br>[블랙]
				</div>
				<div class="product-price">129,000원</div>
			</a> <a href="#" class="product"> <img
				src="../images/green_skirt.jpg" width="225" height="225px">
				<div class="product-name">스포티 포켓 미니 스커트</div>
				<div class="product-price">58,800원</div>
			</a> <a href="#" class="product"> <img src="../images/pink_skirt.jpg"
				width="225" height="225px">
				<div class="product-name">
					스웨이드 슬릿 스커트<br>[크림]
				</div>
				<div class="product-price">79,000원</div>
			</a> <a href="#" class="product"> <img src="../images/blue_jew.jpg"
				width="225" height="225px">
				<div class="product-name">써클 실버 링귀걸이</div>
				<div class="product-price">35,000원</div>
			</a> <a href="#" class="product"> <img src="../images/green_jew.jpg"
				width="225" height="225px">
				<div class="product-name">마이부 달링 귀걸이</div>
				<div class="product-price">27,000원</div>
			</a> <a href="#" class="product"> <img src="../images/pink_jew.jpg"
				width="225" height="225px">
				<div class="product-name">비포하트 링귀걸이</div>
				<div class="product-price">12,500원</div>
			</a>

			<div class="clearfix"></div>
		</div>
	</div>

	<script src="../js/script.js"></script>
</body>
</html>