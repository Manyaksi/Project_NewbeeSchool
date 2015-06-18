<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>

<jsp:include page="menu/module/head.jsp" />
<link href="/resources/css/board.css" rel="stylesheet">

</head>



<body>
	<jsp:include page="menu/nav.jsp" />
	<jsp:include page="member_edit/member_edit_head.jsp" />
	<section class="member-edit">
		<div class=" container"
			style="padding-top: 30px; padding-bottom: 150px;">
			<div class="row">

				<jsp:include page="member_edit/meber_edit_content.jsp" />

			</div>
		</div>
	</section>

	<!-- 사이트맵 -->
	<jsp:include page="main/module/sitemap_wrap.jsp" />

	<!-- 푸터 -->
	<jsp:include page="menu/footer.jsp" />
	<!-- JAVA SCRIPT 모듈 -->

	<jsp:include page="menu/module/nav_uneffect_js.jsp" />
	<script type="text/javascript" src="/resources/js/board.js"></script>
	<script type="text/javascript" src="/resources/js/ajax.js"></script>
	<script type="text/javascript">
	
	//닉네임 수정
		$("#nickname").click(function() {
		var nickname = $("#nicknametext").val();
		alert(nickname);
		
			$.ajax({
				type : "get",
				url : "/users/edituser",
				data : "type=nickname&value=" + nickname+"&userNo=${user.userNo }",
				dataType : "html",//text,xml, json
				success : function(editResult) {
					$("#nicknamemessage").html(editResult);
					$("#navmessage").html(editResult);
					$("#close1").click();
					
				}
			});

		});
	
		//이메일 수정
		$("#email").click(function() {
		var email = $("#emailtext").val();
		
			$.ajax({
				type : "get",
				url : "/users/edituser",
				data : "type=id&value=" + email+"&userNo=${user.userNo }",
				dataType : "html",//text,xml, json
				success : function(editResult) {
					$("#emailmessage").html(editResult);
					$("#close2").click();
				}
			});

		});
		
		//비밀번호 수정
		$("#passwd").click(function() {
		var passwd = $("#passwdtext").val();
		
			$.ajax({
				type : "get",
				url : "/users/edituser",
				data : "type=passwd&value=" + passwd+"&userNo=${user.userNo }",
				dataType : "html",//text,xml, json
				success : function(editResult) {
					$("#passwdmessage").html(editResult);
					$("#close3").click();
				}
			});

		});
		
		//지역 수정
		$("#location").click(function() {
		var location = $("#locationtext").val();
		
			$.ajax({
				type : "get",
				url : "/users/edituser",
				data : "type=location&value=" + location+"&userNo=${user.userNo }",
				dataType : "html",//text,xml, json
				success : function(editResult) {
					$("#locationmessage").html(editResult);
					$("#close4").click();
				}
			});

		});
		
		//프로그램 수정
		$("#programname").click(function() {
		var programname = $("#programtext").val();
		
			$.ajax({
				type : "get",
				url : "/users/edituser",
				data : "type=programName&value=" + programname+"&userNo=${user.userNo }",
				dataType : "html",//text,xml, json
				success : function(editResult) {
					$("#programmessage").html(editResult);
					$("#close5").click();
				}
			});

		});
	</script>

</body>
</html>