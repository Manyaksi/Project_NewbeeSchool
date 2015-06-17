<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>

	<jsp:include page="menu/module/head.jsp" />
	<script type = "text/javascript">
	$(document).ready(function(){
		$("#step2").hide();
		$("#step1").show();
		$("#signup_button").click(function(){
			alert(1);
			$("#step1").hide();
			$("#step2").show();
			$("#next1").removeClass("active");
			$("#next2").addClass("active");
		});
		$(".survey100").click(function(){
			$("#step2").hide();
			$("#step3").show();
			$("#next2").removeClass("active");
			$("#next3").addClass("active");
		});
		
	/* 	$.ajax({
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
			});
		 */
		 $('input[name=nickname]').focusout(function(){
			 	$.post('/users/email_check',{nickname: $('input[name=nickname]').val()},function(data){
					if($.trim($(data).text()) == '시발') alert('시발 맞네');
					else alert($(data).text());
				},'html'); 			 
		 });

		 $('input[name=user_email]').focusout(function(){
			 	$.post('/users/email_check',{email : $('input[name=user_email]').val()},function(data){
					if($.trim($(data).text()) == '시발') alert('시발 맞네');
					else alert($(data).text());
				},'html'); 			 
		 });
		 
	});
	
	$(function(){
			$(".survey").hide();
			/* $('.survey').css('display','none');  */
 			$('a').append('<br/>');
	 		$('#1').show(); 
			
			$('a').click(function(){
				var title = $(this).attr('class');
				if(title.match("-")){
					title = title.replace("-","");
					location.href= "/registeration3";
					return false;
				}
				
				$(".survey").hide();
		 		$('#1').show(); 
				/* $('.survey').css('display','none'); 
				$('1'+title).css('display','block');  */
				
			});
	});
	
	
	</script>
  </head>


<body>
		<jsp:include page="menu/nav.jsp" />
		<jsp:include page="authentication/step2.jsp" />
    

<!-- JAVA SCRIPT 모듈 -->

<jsp:include page="menu/module/nav_uneffect_js.jsp" />

</body>
</html>