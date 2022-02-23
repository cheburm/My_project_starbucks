const productKindView = document.querySelector('.product-kind-view');
const productKindList = document.querySelector('.product-kind-list');
const productNumberView = document.querySelector('.product-number-view');
const productNumberList = document.querySelector('.product-number-list');
const freeShipping = document.querySelector('.free-shipping');
const switchOnOff = document.querySelector('.switch-on-off');
const switchControl = document.querySelector('.switch-control');
const categoryName = document.querySelector('.category-name');
const productList = document.querySelector('.product-list');

var freeShippingFlag = false;

productKindView.onclick = () => {
	productKindList.style.display = 'block';
}

productKindView.onblur = () => {
	productKindList.style.display = 'none';
}

productNumberView.onclick = () => {
	productNumberList.style.display = 'block';
}

productNumberView.onblur = () => {
	productNumberList.style.display = 'none';
}

freeShipping.onclick = () => {
	if (freeShippingFlag == false) {
		switchOnOff.style.backgroundColor = '#006633';
		switchControl.style.left = '20px';
		freeShippingFlag = true;
	} else if (freeShippingFlag == true) {
		switchOnOff.style.backgroundColor = '#c8ccd5';
		switchControl.style.left = '0';
		freeShippingFlag = false;
	}
	freeShippingProductList();

}

function freeShippingProductList() {
	$.ajax({
		type: "get",
		url: "/category/" + categoryName.value + "/" + freeShippingFlag,
		success: function(data) {
			productList.innerHTML = '';
			freeShippingProduct(data);
		},
		error: function() {
			alert('비동기 오류')
		}
	})
}

function freeShippingProduct(data) {

	for (freeShippingView of data) {
		productList.innerHTML += `
				<div class="product">
                    <a href="/product/${freeShippingView.product_code}" class="product-link">
                        <img src="/image/products/${freeShippingView.product_img}">
                        <div class="product-name"><strong>${freeShippingView.product_name}</strong></div>
                        <strong class="product-price"><span>${freeShippingView.product_price}</span>원</strong>
                    </a>
                    <div class="product-score">평점 <span>${freeShippingView.total_score}</span> · 리뷰 <span>${freeShippingView.total_review}</span></div>
                </div>
				`
	}
}



