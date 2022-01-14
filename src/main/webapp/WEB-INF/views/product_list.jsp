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
    <link rel="stylesheet" href="css/main_footer.css">
    <link rel="stylesheet" href="css/product_list.css">
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
        <div class="product-list-container">
            <div class="product-nav">
                <div class="product-info">
                    <span class="product-kind-name">상품 종류</span>
                    <button class="product-kind-view" type="button">
                        <span>상품종류</span>(총 <span>01</span>개)
                        <i class="fas fa-sort-down"></i>
                        <ul class="product-kind-list">
                            <li>텀블러</li>
                            <li>콜드컵</li>
                            <li>보온병</li>
                            <li>워터보틀</li>
                            <li>머그,컵</li>
                            <li>라이프스타일</li>
                            <li>티,커피용품</li>
                            <li>전체상품</li>
                            <li>추천상품</li>
                        </ul>
                    </button>
                </div>
                <div class="product-view">
                    <ul class="product-view-info">
                        <li><i class="fas fa-check"></i>인기도순</li>
                        <li>낮은가격순</li>
                        <li>최신등록순</li>
                        <li>리뷰많은순</li>
                        <li>평점높은순</li>
                    </ul>
                    <div class="product-view-info-num">
                        <button class="free-shipping">
                            <span>무료배송</span>
                            <div class="switch-on-off">
                                <div class="switch-control"></div>
                                <p class="switch-on">on</p>
                                <p class="switch-off">off</p>
                            </div>
                        </button>
                        <button class="product-number-view" type="button">
                            <span>20</span>개씩 보기
                            <i class="fas fa-sort-down"></i>
                            <ul class="product-number-list">
                                <li>20개씩 보기</li>
                                <li>40개씩 보기</li>
                                <li>60개씩 보기</li>
                                <li>80개씩 보기</li>
                            </ul>
                        </button>
                    </div>
                </div>
            </div>
            <div class="product-list">
                <div class="product">
                    <a href="" class="product-link">
                        <img src="coffeImg/best1.png" alt="">
                        <div class="product-name"><strong>그린 사이렌 도트 머그 237ml</strong></div>
                        <strong class="product-price"><span>111,111</span>원</strong>
                    </a>
                    <div class="product-score">평점 <span>5.0</span> · 리뷰 <span>655</span></div>
                </div>
                <div class="product">
                    <a href="" class="product-link">
                        <img src="coffeImg/best1.png" alt="">
                        <div class="product-name"><strong>그린 사이렌 도트 머그 237ml</strong></div>
                        <strong class="product-price"><span>111,111</span>원</strong>
                    </a>
                    <div class="product-score">평점 <span>5.0</span> · 리뷰 <span>655</span></div>
                </div>
            </div>
            <div class="product-page-num">
                <a href="">1</a>
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
                                <a href="https://policy.naver.com/rules/service.html"
                                    class="_34tDRmVW4Z N=a:fot.agreement" target="_blank">네이버 약관</a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="http://pay.naver.com/provision?viewType=use"
                                    class="_34tDRmVW4Z N=a:fot.agreement" target="_blank">네이버페이 약관</a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="http://pay.naver.com/provision?viewType=electronic"
                                    class="_34tDRmVW4Z N=a:fot.ecagreement" target="_blank">전자금융거래 이용약관</a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="http://mktg.naver.com/privacy/privacy.html" class="_34tDRmVW4Z N=a:fot.privacy"
                                    target="_blank">
                                    <strong>개인정보처리방침</strong>
                                </a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="/main/rules/responsibility" class="_34tDRmVW4Z N=a:fot.disclaimer"
                                    target="_blank">책임의 한계와 법적고지</a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="http://www.naver.com/rules/youthpolicy.html" class="_34tDRmVW4Z N=a:fot.youth"
                                    target="_blank">청소년보호정책</a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="https://ips.smartstore.naver.com/owner/intro"
                                    class="_34tDRmVW4Z xoKqCuVIYW N=a:fot.ips" target="_blank">지식재산권신고센터</a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="https://ips.smartstore.naver.com/main/rules/safety"
                                    class="_34tDRmVW4Z N=a:fot.guide" target="_blank">안전거래 가이드</a>
                            </li>
                            <li class="_24puSLo4Xp">
                                <a href="http://help.pay.naver.com" class="_34tDRmVW4Z N=a:fot.faq"
                                    target="_blank">쇼핑&amp;페이 고객센터</a>
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
                                    <span class="_2E9BPjdIS_"></span>이메일
                                    <!-- -->
                                    <a href="mailto:helpcustomer@naver.com"
                                        class="_34tDRmVW4Z">helpcustomer@naver.com</a>
                                    <span class="_2E9BPjdIS_"></span>
                                    <a href="http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2208162517" target="_blank"
                                        class="_34tDRmVW4Z N=a:fot.info">사업자등록정보 확인</a><br>
                                    호스팅 서비스 제공 : NAVER Cloud
                                </div>
                            </div>
                            <div class="_2sO8BtgrbT">
                                <strong>고객센터</strong>
                                <div class="_2jlpJpGhlq">강원도 춘천시 퇴계로 89 강원전문건설회관<br>
                                    전화 1588-3819
                                    <a href="javascript:void(0)" class="beforecall">전화전클릭</a><br>
                                    결제도용신고 1588-3816<br>
                                    <a href="https://help.pay.naver.com/mail/form.help"
                                        class="_34tDRmVW4Z _2zn_pvmCgE N=a:fot.custom" target="_blank">
                                        <strong>1:1문의 바로가기</strong>
                                    </a>
                                </div>
                            </div>
                            <div class="_2sO8BtgrbT">
                                <strong>전자금융거래 분쟁처리</strong>
                                <div class="_2jlpJpGhlq">전화 1588-3819<br>
                                    <a href="https://help.pay.naver.com/mail/form.help"
                                        class="_34tDRmVW4Z _2zn_pvmCgE N=a:fot.custom" target="_blank">
                                        <strong>1:1문의 바로가기</strong>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <p class="_1B040yA4iA"> 네이버㈜는 통신판매중개자이며, 통신판매의 당사자가 아닙니다. 상품, 상품정보, 거래에 관한 의무와 책임은 판매자에게 있습니다.
                            <a href="https://help.pay.naver.com/faq/alias/cashpay01.help" target="_blank"
                                class="OLaIdrzF4A">자세히보기 ></a>
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
        </footer>
    </div>
    <script src="js/product_list.js"></script>
    <script src="https://kit.fontawesome.com/7e652321d1.js" crossorigin="anonymous"></script>
</body>

</html>