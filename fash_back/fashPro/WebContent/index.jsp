<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FASH</title>
<link rel="stylesheet" href="./css/style.css">
<script src="./js/jquery-3.1.1.min.js"></script>
<script src="https://kit.fontawesome.com/ce67765f5e.js" crossorigin="anonymous"></script>
</head>
<body onload="showImage()">
    <header>
        <div class="background">
            <div class="logo_div">
                <img src="./images/logo_black.png" width="180px" height="45px" id="logo">
                <img src="./images/logo_green.png" width="180px" height="45px">
                <img src="./images/logo_pink.png" width="190px" height="45px">
            </div>
            <nav>
                <ul>
                    <li class="mainMenu">
                        <a href="#">HOME</a>
                        <ul class="subMenu">
                            <li><a href="./login/login.jsp">로그인</a></li>
                            <li><a href="./join/join.jsp">회원 가입</a></li>
                            <li><a href="./update/update.jsp">회원 정보<br>수정</a></li>
                            <li><a href="/delete">회원 탈퇴</a></li>
                            <li><a href="/logout">로그아웃</a></li>
                        </ul>
                    </li>
                    <li class="mainMenu">
                        <a href="./product/product.jsp">PRODUCTS</a>
                        <ul class="subMenu">
                            <li><a href="./product/product_blue.jsp">첫번째 코디<br>제품 보러가기</a></li>
                            <li><a href="./product/product_green.jsp">두번째 코디<br>제품 보러가기</a></li>
                            <li><a href="./product/product_pink.jsp">세번째 코디<br>제품 보러가기</a></li>
                            <li><a href="./product/product.jsp">전체 제품 보기</a></li>
                        </ul>
                    </li>
                    <li class="mainMenu">
                        <a href="#">ABOUT</a>
                        <ul class="subMenu">
                            <li id="modal_btn"><a href="#">개발자 보기</a></li>
                            <li><a href="https://github.com/xooslo/Fash">개발 과정<br>둘러보기</a></li>
                        </ul>
                    </li>
                    <li class="mainMenu">
                        <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="mainBody">

        <div class="popUpBox">
            <div class="popUp">
                <h2>오늘의 추천 코디 🎥🎱</h2>
                <p>바시티 재킷과 레더 팬츠로 완성한<br>개성 만점 스트릿 룩</p>
                <p><a href="./product/product_blue.jsp">코디에 사용된 아이템 <b>보러가기 -> </b></a></p>
            </div>
        </div>

        <div class="popUpBox2">
            <div class="popUp2">
                <h2>오늘의 추천 코디 🌳🧩</h2>
                <p>윈드브레이커와 체크 패턴 카디건의 조합에<br>캐주얼한 스커트로 완성한 캐주얼 룩</p>
                <p><a href="./product/product_green.jsp">코디에 사용된 아이템 <b>보러가기 -> </b></a></p>
            </div>
        </div>

        <div class="popUpBox3">
            <div class="popUp3">
                <h2>오늘의 추천 코디 👚💗</h2>
                <p>핑크 카디건에 퀼팅 재킷을 더하고<br>미니 스커트로 완성한 걸리시 룩</p>
                <p><a href="./product/product_pink.jsp">코디에 사용된 아이템 <b>보러가기 -> </b></a></p>
            </div>
        </div>

        <div class="slide">
            <img src="./images/main_black.png" alt="슬라이드이미지1" class="mainImg">
            <img src="./images/main_green.png" alt="슬라이드이미지2" class="mainImg2">
            <img src="./images/main_pink.png" alt="슬라이드이미지3" class="mainImg3">
        </div>
    </div>

    <div class="modal_background"></div>
    <div class="modal_wrap">
        <div class="modal_close">X</div>
        <div class="text">
            <img src="./images/me_.jpg" width="500px" height="300px">
        </div>
    </div>

    <script src="./js/script.js"></script>
</body>
</html>