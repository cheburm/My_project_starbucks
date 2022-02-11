const mypageProductDtlValue = document.querySelector('.mypage-product-dtl-value');
const orderInformationModify = document.querySelectorAll('.order-information-modify');
const userId = document.querySelector('.user-id');

switch (mypageProductDtlValue.value) {
	case 'order_list':
		orderInformationModify[0].style.display = 'block';
		break;

	case 'product_like':
		orderInformationModify[1].style.display = 'block';
		break;
}
