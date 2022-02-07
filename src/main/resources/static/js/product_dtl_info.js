var productTagBtn = document.getElementsByClassName('product-tag-btn');
const productTagListBtn = document.querySelectorAll('.product-tag-list button');
const productDtlInfo = document.querySelector('.product-dtl-info');
const productReviewBody = document.querySelector('.product-review-body');
const productRefundBody = document.querySelector('.product-refund-body');
const reviewPage = document.querySelector('.review-page');
const productReviewList = document.querySelector('.product-review-list');
const productName = document.querySelector('.product-name h3');

for (let i = 0; i < productTagBtn.length; i++) {
	productTagBtn[i].addEventListener('click', function() {
		for (let j = 0; j < productTagBtn.length; j++) {
			productTagBtn[j].style.color = "#333333";
			productTagBtn[j].style.backgroundColor = "#ffffff";
		}
		this.style.backgroundColor = "#3d3d4f";
		this.style.color = "#ffffff";

		if (i == 0) {
			productDtlInfo.style.display = 'block';
			productReviewBody.style.display = 'none';
			productRefundBody.style.display = 'none';
		} else if (i == 1) {
			productDtlInfo.style.display = 'none';
			productReviewBody.style.display = 'block';
			productRefundBody.style.display = 'none';
		} else {
			productDtlInfo.style.display = 'none';
			productReviewBody.style.display = 'none';
			productRefundBody.style.display = 'block';
		}
	})
}

window.onload = () => {
	$.ajax({
		type: "get",
		url: "/totalReviewShow/" + productTagListBtn[1].value,
		success: function(data) {
			reviewView(data);
		},
		error: function() {
			alert('비동기오류');
		}
	})
}

function reviewView(data) {
	var totalScore = '';
	for (productReviewShow of data) {

		if (productReviewShow.total_score == 1) {
			totalScore = '★☆☆☆☆';
		} else if (productReviewShow.total_score == 2) {
			totalScore = '★★☆☆☆';
		} else if (productReviewShow.total_score == 3) {
			totalScore = '★★★☆☆';
		} else if (productReviewShow.total_score == 4) {
			totalScore = '★★★★☆';
		} else {
			totalScore = '★★★★★';
		}

		productReviewList.innerHTML += `
	<div class="product-review">
        <div class="product-review-info">
            <div class="review-user-info">
                <img src="/coffeImg/work.png" alt="">
                <div class="review-upload">
                    <div class="product-review-score">${totalScore}<span>${productReviewShow.total_score}</span></div>
                    <div class="uload-info">
                        <span class="user-id">${productReviewShow.username}</span>ㆍ
                        <span class="reivew-upload-date">${productReviewShow.create_date}</span>
                    </div>
                </div>
            </div>
            <div class="user-review-preview">
                <div class="user-review">
                ${productReviewShow.review_write}
                </div>
            </div>
        </div>
        <div class="review-imgs">
            <img src="/image/productReview/${productReviewShow.product_code}/${productReviewShow.review_files[0]}" alt="">
        </div>
    </div>
	`;
	}
}

const productBtns = document.querySelectorAll('.product-num button');
const productNums = document.querySelector('.product-num span');
const productPrice = document.querySelector('.product-total-price h1');

var productNum = 1;
const productBasePrice = Number(productPrice.textContent);

for (let i = 0; i < productBtns.length; i++) {
	productBtns[i].onclick = () => {
		if (i == 0 && productNums.textContent > 1) {
			--productNum;
			let productMinus = Number(productPrice.textContent) - productBasePrice;
			let productTotalPrice = productMinus;
			productPrice.textContent = productTotalPrice
		}

		if (i == 1 && productNums.textContent < 5) {
			++productNum;
			let productAdd = Number(productPrice.textContent) + productBasePrice;
			let productTotalPrice = productAdd;
			productPrice.textContent = productTotalPrice

		} else if (i == 1 && productNums.textContent > 4) {
			alert('5개 이하로 구매하실 수 있습니다.')
		}
		productNums.textContent = productNum;
	}
	productNums.textContent = productNum;
}


/*결제 시스템*/
const productBuy = document.querySelector('.product-buy');
const userName = document.querySelector('.user-name');

// console.log(window.IMP);
var IMP = window.IMP;
IMP.init("imp40436278"); // 관리자콘솔
var IMP_paramObj = null;

productBuy.onclick = () => {
	IMP_paramObj = {
		pg: "html5_inicis", // 이니시스
		pay_method: "card",
		merchant_uid: "merchant_" + new Date().getTime, // 중복위험! UUID 사용해도 되고 시간 사용해도 됨
		name: productName.textContent,
		amount: productPrice.textContent,
		buyer_name: userName.textContent,
		/*buyer_email: "coqja2013@naver.com",
		buyer_tel: "010-4619-2026",
		buyer_addr: "경상남도 김해시 부원동",
		buyer_postcode: "01181"*/
	}

	IMP.request_pay(IMP_paramObj,
		function(rsp) { // callback
			if (rsp.success) {
				alert(rsp.success);
				// 결제 성공
				alert('결제되었습니다.감사합니다 사기당하셨습니다.');
			} else {
				// 결제 실패
				alert('결제에 실패했습니다. 에러내용 : ' + rsp.error_msg);
			}
		});
}




