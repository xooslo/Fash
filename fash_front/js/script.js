// 메인 메뉴 호버 시 서브메뉴 드롭다운
$(".mainMenu").hover(
    function () {
        $(this).children(".subMenu").stop().slideDown("slow");
    },
    function () {
        $(this).children(".subMenu").stop().slideUp("fast");
    }
);

// 이미지 슬라이드 쿼리
var slide = $(".slide > img");
var sno = 0;
var eno = slide.length - 1;
var timer = setInterval("autoslide()", 6000); // 6초마다 모션함수 실행

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

// 로고 이미지 슬라이드 쿼리
var logo = $(".logo_div > img");
var lno = 0;
var ino = logo.length - 1;
var imgArray = new Array();

imgArray[0] = "./images/logo_black.png";
imgArray[1] = "./images/logo_green.png";
imgArray[2] = "./images/logo_pink.png";

function showImage() {
    var objImg = document.getElementById("logo");

    objImg.src = imgArray[lno];
    setTimeout(showImage, 6000);

    lno++;
    if (lno > ino) {
        lno = 0;
    }
};

// 메인 이미지에 마우스 호버 시 팝업 창 띄우기
var popUp = $(".popUpBox");
var popUp2 = $(".popUpBox2");
var popUp3 = $(".popUpBox3");

// 첫번째 메인 이미지 적용
$(document).ready(function () {
    $(".mainImg").mouseover(function () {
        popUp.fadeTo('slow', .9);
    });
    $(".mainBody").mouseout(function () {
        popUp.fadeOut('fast');
    });
});

// 두번째 메인 이미지 적용
$(document).ready(function () {
    $(".mainImg2").mouseover(function () {
        popUp2.fadeTo('slow', .9);
    });
    $(".mainBody").mouseout(function () {
        popUp2.fadeOut('fast');
    });
});

// 세번째 메인 이미지 적용
$(document).ready(function () {
    $(".mainImg3").mouseover(function () {
        popUp3.fadeTo('slow', .9);
    });
    $(".mainBody").mouseout(function () {
        popUp3.fadeOut('fast');
    });
});


// 모달창 띄우기
'use strict';
const modal_wrap = document.querySelector('.modal_wrap')
const modal_background = document.querySelector('.modal_background')

//Show modal
document.querySelector('#modal_btn').addEventListener('click', () => {
    open()
})

//Hide modal
document.querySelector('.modal_close').addEventListener('click', () => {
    close()
})

//Hide modal
window.addEventListener('click', (e) => {
    e.target === modal_background ? close() : false
})
function close() {
    modal_wrap.classList.remove('show-modal');
    modal_background.classList.remove('show-modal');
}
function open() {
    modal_wrap.classList.add('show-modal')
    modal_background.classList.add('show-modal')
}