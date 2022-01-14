<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/signup.css">
    <title>회원가입</title>
</head>
<body>
    <div class="container">
        <div class="signup-body">
            <div class="signup-header">
                <img src="/coffeImg/stabuck-logo.jpg" alt="">
            </div>
            <div class="signup-ip-box">
                <div class="ip-box">
                    <h3 class="signup-info">아이디</h3>
                    <div class="signup-ip">
                        <input type="text">
                    </div>
                    <span class="signup-ip-msg">
                    </span>
                </div>
                <div class="ip-box">
                    <h3 class="signup-info">비밀번호</h3>
                    <div class="signup-ip">
                        <input type="password">
                    </div>
                    <span class="signup-ip-msg">
                    </span>
                </div>
                <div class="ip-box">
                    <h3 class="signup-info">비밀번호 재확인</h3>
                    <div class="signup-ip">
                        <input type="password">
                    </div>
                    <span class="signup-ip-msg">
                    </span>
                </div>
                <div class="ip-box">
                    <h3 class="signup-info">이름</h3>
                    <div class="signup-ip">
                        <input type="text">
                    </div>
                    <span class="signup-ip-msg">
                    </span>
                </div>
                <h3 class="signup-info">본인 확인 이메일<span>(선택)</span></h3>
                <div class="signup-ip">
                    <input type="text">
                </div>
                <button class="signup-btn">가입하기</button>
            </div>
        </div>
    </div>
    <script src="/js/signup.js"></script>
</body>
</html>