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




