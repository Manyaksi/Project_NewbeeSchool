<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>

	<jsp:include page="menu/module/head.jsp" />
	<script type = "text/javascript">
	
	$(document).ready(function(){
			
			$('.survey').css('display','none');
 			$('a').append('<br/>');
	/* 		$('1').css('display','block'); */
			
			$('a').click(function(){
				var title = $(this).attr('class');
				if(title.match("-")){
					title = title.replace("-","");
					location.href= "/registeration3";
					return false;
				}
				
				$('.survey').css('display','none'); 
				$('1'+title).css('display','block'); 
				
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