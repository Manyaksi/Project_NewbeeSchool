<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>

	<jsp:include page="menu/module/head.jsp" />
	<script type="text/javascript">
	
		$(document).ready(function(){	
			
			$('#user_email, #user_login').focusout(function(){
				$.post('/email_check',
						{
							email : $('#user_email').val(),
							nickname : $('#user_login').val()
						},
						function(data){
							$('#user_email').css('background-color','red');
						})
			});
			
			$('#user_password, #user_password_confirmation').focusout(function(){
				var pw = $(this).val();
				if (pw.length < 6 || pw.length > 16) {
					alert("비밀번호는 6 ~ 16 자리로 입력해주세요.");
					return false;
					}
				var check = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,16}$/;
	
				if (!check.test(pw))     {
				    alert("비밀번호는 문자, 숫자, 특수문자의 조합으로 입력해주세요.");
					return false;
				}
				var pw1 = $('#user_password').val();
				var pw2 = $('#user_password_confirmation').val();
				if((pw1 != null && pw1 != '') && (pw2 != null && pw2 != '') && pw1 != pw2){
					alert('비밀번호가 일치하지 않습니다.');
				}
				return true;
			});
		
			
		});
	
	</script>
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

</body>

</html>