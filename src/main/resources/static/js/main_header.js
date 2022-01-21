const userAnotherNavBtn = document.querySelector('.user-another-nav-btn');
const userAnotherNav = document.querySelector('.user-another-nav');
const productCategorys = document.querySelectorAll('.category');

var productCategoryNames = ['tumbler','coldCup','thermos','waterBottle','mugAndCup','lifeStyle','teaAndCoffeeSupplie','productAll'];
var productCategoryName = '';
for (let i = 0; i < productCategorys.length; i++) {
	productCategorys[i].onclick = () => {
		 productCategoryName = productCategoryNames[i];

		$.ajax({
			type: "get",
			url: `/category/${productCategoryName}`,
			success: function(data) {
				alert(data);
				location.href = '/products/product_lists';
			},
			error: function() {
				alert('비동기 처리 오류.');
			}
		});
	}
}

userAnotherNavBtn.onclick = () => {
	userAnotherNav.style.display = 'block';
}
userAnotherNavBtn.onblur = () => {
	userAnotherNav.style.display = 'none';
}