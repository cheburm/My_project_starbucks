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
    <link rel="stylesheet" href="css/product_dtl_info.css">
    <link rel="stylesheet" href="css/main_header.css">
    <link rel="stylesheet" href="css/main_footer.css">
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
                        <button class="signin">로그인</button>
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
        <div class="product-dtl-container">
            <div class="product-dtl-body">
                <div class="product-pay-info">
                    <div class="product-pay-info-left">
                        <img src="coffeImg/product1.png" class="product-img">
                        <div class="product-reaction">
                            <p>리뷰수</p>
                            <strong>435</strong>
                            <p>ㆍ 사용자 총 평점</p>
                            <strong>4.9</strong>/
                            <strong>5</strong>
                        </div>
                    </div>
                    <div class="product-pay-info-right">
                        <div class="product-name-price">
                            <div class="product-name">
                                <h3>[스타벅스]</h3>
                                <h3>${상품이름}</h3>
                            </div>
                            <div class="product-price">
                                <span class="price">19,000</span>
                                <span class="won">원</span>
                            </div>
                        </div>
                        <div class="pay-point">
                            <div class="pay-point-name">
                                <span>${이름}</span>
                                <span>님만을 위한 혜택</span>
                            </div>
                            <div class="point-save">
                                <div class="max-point-save">
                                    <span>최대 적립 포인트</span>
                                    <span>340원</span>
                                </div>
                                <div class="min-point-save">
                                    <span>기본적립</span>
                                    <span>190원</span>
                                </div>
                            </div>
                            <div class="another-point-save">
                                <div class="another-point-save-info">
                                    <span>
                                        <i>TIP.</i>
                                        포인트 더 받는 방법
                                    </span>
                                    <span>
                                        +최대
                                        <strong class="another-point-save-price">
                                            300
                                        </strong>
                                        원
                                    </span>
                                </div>
                                <div class="another-point-save-dtl">
                                    <ul class="another-point-save-dtl-list">
                                        <li>
                                            <a href="">로그인구매시 5%추가 적립</a>
                                            <span>700원</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <a href="" class="signin-banner">
                            <span>5% 적립</span>
                            포기하시겠어요?
                            <div>받기</div>
                            <p>></p>
                        </a>
                        <div class="pay-info">
                            <span>무이자 할부</span>
                        </div>
                        <div class="pay-info">
                            <span>최대구매5개(1회) / 5개(1인)</span>
                        </div>
                        <div class="pay-info">
                            <div class="product-shipping">
                                <span>택배 배송</span>
                                <div></div>
                                <strong>${가격}</strong>
                                <span>원(주문시 결제)</span>
                            </div>
                            <div class="free-shipping-message">
                                <p>30,000원이상 구매 시 무료</p>
                            </div>
                        </div>
                        <div class="pay-info">
                            <div class="product-num">
                                <button>-</button>
                                <span>1</span>
                                <button>+</button>
                            </div>
                        </div>
                        <div class="product-price-box">
                            <span>총 상품 금액</span>
                            <div class="product-total-price">
                                <p>총 수량 1개</p>
                                <div></div>
                                <h1>19,000</h1>
                                <strong>원</strong>
                            </div>
                        </div>
                        <div class="product-buy-box">
                            <a href="" class="product-buy">
                                구매하기
                            </a>
                            <div class="product-another-info">
                                <a href="" class="product-like">
                                    <i class="fas fa-heart"></i>
                                    찜하기
                                    <span>999</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-tag-list">
                    <button>상세정보</button>
                    <button>리뷰<span></span></button>
                    <button>반품/교환정보</button>
                </div>
                <div class="product-dtl-info">
                    <img src="coffeImg/product-info1.jpg" alt="">
                    <img src="coffeImg/product-info2.jpg" alt="">
                    <img src="coffeImg/product-info3.jpg" alt="">
                </div>
                <div class="product-comment" style="display: none;">
                    <div class="product-comment-nav">
                        <strong>리뷰 <span>200</span>건</strong>
                        <div class="comment-nav">
                            <a href="">최신순</a>
                            <a href="">평점 높은순</a>
                            <a href="">평점 낮은순</a>
                        </div>
                    </div>
                    <div class="product-comment-list">
                        <div class="product-comment-user">
                            <div class="product-user-info">
                                <div class="user-upload-date">
                                    <img src="coffeImg/onthego.png" alt="">
                                    <div class="user-date">
                                        <i class="fas fa-heart"></i><i class="fas fa-heart"></i><i class="fas fa-heart"></i><i class="fas fa-heart"></i><i class="fas fa-heart"></i>
                                        <div class="user-dtl-info">
                                            <span>coqja2013</span>ㆍ<span>2022.01.13</span>
                                        </div>
                                    </div>
                                </div>
                                <pre>
                                    sdadsadsadsadsa
                                    asdasdasdasdsa
                                    dasdsadsadadsa
                                </pre>
                            </div>
                            <img src="coffeImg/product1.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="main-footer">
            <div class="footer-box">
                <div id="footer" class="_2ueQZ01Dc2">
                    <div class="_3EIHVy-S4E">
                        <p class="QxxT8K54s1">반품 배송비, 반품 배송주소 등은 해당 상품 페이지 내 안내를 참고해주세요.</p>
                        <div class="_3i59rveNvJ">
                            <div class="_1hBeKq0WZK">
                                (주) 스타벅스커피 코리아
                            </div>
                            <div class="_1MfSE21zUM">1522-3232
                                <span class="nqZbKjZOnH">인증</span>
                                <button class="_29j_1Rp_tF N=a:fot.report" type="button">
                                    잘못된 번호 신고
                                </button>
                            </div>
                            <div class="_2TupsMhDnt">
                                <button class="_3oMcQ3LMwm N=a:fot.info" type="button">판매자정보</button>
                            </div>
                        </div>
                    </div>
                    <div class="X0VbW3ZbWn">
                        <ul class="_1ve41ItfC-">
                            <li class="_24puSLo4Xp">
                                <a href="https://policy.naver.com/rules/service.html" class="_34tDRmVW4Z N=a:fot.agreement" target="_blank">네이버 약관</a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="http://pay.naver.com/provision?viewType=use" class="_34tDRmVW4Z N=a:fot.agreement" target="_blank">네이버페이 약관</a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="http://pay.naver.com/provision?viewType=electronic" class="_34tDRmVW4Z N=a:fot.ecagreement" target="_blank">전자금융거래 이용약관</a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="http://mktg.naver.com/privacy/privacy.html" class="_34tDRmVW4Z N=a:fot.privacy" target="_blank">
                                    <strong>개인정보처리방침</strong>
                                </a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="/main/rules/responsibility" class="_34tDRmVW4Z N=a:fot.disclaimer" target="_blank">책임의 한계와 법적고지</a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="http://www.naver.com/rules/youthpolicy.html" class="_34tDRmVW4Z N=a:fot.youth" target="_blank">청소년보호정책</a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="https://ips.smartstore.naver.com/owner/intro" class="_34tDRmVW4Z xoKqCuVIYW N=a:fot.ips" target="_blank">지식재산권신고센터</a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="https://ips.smartstore.naver.com/main/rules/safety" class="_34tDRmVW4Z N=a:fot.guide" target="_blank">안전거래 가이드</a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="http://help.pay.naver.com" class="_34tDRmVW4Z N=a:fot.faq" target="_blank">쇼핑&amp;페이 고객센터</a>
                            </li>
                        </ul>
                        <div class="_3WF0weXDeG">
                            <div class="_2sO8BtgrbT">
                                <strong>네이버㈜</strong>
                                <div class="_2jlpJpGhlq">사업자등록번호 220-81-62517
                                    <span class="_2E9BPjdIS_"></span>통신판매업신고번호 2006-경기성남-0692호<br>
                                    대표이사 한성숙
                                    <span class="_2E9BPjdIS_"></span>경기도 성남시 분당구 불정로 6 네이버 그린팩토리 13561<br>
                                    전화 1588-3819
                                    <span class="_2E9BPjdIS_"></span>이메일<!-- --> 
                                    <a href="mailto:helpcustomer@naver.com" class="_34tDRmVW4Z">helpcustomer@naver.com</a>
                                    <span class="_2E9BPjdIS_"></span>
                                    <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2208162517" target="_blank" class="_34tDRmVW4Z N=a:fot.info">사업자등록정보 확인</a><br>
                                    호스팅 서비스 제공 : NAVER Cloud</div>
                                </div>
                                <div class="_2sO8BtgrbT">
                                    <strong>고객센터</strong>
                                    <div class="_2jlpJpGhlq">강원도 춘천시 퇴계로 89 강원전문건설회관<br>
                                        전화 1588-3819
                                        <a href="javascript:void(0)" class="beforecall">전화전클릭</a><br>
                                        결제도용신고 1588-3816<br>
                                        <a href="https://help.pay.naver.com/mail/form.help" class="_34tDRmVW4Z _2zn_pvmCgE N=a:fot.custom" target="_blank">
                                            <strong>1:1문의 바로가기</strong>
                                        </a>
                                    </div>
                                </div>
                                <div class="_2sO8BtgrbT">
                                    <strong>전자금융거래 분쟁처리</strong>
                                    <div class="_2jlpJpGhlq">전화 1588-3819<br>
                                        <a href="https://help.pay.naver.com/mail/form.help" class="_34tDRmVW4Z _2zn_pvmCgE N=a:fot.custom" target="_blank">
                                            <strong>1:1문의 바로가기</strong>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <p class="_1B040yA4iA"> 네이버㈜는 통신판매중개자이며, 통신판매의 당사자가 아닙니다. 상품, 상품정보, 거래에 관한 의무와 책임은 판매자에게 있습니다.
                                <a href="https://help.pay.naver.com/faq/alias/cashpay01.help" target="_blank" class="OLaIdrzF4A">자세히보기 ></a>
                            </p>
                            <div class="DysrVRQK-G">
                                <a href="http://www.naver.com/" target="_blank" class="_2blwqqwHcU N=a:fot.navercorp">
                                    <span class="blind">NAVER</span>
                                </a>
                                <em>Copyright ©</em>
                                <a href="http://www.navercorp.com/" target="_blank" class="_34tDRmVW4Z">
                                    <strong>NAVER Corp.</strong>
                                </a>All Rights Reserved.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <script src="https://kit.fontawesome.com/7e652321d1.js" crossorigin="anonymous"></script>
</body>
</html>