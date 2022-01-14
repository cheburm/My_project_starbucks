<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/signin.css">
    <link rel="stylesheet" href="/css/reset.css">
    <title>로그인 페이지</title>
</head>

<body>
    <div class="container">
        <div class="starbucks-header">
            <img src="/coffeImg/stabuck-logo.jpg" alt="">
        </div>
        <div class="signin-content">
            <div class="signin-panner">
                <div class="signin-ip">
                    <input type="text" class="signin-id" placeholder="아이디">
                </div>
                <div class="signin-ip">
                    <input type="password" class="singin-password" placeholder="비밀번호">
                </div>
            </div>
            <div class="cookie-checkbox">
                <input type="checkbox">
                로그인 상태 유지
            </div>
            <button class="signin-btn">로그인</button>
            <button class="oauth-login-naver">NAVER 로그인
            </button>
            <div class="signup-page">
                <a href="/auth/signup">
                    회원가입
                </a>
            </div>
        </div>
    </div>
</body>

</html>