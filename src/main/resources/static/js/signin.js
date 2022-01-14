const signinId = document.querySelector('.signin-id');
const singinPassword = document.querySelector('.singin-password');
const signinBtn = document.querySelector('.signin-btn');

var signinInput = {
	username: '',
	password: ''
}

signinBtn.onclick = () => {
	signinInput.username = signinId.value;
	signinInput.password = singinPassword.value;
	
	$.ajax({
		type: "get",
		url: "/singinForm",
		data: JSON.stringify(signinInput),
		contentType: "application/json; charset=UTF-8",
		dataType: "text",
		success: function(data){
			
		},
		error: function(){
			alert('비동치 오류');
		}
	})
	
}