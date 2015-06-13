<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>

	<jsp:include page="menu/module/head.jsp" />
	<!-- 설문조사용 css -->
	<link href="/resources/css/survey.css" rel="stylesheet">

 </head>



<body>
		<jsp:include page="menu/nav.jsp" />
		
		<div class="contatiner" style="margin-top: 80px;">
	
    <div class="row">
	<jsp:include page="authentication/step1.jsp" />
    

	
    


</div>
</div>


<!-- JAVA SCRIPT 모듈 -->

<jsp:include page="menu/module/nav_uneffect_js.jsp" />
<!-- 1단계 회원가입 js -->
<script src="/resources/js/signup.js"></script>
<!-- 2단계 설문조사 js -->
<script src="/resources/js/survey.js"></script>

</body>
<script>
$("#step3").hide();
$("#step2").hide();
$("#step1").show();
$("#signup_button").click(function() {
	if(validateCheck_regist()){
	$("#step1").hide();
	$("#step2").show();
	$("#next1").removeClass("active");
	$("#next2").addClass("active");
	}else{
		
	}
});

$("#registemail").keyup(function(){
	var email = $("#registemail");
	var regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	if(regex.test(email) === false) {  

		$("#email_auth").text("유효한 이메일 형식이 아닙니다.");

	} else {  
		$("#email_auth").text("유효한 이메일 형식입니다.");

	}  
});

function validateCheck_regist() {
	var nameForm = $("#registnickname");
	if ((nameForm.val()).length == 0) {
		alert("닉네임을 입력하세요");
		nameForm.focus();
		return false;
	}
	var idForm = $("#registid");
	var regex=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
	if ((idForm.val()).length == 0) {
		alert("이메일를 입력하세요");
		idForm.focus();
		return false;
	}else if(idForm == regex){
		alert("이메일 형식이 맞지 않습니다.");
		return false;
	}
	var passwdForm = $("#registpasswd");
	var repasswdForm = $("#registrepasswd");
	if ((passwdForm.val()).length == 0
			|| (repasswdForm.val()).length == 0) {
		alert("비밀번호를 입력하세요");
		passwdForm.focus();
		return false;
	}
	if (passwdForm.val() != repasswdForm.val()) {
		alert("비밀번호가 일치하지 않습니다.");
		passwdForm.focus();
		return false;
	}
	return true;
}

/*$.ajax({
 		type : "get",
		url : "/email_check",
            dataType : "html",//text,xml, json
            success : function(data) {
        	   alert($(data).text());
        	   if(result=="owner"){
        		   
        		   $('#buttonBreak').show();
        	   }else if(result=="member"){
        		   
        		   $('#buttonExit').show();
        	   }else if(result=="notting"){
        		   $('#buttonEnter').show();
        	   }
           },
           error : function(data){
        	   alert(111);
           }
});*/
$('#registemail').keyup(function() {
	$.post('/users/email_check', {
		email : $('#registemail').val()
	}, function(result) {
		$("#user_email").html(result);
	}, 'html');
});

$('input[name=nickname]').keyup(function() {
	$.post('/users/nickname_check', {
		nickname : $('input[name=nickname]').val()
	}, function(result) {
		 $("#user_login").html(result);
	}, 'html');
});
			
</script>
</html>