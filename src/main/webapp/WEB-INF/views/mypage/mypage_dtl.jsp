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
    <link rel="stylesheet" href="/css/mypage_dtl.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
    <input type="hidden" class="mypage-dtl-value" value="${mypageDtlType }">
    <input type="hidden" name="user_id" value="${principal.user.id }">
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
        <div class="mypage-dtl-body">
            <div class="mypage-dtl-content">
                <form class="profileimg-name-modify mypage-dtl-page" style="display: none">
				    <input type="hidden" name="user_id" value="${principal.user.id }">
                    <div class="mypage-dtl-banner">
                        <h2 class="mypage-dtl-guide">프로필 수정</h2>
                        <p class="mypage-dtl-guide-msg">스타벅스 대표 프로필과 별명을 수정 하실 수 있습니다.</p>
                    </div>
                    <div class="mypage-dtl-content-group">
                        <div class="mypage-dtl-content-box">
                            <div class="mypage-modify-guide">
                                <div class="mypage-modify-guide-msg">
                                    프로필 사진
                                </div>
                            </div>
                            <div class="mypage-modify-box">
                                <img src="/image/profile/${(empty principal.user.profile_img) ? ('baseImg.jpg') : (principal.user.id += '/' += principal.user.profile_img)}" alt="" class="profile-img">
                                <div class="profile-modify-btn">
                                	<input type="file" name="profile_img" class="profile-file" onchange="profilePreView(this)" style="display: none">
                                    <button type="button" onclick="document.all.profile_img.click()">사진변경</button>
                                    <button type="button" class="profile-file-cancel">삭제</button>
                                </div>
                            </div>
                        </div>
                        <div class="mypage-dtl-content-box">
                            <div class="mypage-modify-guide">
                                <div class="mypage-modify-guide-msg">
                                    별명
                                </div>
                            </div>
                            <div class="mypage-modify-box">
                                <input type="text" class="ip-name" name="name" value="${principal.user.name }">
                            </div>
                        </div>
                    </div>
                    <div class="mypage-modify-btn">
                        <button type="button" class="mypage-form-btn">적용</button>
                        <button type="button" class="mypage-cancle-btn">취소</button>
                    </div>
                </form>
                <form class="phone-email-modify mypage-dtl-page" style="display: none">
                    <div class="mypage-dtl-banner">
                        <h2 class="mypage-dtl-guide">연락처 및 이메일 설정</h2>
                        <p class="mypage-dtl-guide-msg"><span>coqja2013</span>님의 연락처 정보입니다.<br>
                            회원정보는 개인정보처리방침에 따라 안전하게 보호되며, 회원님의 명백한 동의 없이 공개 또는 제 3자에게 제공되지 않습니다.</p>
                    </div>
                    <div class="mypage-dtl-content-group">
                        <div class="mypage-dtl-content-box">
                            <div class="mypage-modify-guide">
                                <div class="mypage-modify-guide-msg">
                                    휴대전화
                                </div>
                            </div>
                            <div class="mypage-modify-box">
                                <p class="mypage-dtl-myinfo">010-4919-2026</p>
                                <p class="mypage-dtl-info-guide">
                                    본인확인이 필요한 경우 또는 유료
                                    결제 등 스타벅스로부터 알림을 받을 때 사용할 휴대전화입니다.
                                </p>
                                <div class="mypage-dtl-modify-btn">
                                    <button>수정</button>
                                </div>
                            </div>
                        </div>
                        <div class="mypage-dtl-content-box">
                            <div class="mypage-modify-guide">
                                <div class="mypage-modify-guide-msg">
                                    스타벅스 계정 이메일
                                </div>
                            </div>
                            <div class="mypage-modify-box">
                                <p class="mypage-dtl-myinfo">coqja2013@naver.com</p>
                                <p class="mypage-dtl-info-guide">
                                    스타벅스 계정의 이메일 주소입니다.
                                </p>
                                <div class="mypage-dtl-modify-btn">
                                    <button>수정</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mypage-modify-btn">
                        <button type="submit" class="mypage-form-btn">적용</button>
                        <button type="button" class="mypage-cancle-btn">취소</button>
                    </div>
                </form>
                <form class="password-modify mypage-dtl-page" style="display: none">
                    <div class="password-modify-content">
                        <h2 class="password-modify-guide">비밀번호 변경</h2>
                        <p class="password-modify-guide-msg">
                            <span>안전한 비밀번호로 내정보를 보호</span>하세요
                        </p>
                        <p class="password-reference"><span>다른 아이디/사이트에서 사용한 적 없는 비밀번호</span></p>
                        <p class="password-reference"><span>이전에 사용한 적 없는 비밀번호</span>가 안전합니다.</p>
                        <div class="password-modify-ip">
                            <input type="text" class="password-old password-ip" name="password_old"
                                placeholder="현재 비밀번호">
                            <input type="password" class="password-new password-ip" name="password_new"
                                placeholder="새 비밀번호">
                            <input type="password" class="repassword-new password-ip" placeholder="새 비밀번호 확인">
                        </div>
                                <label class="password-ip-msg"></label>
                        <div class="password-modify-btn-box">
                            <button type="button" class="mypage-form-btn password-form-btn">확인</button>
                            <button type="button" class="mypage-cancle-btn password-cancle-btn">취소</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="/js/mypage_dtl.js"></script>
</body>

</html>