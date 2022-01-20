const categoryBtn = document.querySelectorAll('.category-btn');
const productUpload = document.querySelector('.product-upload');
const form = document.querySelector('.product-upload-content');

var categoryBtnFlag = new Array();
var categoryName = new Array();
var categoryDeleteName = '';

for (let i = 0; i < categoryBtn.length; i++) {
	categoryBtn[i].onclick = () => {
		if (categoryBtnFlag[i] == null || categoryBtnFlag[i] == false) {
			categoryBtn[i].style.backgroundColor = '#006633';
			categoryBtnFlag[i] = true;
			categoryName.push(categoryBtn[i].value);
		} else if (categoryBtnFlag[i] == true) {
			categoryBtn[i].style.backgroundColor = '#d1d1d1';
			categoryBtnFlag[i] = false;

			categoryDeleteName = categoryName.indexOf(categoryBtn[i].value);
			categoryName.splice(categoryDeleteName, 1);
		}
	}
}
productUpload.onclick = () => {
	let formData = new FormData(form)
	formData.append('product_categoryName',categoryName)
	$.ajax({
		type: 'post',
		url: '/admin/productUpload',
		data: formData,
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		success: function(data){
			alert('상품 등록되었습니다.');
		},
		error: function(){
			alert('비동기 오류');
		}
	})
}










