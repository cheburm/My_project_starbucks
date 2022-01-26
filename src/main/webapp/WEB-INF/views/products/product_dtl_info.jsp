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
    <title>스타벅스</title>
    <link rel="stylesheet" href="/css/product_dtl_info.css">
</head>
<body>
    <div class="container">
    <jsp:include page="../include/main_header.jsp"></jsp:include>
        <div class="product-dtl-container">
            <div class="product-dtl-body">
                <div class="product-pay-info">
                    <div class="product-pay-info-left">
                        <img src="/image/products/${productDtl.product_img }" class="product-img">
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
                                <h3>${productDtl.product_name }</h3>
                            </div>
                            <div class="product-price">
                                <span class="price">${productDtl.product_price }</span>
                                <span class="won">원</span>
                            </div>
                        </div>
                        <div class="pay-point">
                            <div class="pay-point-name">
                            <c:choose>
	                            <c:when test="${not empty principal.name}">
	                                <span>${principal.user.name }</span>
	                                <span>님만을 위한 혜택</span>
	                            </c:when>
	                            <c:otherwise>
                            		<span>스타벅스 고객을 위한 혜택</span>
	                            </c:otherwise>
                            </c:choose>
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
                        <c:if test="${empty principal.username}">
                        <a href="/auth/signin" class="signin-banner" >
                            <span>로그인구매시 5% 적립</span>
                            포기하시겠어요?
                            <div>받기</div>
                            <p>></p>
                        </a>
                        </c:if>
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
                                <strong>3000</strong>
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
                                <h1>${productDtl.product_price }</h1>
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
                    <button class="product-tag-btn">상세정보</button>
                    <button class="product-tag-btn">리뷰</button>
                    <button class="product-tag-btn">반품/교환정보</button>
                </div>
                <div class="product-dtl-info">
                    <img src="/image/productDtls/${productDtl.product_introduction_img }" alt="">
                    <img src="/coffeImg/product-info2.jpg" alt="">
                    <img src="/coffeImg/product-info3.jpg" alt="">
                </div>
            </div>
            
            <div class="product-review-body" style="display: none">
                <div class="review-nav">
                    <strong>리뷰 <div>500</div>건</strong>
                    <div class="review-order">
                        <a href="">최신순</a>
                        <a href="">평점 높은순</a>
                        <a href="">평점 낮은순</a>
                    </div>
                </div>
                <div class="product-review-list">
                    <div class="product-review">
                        <div class="product-review-info">
                            <div class="review-user-info">
                                <img src="/coffeImg/work.png" alt="">
                                <div class="review-upload">
                                    <div class="product-review-score">☆☆☆☆☆<span>3</span></div>
                                    <div class="uload-info">
                                        <span class="user-id">coqja2013</span>ㆍ
                                        <span class="reivew-upload-date">22.01.22</span>
                                    </div>
                                </div>
                            </div>
                            <div class="user-review-preview">
                                <div class="user-review">
                                    sdcscvdsvsdvsdvsdcscvdsvsdvsdvdssdcscvdsvsdvsdvdssdcscvdsvsdvsdvdssdcscvdsvsdvsdvdssdcscvdsvsdvsdvdssdcscvdsvsdvsdvdssdcscvdsvsdvsdvdssdcscvdsvsdvsdvdsds
                                </div>
                            </div>
                        </div>
                        <div class="review-imgs">
                            <img src="/coffeImg/work.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-refund-body" style="display: none">
                <h3 class="product-refund-msg">반품/교환정보</h3>
                <div class="refund-msg-guide">
                    <strong>스타벅스 반품/교환 안내</strong>
                    <p>반품 시 먼저 판매자와 연락하셔서 반품사유,택배사,배송비,반품지 주소 등을 협의하신 후 반품상품을 발송해 주시기 바랍니다.</p>
                </div>
                <div>
                    <div class="refund-box">
                        <div scope="row" class="refund-box-msg">판매자 지정택배사</div>
                        <div colspan="3" class="refund-box-comment">CJ대한통운</div>
                    </div>
                    <div class="refund-box">
                        <div scope="row" class="refund-box-msg">반품배송비</div>
                        <div class="refund-box-comment">편도 3,000원 (최초 배송비 무료인 경우 6,000원 부과)</div>
                    </div>
                    <div class="refund-box">
                        <div scope="row" class="refund-box-msg">보내실 곳</div>
                        <div colspan="3" class="refund-box-comment">경기도 고양시 덕양구 대덕로 121 2층 경기광주 집배점 (우 : 10541) </div>
                    </div>
                    <div class="refund-box">
                        <div scope="row" rowspan="2" class="refund-box-msg">반품/교환 사유에 따른 요청 가능 기간</div>
                        <div colspan="3" class="refund-box-comment">구매자 단순 변심은 상품 수령 후 7일 이내
                            <span class="_3OXYkEjCxo">(구매자 반품배송비 부담)</span>
                        </div>
                    </div>
                    <div class="refund-box">
                        <div class="refund-box">
                            <div scope="row" rowspan="7" class="refund-box-msg">반품/교환 불가능 사유</div>
                            <div colspan="3" class="refund-box-comment">
                                <ul class="_1KgmaRlDnI">
                                    <li class="_2VsRrv9CHS"><span class="_18irp6aLGm">1.</span>반품요청기간이 지난 경우</li>
                                    <li class="_2VsRrv9CHS"><span class="_18irp6aLGm">2.</span>구매자의 책임 있는 사유로 상품 등이 멸실
                                        또는
                                        훼손된 경우 <span class="_3OXYkEjCxo">(단, 상품의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외)</span>
                                    </li>
                                    <li class="_2VsRrv9CHS"><span class="_18irp6aLGm">3.</span>구매자의 책임있는 사유로 포장이 훼손되어 상품
                                        가치가
                                        현저히 상실된 경우
                                        <span class="_3OXYkEjCxo">(예: 식품, 화장품, 향수류, 음반 등)</span>
                                    </li>
                                    <li class="_2VsRrv9CHS"><span class="_18irp6aLGm">4.</span>구매자의 사용 또는 일부 소비에 의하여 상품의
                                        가치가
                                        현저히 감소한 경우
                                        <span class="_3OXYkEjCxo">(라벨이 떨어진 의류 또는 태그가 떨어진 명품관 상품인 경우)</span>
                                    </li>
                                    <li class="_2VsRrv9CHS"><span class="_18irp6aLGm">5.</span>시간의 경과에 의하여 재판매가 곤란할 정도로
                                        상품
                                        등의 가치가 현저히 감소한 경우
                                    </li>
                                    <li class="_2VsRrv9CHS"><span class="_18irp6aLGm">6.</span>고객의 요청사항에 맞춰 제작에 들어가는
                                        맞춤제작상품의
                                        경우 <span class="_3OXYkEjCxo">(판매자에게 회복불가능한 손해가 예상되고, 그러한 예정으로 청약철회권 행사가 불가하다는
                                            사실을 서면
                                            동의 받은 경우)</span>
                                    </li>
                                    <li class="_2VsRrv9CHS"><span class="_18irp6aLGm">7.</span>복제가 가능한 상품 등의 포장을 훼손한 경우
                                        <span class="_3OXYkEjCxo">(CD/DVD/GAME/도서의 경우 포장 개봉 시)</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../include/main_footer.jsp"></jsp:include>
    </div>
    <script src="/js/product_dtl_info.js"></script>
    <script src="https://kit.fontawesome.com/7e652321d1.js" crossorigin="anonymous"></script>
</body>
</html>