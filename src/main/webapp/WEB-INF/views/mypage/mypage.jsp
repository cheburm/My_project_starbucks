<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>스타벅스 내정보</title>
    <link rel="stylesheet" href="/css/reset.css">
    <link rel="stylesheet" href="/css/mypage.css">
</head>

<body>
    <div class="container">
        <div class="mypage-header">
            <div class="mypage-banner">
                <h1>
                    <span class="brand-name" onclick="location.href ='/index'">STARBUCKS</span>
                    <span class="mypage-msg">내정보</span>
                </h1>
            </div>
            <div class="mypage-banner-msgbox">
                <div class="mypage-banner-msg">
                    <div class="mypage-myinfo"><a href="/mypage">회원정보</a></div>
                    <div class="product-myinfo"><a href="/mypage_product">상품정보</a></div>
                </div>
            </div>
        </div>
        <div class="mypage-body-list-body">
            <div class="mypage-body-list">
                <div class="name-profileimg-group info-group">
                    <h2>스타벅스 프로필</h2>
                    <div class="mypage-info">
                        <div class="mypage-content">
                            <img src="/image/profile/${(empty principal.user.profile_img) ? ('baseImg.jpg') : (principal.user.id += '/' += principal.user.profile_img)}" alt="">
                            <div class="mypage-name-info">
                                <p>별명</p>
                                <span>${principal.user.name }</span>
                            </div>
                        </div>
                    </div>
                    <div class="mypage-btn-box">
                        <button class="mypage-btn" onclick="location.href='/mypage_dtl/profile'">수정</button>
                    </div>
                </div>
                <div class="name-profileimg-group info-group">
                    <h2>연락처 및 알림</h2>
                    <div class="mypage-info">
                        <div class="mypage-content">
                            <div class="mypage-phone-email-info">
                                <div class="phone-email-infobox">
                                    <span>연락처 이메일</span>
                                    <p>${principal.user.email }</p>
                                </div>
                                <div class="phone-email-infobox">
                                    <span>본인확인 이메일</span>
                                    <p>${principal.user.email }</p>
                                </div>
                                <div class="phone-email-infobox">
                                    <span>휴대전화</span>
                                    <p>010-4619-2026</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mypage-btn-box">
                        <button class="mypage-btn" onclick="location.href='/mypage_dtl/contact'">수정</button>
                    </div>
                </div>
                <div class="name-profileimg-group info-group">
                    <h2>배송지 관리</h2>
                    <div class="mypage-info">
                        <div class="mypage-content">
                            <div class="mypage-address">
                            </div>
                        </div>
                    </div>
                    <div class="mypage-btn-box">
                        <button class="mypage-btn">수정</button>
                    </div>
                </div>
                <div class="name-profileimg-group info-group">
                    <h2>비밀번호</h2>
                    <div class="mypage-info">
                        <div class="mypage-content">
                            <div class="mypage-password-change">
                                <span class="password-msg">
                                    스타벅스 로그인 시 사용하는 비밀번호를 변경할 수 있습니다<br>
                                    주기적인 비밀번호 변경을 통해 개인정보를 안전하게 보호하세요.
                                </span>
                                <div class="password-guide">
                                    <span>비밀번호</span>
                                    <a href='/mypage_dtl/password' class="mypage-btn">변경하기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="name-profileimg-group info-group">
                    <h2>관리자 등록</h2>
                    <div class="mypage-info">
                        <div class="mypage-content">
                            <div class="admin-insert">
                                페이지관리가 가능한 관리자등록 페이지로 이동합니다<br>
                                관리자권한이 되면 상품등록 및 상품관리가 가능합니다.
                            </div>
                        </div>
                    </div>
                    <div class="mypage-btn-box">
                        <button class="mypage-btn">등록하기</button>
                    </div>
                </div>
                <p class="signout">
                    스타벅스를 더 이상 이용하지 않는다면
                    <a href="">
                        회원탈퇴
                    </a>
                </p>
            </div>
        </div>
    </div>
    <script src="/js/mypage.js"></script>
    <script src="/js/mypage_dtl.js"></script>
</body>

</html>