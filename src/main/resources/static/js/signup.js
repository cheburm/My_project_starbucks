const signup_Ip = document.querySelectorAll('.signup-ip input');
const signupIpMsg = document.querySelectorAll('.signup-ip-msg');

var reg = "^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,16}$";

for (let i = 0; i < signup_Ip.length - 1; i++) {
    signup_Ip[i].onkeydown = () => {
        signupIpMsg[i].textContent = '';
    }
}

// 아이디 정규식
signup_Ip[0].onblur = () => {
    signupIpMsg[0].style.display = 'block';
    if (signup_Ip[0].value.length == 0) {
        signupIpMsg[0].textContent = '필수 정보 입니다.';
    } else if (signup_Ip[0].value.length != 0 && !/^[a-z0-9]{5,20}$/.test(signup_Ip[0].value)) {
        signupIpMsg[0].textContent = '아이디는 영 소문자, 숫자 5~20자리로 입력해주세요.';
    } else {
        signupIpMsg[0].style.display = 'none';
    }
}

//비밀번호 정규식
signup_Ip[1].onblur = () => {
    signupIpMsg[1].style.display = 'block';
    if (signup_Ip[1].value.length == 0) {
        signupIpMsg[1].textContent = '필수 정보 입니다.';
    } else if (signup_Ip[1].value.length != 0 && !/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,16}$/.test(signup_Ip[1].value)) {
        signupIpMsg[1].textContent = '8~16자 영문 소문자, 숫자, 특수문자를 사용하세요.';
    } else {
        signupIpMsg[1].style.display = 'none';
    }
}
//비밀번호 재확인 정규식
signup_Ip[2].onblur = () => {
    signupIpMsg[2].style.display = 'block';
    if (signup_Ip[2].value.length == 0) {
        signupIpMsg[2].textContent = '필수 정보 입니다.';
    } else if (signup_Ip[1].value != signup_Ip[2].value) {
        signupIpMsg[2].textContent = '비밀번호가 일치하지 않습니다.';
    } else {
        signupIpMsg[2].style.display = 'none';
    }
}
//이름 정규식
signup_Ip[3].onblur = () => {
    signupIpMsg[3].style.display = 'block';
    if (signup_Ip[3].value.length == 0) {
        signupIpMsg[3].textContent = '필수 정보 입니다.';
    } else if (signup_Ip[3].value != 0 && !/^[가-힣a-zA-Z]+$/.test(signup_Ip[3].value)) {
        signupIpMsg[3].textContent = '한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)';
    } else {
        signupIpMsg[3].style.display = 'none';
    }
}



