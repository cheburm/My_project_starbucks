const mypageNameInfo = document.querySelector('.mypage-name-info span');
const ipName = document.querySelector('.ip-name');

const mypageDtlValue = document.querySelector('.mypage-dtl-value');
const mypageDtlPage = document.querySelectorAll('.mypage-dtl-page');

const profileFileCancel = document.querySelector('.profile-file-cancel');
const profileFile = document.querySelector('.profile-file');
const profileImg = document.querySelector('.profile-img');

const mypageFormBtn = document.querySelectorAll('.mypage-form-btn');
const mypageCancleBtn = document.querySelectorAll('.mypage-cancle-btn');



switch (mypageDtlValue.value) {
	case 'profile':
		mypageDtlPage[0].style.display = 'block';
		break;
	case 'contact':
		mypageDtlPage[1].style.display = 'block';
		break;
	case 'password':
		mypageDtlPage[2].style.display = 'block';
		break;
}

// 프로필 이름 수정

function profilePreView(input) {
	var reader = new FileReader();
	reader.onload = function(e) {
		profileImg.src = e.target.result;
	}
	reader.readAsDataURL(profileFile.files[0])
}

profileFileCancel.onclick = () => {
	profileImg.src = '/image/profile/baseImg.jpg';
}



for (let i = 0; i < mypageFormBtn.length; i++) {
	mypageFormBtn[i].onclick = () => {
		var formData = new FormData(mypageDtlPage[i]);
		if (i == 0) {
			profileupdate(formData);
		}
		if (i == 1) {
			contactupdate(formData);
		}
		if (i == 2) {
			passwordupdate(formData);
		}
	}
}

function profileupdate(formData) {

	$.ajax({
		type: 'put',
		url: '/mypage/profile',
		data: formData,
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		success: function(data) {
			alert('회원정보가 수정되었습니다.')
			location.href = '/mypage';
		},
		error: function() {
			alert('비동기 오류');
		}
	})
}



























