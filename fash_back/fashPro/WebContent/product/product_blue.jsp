<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FASH</title>
    <link rel="stylesheet" href="../css/product.css">
    <script src="../js/jquery-3.1.1.min.js"></script>
    <script src="https://kit.fontawesome.com/ce67765f5e.js" crossorigin="anonymous"></script>
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
							<li><a href="#">첫번째 코디<br>제품 보러가기
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

    <div class="products">
        <h3>First Outfit</h3>

        <div class="product-list">
            <a href="#" class="product">
                <img src="../images/blue_jumper.jpg" width="225" height="225px">
                <div class="product-name">
                    벨벳틴 오버 바시티 자켓<br>[스틸블루]
                </div>
                <div class="product-price">
                    239,000원
                </div>
            </a>

            <a href="#" class="product">
                <img src="../images/blue_neat.jpg" width="225" height="225px">
                <div class="product-name">
                    MZ 매거진 니트<br>[차콜]
                </div>
                <div class="product-price">
                    79,000원
                </div>
            </a>

            <a href="#" class="product">
                <img src="../images/blue_shirt.jpg" width="225" height="225px">
                <div class="product-name">
                    스탠다드 롱 슬리브<br>[화이트]
                </div>
                <div class="product-price">
                    45,000원
                </div>
            </a>
            
            <a href="#" class="product">
                <img src="../images/blue_pants_2.jpg" width="225" height="225px">
                <div class="product-name">
                    MZ 리벳 팬츠<br>[블랙]
                </div>
                <div class="product-price">
                    129,000원
                </div>          
            </a>

            <a href="#" class="product">
                <img src="../images/blue_jew.jpg" width="225" height="225px">
                <div class="product-name">
                    써클 실버 링귀걸이
                </div>
                <div class="product-price">
                    35,000원
                </div>          
            </a>

            <div class="clearfix"></div>
        </div>
    </div>

    <div class="modal_background"></div>
    <div class="modal_wrap">
        <div class="modal_close">X</div>
        <div class="text">
            <img src="../images/me_.jpg" width="500px" height="300px">
        </div>
    </div>

    <script src="../js/script.js"></script>
</body>
</html>