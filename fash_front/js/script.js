$(".mainMenu").hover(
    function () {
        $(this).children(".subMenu").stop().slideDown("slow");
    },
    function () {
        $(this).children(".subMenu").stop().slideUp("fast");
    }
);

var slide = $(".slide > img");
var sno = 0;
var eno = slide.length - 1;
var timer = setInterval("autoslide()", 8000); // 3초마다 모션함수 실행

// 모션함수
function autoslide() {

    // 첫번째 이미지 사라지기
    $(slide[sno]).stop().animate(
        {
            left: "100%"
        },
        1000,
        function () {
            $(this).css({

                left: "-100%"
            });
        }
    );

    // 나타날 이미지 카운트
    sno++;
    if (sno > eno) {
        sno = 0;
    }

    // 두번째 이미지 나타나기
    $(slide[sno]).stop().animate({
        left: "0"
    }, 1000);
};

/*
var logo = $(".logo_div > img");
var lno = 0;
var ino = logo.length - 1;
var time = setInterval("autoSlide()", 8000);

function autoSlide() {

    $(logo[lno]).stop().animate(
        {
            left: "100%"
        },
        1000,
        function() {
            $(this).css({
            
             left: "-100%"
            });
        }
    );

    // 나타날 이미지 카운트
    lno++;
    if(lno > ino) {
        lno = 0;
    }

    // 두번째 이미지 나타나기
    $(logo[lno]).stop().animate({
        left: "0"
    }, 1000);
}; */

var logo = $(".logo_div > img");
var lno = 0;
var ino = logo.length - 1;
var imgArray = new Array();

imgArray[0] = "./images/logo_black.png";
imgArray[1] = "./images/logo_green.png";
imgArray[2] = "./images/logo_orange.png";

function showImage() {
    var objImg = document.getElementById("logo");

    objImg.src = imgArray[lno];
    setTimeout(showImage, 8000);

    lno++;
    if(lno > ino) {
        lno = 0;
    }
}
