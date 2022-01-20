const userAnotherNavBtn = document.querySelector('.user-another-nav-btn');
const userAnotherNav = document.querySelector('.user-another-nav');
const productCategorys = document.querySelectorAll('.category');

for (let i = 0; i < productCategorys.length; i++) {

	productCategorys[i].onclick = () => {

		let productCategoryName = '';
		if (productCategorys == 0) {
			productCategoryName = 'tumbler';
		} else if (productCategorys == 1) {
			productCategoryName = 'coldCup';
		} else if (productCategorys == 2) {
			productCategoryName = 'thermos';
		} else if (productCategorys == 3) {
			productCategoryName = 'waterBottle';
		} else if (productCategorys == 4) {
			productCategoryName = 'mugAndCup';
		} else if (productCategorys == 5) {
			productCategoryName = 'lifeStyle';
		} else if (productCategorys == 6) {
			productCategoryName = 'teaAndCoffeeSupplie';
		} else if (productCategorys == 7) {
			productCategoryName = 'tumblerPart';
		} else if (productCategorys == 8) {
			productCategoryName = 'productAll';
		}

		$.ajax({
			type: "get",
			url: `/category/${productCategoryName}`,
			data: formData,
			dataType: "text",
			enctype: "multipart/form-data",
			processData: false,
			contentType: false,
			success: function(data) {

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