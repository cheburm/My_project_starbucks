const photoReviewGuideBox = document.querySelector('.photo-review-guide-box');
const reviewAnotherGuide = document.querySelector('.review-another-guide');
const scoreBtn = document.querySelectorAll('.score-btn i');
const scoreMsg = document.querySelector('.score-msg');
const reviewProductWriteMsg = document.querySelector('.review-product-write-msg strong');
const reviewPhotoOnload = document.querySelector('.review-photo-onload');
const reviewPhotoBtn = document.querySelector('.review-photo-btn');
const reviewUploadBtn = document.querySelector('.review-upload-btn');
const reviewPhotoList = document.querySelector('.review-photo-list');
const form = document.querySelector('form');
const reviewWriteCount = document.querySelector('.review-write-count span');
const reviewWrite = document.querySelector('.review-write');
const totalScore = document.querySelector('.total-score');

/* 별점 부분 */

var reviewAnotherGuideFlag = false;

photoReviewGuideBox.onclick = () => {
	if (reviewAnotherGuideFlag == false) {
		reviewAnotherGuide.style.display = 'block';
		reviewAnotherGuideFlag = true;
	} else {
		reviewAnotherGuide.style.display = 'none';
		reviewAnotherGuideFlag = false;
	}
}

var scoreCount = 0;

for (let i = 0; i < scoreBtn.length; i++) {
	scoreBtn[i].onclick = () => {
		scoreMsg.style.color = 'red';
		if (i == 0) {
			scoreCount = 1;
			scoreMsg.textContent = '1점 (별로예요)';
		} else if (i == 1) {
			scoreCount = 2;
			scoreMsg.textContent = '2점 (그저그래요)';
		} else if (i == 2) {
			scoreCount = 3;
			scoreMsg.textContent = '3점 (괜찮아요)';
		} else if (i == 3) {
			scoreCount = 4;
			scoreMsg.textContent = '4점 (좋아요)';
		} else {
			scoreCount = 5;
			scoreMsg.textContent = '5점 (최고예요)';
		}

		if (i < 2) {
			reviewProductWriteMsg.textContent =
				'만족도 ' + scoreCount + '점을 주셨네요.어떤 점이 아쉬웠나요?';
		} else {
			reviewProductWriteMsg.textContent =
				'만족도 ' + scoreCount + '점을 주셨네요.어떤 점이 좋았나요?';
		}

		for (let j = 0; j < scoreBtn.length; j++) {
			scoreBtn[j].style.color = '#dfdfdf';
		}
		scoreCountTotal();
	}
}
function scoreCountTotal() {
	for (let i = 0; i < scoreCount; i++) {
		scoreBtn[i].style.color = 'red';
	}
	totalScore.value = scoreCount;
}

/* 리뷰 텍스트 부분 */

reviewWrite.onkeyup = () => {
	reviewWriteCount.textContent = reviewWrite.value.length;
}


/* 파일 업로드 부분 */

var imgfiles = '';

function filePreView() {
	let fileListNum = reviewPhotoOnload.files.length;
	for (let i = 0; i < fileListNum; i++) {
		let reader = new FileReader(reviewPhotoOnload.files[i]);
		reader.readAsDataURL(reviewPhotoOnload.files[i]);
		reader.onload = (e) => {
			imgfiles = e.target.result;
			reviewPhotoList.innerHTML += `
			<div class="review-photo">
            	<img src="${imgfiles}">
            	<button class="review-photo-close" type="button"><i class="fas fa-window-close"></i></button>
            </div>
			`;
			imgDelete();
		}
	}
}

var fileListAsArray = [];
var dataTransfer = new DataTransfer();

function imgDelete() {
	const reviewPhotoClose = document.querySelectorAll('.review-photo-close');
	const reviePhoto = document.querySelectorAll('.review-photo');
	fileListAsArray = Array.from(reviewPhotoOnload.files);
	for (let i = 0; i < reviewPhotoClose.length; i++) {
		reviewPhotoClose[i].onclick = () => {
			reviePhoto[i].remove();
			fileListAsArray.splice(fileListAsArray[i], 1);
		}
	}
}
reviewUploadBtn.onclick = () => {
	fileListAsArray.forEach(file => { dataTransfer.items.add(file); });
	reviewPhotoOnload.files = dataTransfer.files;
	let formData = new FormData(form);
	$.ajax({
		type: "post",
		url: "/review-insert",
		data: formData,
		dataType: "text",
		enctype: "multipart/form-data",
		processData: false,
		contentType: false,
		success: function(data) {
			alert('리뷰가 등록되었습니다');
			window.close();
		},
		error: function() {
			alert('문제있음');
		}
	})

}















