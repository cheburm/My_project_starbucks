const categoryBtn = document.querySelectorAll('.category-btn');
const productUpload = document.querySelector('.product-upload');
const form = document.querySelector('.product-upload-content');
const imgDelete = document.querySelector('.img-delete');
const itemDtlMsg = document.querySelector('.itemdtl-msg');
const preview = document.querySelector('.preview');

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
			location.replace('/admin/admin_product_upload');
		},
		error: function(){
			alert('비동기 오류');
		}
	})
}

function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            preview.src = e.target.result;
            imgDelete.style.display = 'block';
        };
        reader.readAsDataURL(input.files[0]);
        productDtlInput();
    } else {
        preview.src = "";
    }
}

imgDelete.onclick = () => {
    imgDelete.style.display = 'none';
    preview.src = "";
    itemDtlMsg.style.display = 'none';
}

function productDtlInput() {
    if (preview.src == null) {
        itemDtlMsg.style.display = 'none';
    } else {
        itemDtlMsg.style.display = 'block';
    }
}










