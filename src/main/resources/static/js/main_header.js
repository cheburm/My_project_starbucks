const userAnotherNavBtn = document.querySelector('.user-another-nav-btn');
const userAnotherNav = document.querySelector('.user-another-nav');
const productCategorys = document.querySelectorAll('.category');
const productKindName = document.querySelector('.product-kind-name');
const productKindList = document.querySelectorAll('.product-kind-list li');
var productCategoryNames = ['tumbler', 'coldCup', 'thermos', 'waterBottle', 'mugAndCup', 'lifeStyle', 'teaAndCoffeeSupplie', 'productAll'];
var productCategoryName = '';

for (let i = 0; i < productCategorys.length; i++) {
	
	productCategorys[i].onclick = () => {
		productCategoryName = productCategoryNames[i];
		location.href = `/category/${productCategoryName}`;
	}
}


	userAnotherNavBtn.onclick = () => {
		userAnotherNav.style.display = 'block';
	}
	userAnotherNavBtn.onblur = () => {
		userAnotherNav.style.display = 'none';
	}
