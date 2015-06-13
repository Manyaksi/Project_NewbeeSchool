	$(document).ready(function(){	
			
			$('#user_email, #user_login').focusout(function(){
				$.post('/email_check',
						{
							email : $('#user_email').val(),
							nickname : $('#user_login').val()
						},
						function(data){
							$('#user_email');
						})
			});
			
/* 			$('#user_login').focusout(function(){
				var reg = new RegExp(/^[A-Za-z0-9+]*$/);
				if(!reg.test(document.kform.kwy.value)){
					alert('형식이 올바르지 않습니다.');
				}else{
					alert('맞게 입력 하셨습니다.');
				}
			}
			
 //이메일 유효성 검증
			$('#user_email').focusout(function(){
				  var stremail = document.form.email;
				  var stremail2 = document.form.email2;
				  var mail = stremail.value + "@" + stremail2.value;
				  var t = escape(mail);
				  if(t.match(/^(\w+)@(\w+)[.](\w+)$/ig) == null && t.match(/^(\w+)@(\w+)[.](\w+)[.](\w+)$/ig) == null){
				    alert("이메일을 올바르게 입력해 주세요.");
				    document.form.email.focus();
				    return;
				  } else {
				    alert("올바른 이메일입니다.");
				    return;
				  }
				});
 */
 
			//비밀번호, 비밀번호확인 유효성 검증
			$('#user_password, #user_password_confirmation').focusout(function(){
				var pw = $(this).val();
				if (pw.length < 6 || pw.length > 16) {
					document.form.user[password_confirmation].value="비밀번호는 6 ~ 16 자리로 입력해주세요.";
					return false;
					}
				var check = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,16}$/;
	
				if (!check.test(pw))     {
				    document.form.user[password].value="비밀번호는 문자, 숫자, 특수문자의 조합으로 입력해주세요.";
					return false;
				}
				var pw1 = $('#user_password').val();
				var pw2 = $('#user_password_confirmation').val();
				if((pw1 != null && pw1 != '') && (pw2 != null && pw2 != '') && pw1 != pw2){
					document.form.user[password_confirmation].value="비밀번호가 일치하지 않습니다.";
				}
				return true;
			});
		
			
		});
	