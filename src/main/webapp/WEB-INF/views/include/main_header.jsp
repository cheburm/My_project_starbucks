<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스타벅스</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/main_header.css">
</head>
<body>
    <div class="container">
        <div class="main-header">
            <div class="header-top-box">
                <div class="header-top">
                    <div class="naver-box">
                        <a href="" class="naver-logo">NAVER</a>
                        <a href="" class="naver-shop"><i class="fas fa-shopping-bag"></i> 네이버 쇼핑</a>
                    </div>
                    <div>
                        <a href="/auth/signin" class="signin">로그인</a>
                        <button class="header-menu"><i class="fas fa-border-all"></i></button>
                    </div>
                </div>
            </div>
            <div class="header-main">
                <div class="header-mid">
                    <button class="page-like">
                        <i class="fas fa-heart"></i>
                        <p>찜하기</p>
                        <span>12,345</span>
                    </button>
                    <div class="header-logo">
                        <a href="#"><img class="logo" src="coffeImg/KakaoTalk_20210928_144102606.png" alt=""></a>
                    </div>
                    <div class="header-search">
                        <input type="text" placeholder="검색어를 입력해보세요">
                        <button type="submit"><i class="fas fa-search"></i></button>
                    </div>
                </div>
                <div class="header-bot">
                    <ul class="header-nav">
                        <li><a href="">텀블러</a></li>
                        <li><a href="">콜드컵</a></li>
                        <li><a href="">보온병</a></li>
                        <li><a href="">워터보틀</a></li>
                        <li><a href="">머그,컵</a></li>
                        <li><a href="">라이프스타일</a></li>
                        <li><a href="">티,커피용품</a></li>
                        <li><a href="">전체상품</a></li>
                        <li class="recommend-list-btn">
                            <a href="">추천상품 <i class="fas fa-chevron-down"></i></a>
                            <ul class="recommend-list">
                                <a href="">22 new year</a>
                                <a href="">home</a>
                                <a href="">On-the-Go</a>
                                <a href="">Work</a>
                            </ul>
                        </li>
                        <li><a href="" style="color: #888888;">묻고 답하기</a></li>
                        <li><a href="" style="color: #888888;">공지사항</a></li>
                    </ul>
                    <button>더보기<i class="fas fa-chevron-down"></i></button>
                </div>
            </div>
        </div>
    </div>
    <!-- <script src="js/main_header.js"></script> -->
    <script src="https://kit.fontawesome.com/7e652321d1.js" crossorigin="anonymous"></script>
</body>
</html>