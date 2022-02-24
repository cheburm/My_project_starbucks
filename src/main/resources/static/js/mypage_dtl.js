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
	var reader = new FileReader(input);
	reader.readAsDataURL(profileFile.files[0])
	reader.onload = function(e) {
		profileImg.src = e.target.result;
	}
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
			passwordupdate();
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

// 비밀번호 수정
const oldPassword = document.querySelector('.old-password');
const passwordIpMsg = document.querySelector('.password-ip-msg');
const passwordIp = document.querySelectorAll('.password-ip')

var passwordFlag = false;
var finalPasswordFlag = false;

var user_password_info = {
	password_old: '',
	password_new: ''
}
function passwordupdate() {
	if (finalPasswordFlag == true) {
		if (passwordIp[0].value != passwordIp[1].value) {
			user_password_info.password_old = passwordIp[0].value;
			user_password_info.password_new = passwordIp[1].value;
			$.ajax({
				type: "put",
				url: "/mypage/password",
				data: JSON.stringify(user_password_info),
				contentType: "application/json; charset=UTF-8",
				dataType: "text",
				success: function(data) {
					if (data == '1') {
						
					} else {
						alert('현재 비밀번호가 맞지않습니다.');
					}
				},
				error: function() {
					alert('비동기 처리 오류');
				}

			})
		} else {
			alert('비밀번호가 새비밀번호와 일치합니다.')
			passwordIp[0].value = '';
		}
	}
}

passwordIp[1].onkeyup = () => {
	if (passwordIp[1].value.length == 0) {
		passwordIp[1].style.border = '1px solid #c5c5c5';
		passwordIp[2].style.border = '1px solid #c5c5c5';
		passwordIpMsg.textContent = '';
		finalPasswordFlag = false;
		passwordFlag = false;
	} else if (passwordIp[1].value.length != 0 && !/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,16}$/.test(passwordIp[1].value)) {
		passwordIpMsg.textContent = '8~16자 영문 소문자, 숫자, 특수문자를 사용하세요.';
		passwordIp[1].style.border = '1px solid #c5c5c5';
		passwordIp[2].style.border = '1px solid #c5c5c5';
		passwordFlag = false;
		finalPasswordFlag = false;
	} else if (passwordIp[1].value == passwordIp[2].value) {
		passwordIp[1].style.border = '1px solid #006633';
		passwordIp[2].style.border = '1px solid #006633';
		passwordIpMsg.textContent = '';
		finalPasswordFlag = true;
		passwordFlag = true;
	} else {
		passwordIp[1].style.border = '1px solid #006633';
		passwordIpMsg.textContent = '';
		passwordFlag = true;
	}
}

passwordIp[1].onblur = () => {
	if (passwordIp[1].value.length != 0 && passwordFlag == false) {
		passwordIp[1].style.border = '1px solid red';
		passwordIpMsg.textContent = '비밀번호 형식이 맞지않습니다.';
		finalPasswordFlag = false;
	} else if (passwordIp[1].value.length != 0 && passwordFlag == true) {
		passwordIp[1].style.border = '1px solid #006633';
		passwordIpMsg.textContent = '';
		passwordFlag == true;
	}
}

passwordIp[2].onkeyup = () => {
	if (passwordFlag == true) {
		if (passwordIp[2].value.length == 0) {
			passwordIp[2].style.border = '1px solid #c5c5c5';
			passwordIpMsg.textContent = '';
			finalPasswordFlag = false;
		} else if (passwordIp[1].value != passwordIp[2].value) {
			passwordIp[2].style.border = '1px solid #c5c5c5';
			passwordIpMsg.textContent = '새비밀번호가 일치하지 않습니다.';
			finalPasswordFlag = false;
		} else if (passwordIp[1].value == passwordIp[2].value) {
			passwordIp[2].style.border = '1px solid #006633';
			passwordIpMsg.textContent = '';
			finalPasswordFlag = true;
		}
	}
}

passwordIp[2].onblur = () => {
	if (passwordFlag == true) {
		if (passwordIp[1].value != passwordIp[2].value) {
			passwordIp[2].style.border = '1px solid red';
			passwordIpMsg.textContent = '새비밀번호가 일치하지 않습니다.';
			finalPasswordFlag = false;
		} else if (passwordIp[1].value == passwordIp[2].value) {
			passwordIp[2].style.border = '1px solid #006633';
			finalPasswordFlag == true;
		}
	}
}





















