<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>

<body>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script>
	var naverLogin = new naver.LoginWithNaverId({
		clientId: "LXj0E58atyUZpVf3hQtj", // 본인걸로 수정, 띄어쓰기 금지.
		callbackUrl: "http://localhost:8080/callBack", // 아무거나 설정
		isPopup: false,
		callbackHandle: true
	});
	naverLogin.init();

	window.addEventListener('load', function () {
	naverLogin.getLoginStatus(function (status) {
		
		console.log(status);

	if (status) {
		 console.log(naverLogin.user); 
		var age = naverLogin.user.getAge();
		var birthday = naverLogin.user.getBirthday();
		var email = naverLogin.user.getEmail();
		var gender = naverLogin.user.getGender();
		var id = naverLogin.user.getId();
		var name = naverLogin.user.getName();
		
		

		 $.ajax({
			type: 'post',
			url: '/naverSave',
			data: {'n_age':age, 'n_birthday':birthday, 'n_email':email, 'n_gender':gender, 'n_id':id, 'n_name':name},
			dataType: 'text',
			success: function(result) {
				if(result=='ok') {
					console.log('성공')
					location.replace("http://localhost:8080/") 
				} else if(result=='no') {
					console.log('실패')
					location.replace("http://localhost:8080/signUp1")
				}
			},
			error: function(result) {
				console.log('오류 발생')
			} 
		})

	} else {
		console.log("callback 처리에 실패하였습니다.");
	}
	});
});
</script>
</body>
</html>