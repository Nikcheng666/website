<%@ control language="C#" autoeventwireup="true" inherits="Control_Top, App_Web_xgn4txps" %>
<link rel="stylesheet" href="/sw/swiper.min.css">
<link rel="stylesheet" href="images/master.css">
    <script src="/sw/swiper.min.js"></script>
    <style>
    
    .swiper-container {
        width: 100%;
        height: 100%;
       
    }
    .swiper-slide {
        font-size: 18px;
        color:#fff;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
       
    }
    .parallax-bg {
        position: absolute;
        left: 0;
        top: 0;
        width: 130%;
        height: 100%;
        -webkit-background-size: cover;
        background-size: cover;
        background-position: center;
    }
    .swiper-slide .title {
        font-size: 41px;
        font-weight: 300;
    }
    .swiper-slide .subtitle {
        font-size: 21px;
    }
    .swiper-slide .text {
        font-size: 14px;
        max-width: 400px;
        line-height: 1.3;
    }
    .swiper-slide img{
        width: 100%;
    }
    
    </style>
<div class="navs_box">
    <div class="navs_boxs">
        <div class="leftlogo">
            <img src="img/logos.jpg" alt=""/>
        </div>
        <div class="right_nav">
        <div class="rightnavbox">
            <a href="/">首页</a>
            <a href="/reg.aspx">注册账号</a>
            <a href="/download.aspx">登录器下载</a>
            <a class="paysss" href="/Item_List.aspx">元宝充值</a>
        </div>
        </div>
    </div>
</div>
<div class="mtop">
    <div class="swiper-container">
        
        <div class="swiper-wrapper">
            <div class="swiper-slide">
               <img src="img/banner1.jpg" alt=""/>
            </div>
            
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination swiper-pagination-white"></div>
        <!-- Add Navigation -->
        <div class="swiper-button-prev swiper-button-white"></div>
        <div class="swiper-button-next swiper-button-white"></div>
    </div>
</div>
<script>
var swiper = new Swiper('.swiper-container', {
    pagination: '.swiper-pagination',
nextButton: '.swiper-button-next',
prevButton: '.swiper-button-prev',
slidesPerView: 1,
paginationClickable: true,
spaceBetween: 30,
loop: true,
centeredSlides: true,
autoplay: 4000,
autoplayDisableOnInteraction: false
});
</script>