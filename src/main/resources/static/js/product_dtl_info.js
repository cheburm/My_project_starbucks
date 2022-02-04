var productTagBtn = document.getElementsByClassName('product-tag-btn');
const productTagListBtn = document.querySelectorAll('.product-tag-list button');
const productDtlInfo = document.querySelector('.product-dtl-info');
const productReviewBody = document.querySelector('.product-review-body');
const productRefundBody = document.querySelector('.product-refund-body');
const reviewPage = document.querySelector('.review-page');

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


/* 리뷰 불러오기 부분 */

productTagListBtn[1].onclick = () => {
	$.ajax({
		type: "get",
		url: "/totalReviewShow/" + productTagListBtn[1].value,
		success: function(data){
			
		},
		error: function(){
			alert('비동기 오류')	
		}
	})
}





